#!/usr/bin/env python3
#
# Given a CSV BOM file with the following column headers:
#    * "Part", or "Identifier" for reference designator (only one reference designator per row!)
#    * "MFR_PN", "MFG_PN", or "Manufacturer part number" for manufacturer part number
#    * "DNP" for "DNP" labels. Any row with "DNP" or "DNI" in the DNP column will be excluded from the final BOM.
#       Note that this column is optional.
#
# Sticking with Eagle's defaults, a semicolon should be the delimiter, and cells should be wrapped with quotation marks.
#
# Sample BOM header: "Parts";"Description";"AVAILABILITY";"DESCRIPTION";"MANUFACTURER";"MFR_PN"
#
# and two pick-and-place files with the following column headers:
#     * "Part" or "Identifier" for reference designator (one reference designator per row)
#     * "X (mm)"
#     * "Y (mm)"
#     * "Rotation"
#
# Identifier,x (mm),y (mm),rotation,value,package
#
# The top layer pick-and-place file shall be supplied first in the command line order.
#
# command-line args are: ./merge <bom_file.csv> <pnp_top.csv> <pnp_bot.csv>


import sys
import csv

# d is a dict
# keys is a list of lists. e.g.
#    [["MANUFACTURER", "MFG", "MFR"],
#     ["PART NUMBER", "PN"]]
#
# Returns good_dict, bad_dict. good_dict contains all of the parts with valid values.
def filter_out_lines_missing_keys(d, keys):
    good_dict = {}
    bad_dict = {}
    for item in d:
        for keylist in keys:
            if (not(any([key in d[item] for key in keylist]))):
                bad_dict.update({item: d[item]})
            else:
                good_dict.update({item: d[item]})
    return (good_dict, bad_dict)

def bom_filter_out_dnp_lines(d, dnp_terms):
    pop_dict = {}
    dnp_dict = {}
    for item in d:
        if ("DNP" in item and any([item["DNP"] == dnp_term for dnp_term in dnp_terms])):
            dnp_dict.update({item: d[item]})
        else:
            pop_dict.update({item: d[item]})
    return (pop_dict,dnp_dict)

def import_bom(filename):
    with open(filename) as csvfile:
        reader = csv.reader(csvfile, delimiter=';')
        rows = [row for row in reader]
        partdict = {row[0]:{header.upper():attribute for (header, attribute) in zip(rows[0][1:],row[1:]) if (len(attribute) > 0)} for row in rows[1:]}
    #manufacturer_pn_strings = [["MFR_PN", "MFG_PN", "MANUFACTURER PART NUMBER"]]
    manufacturer_pn_strings = [["MFR_PN"]]

    good_dict, bad_dict = filter_out_lines_missing_keys(partdict, manufacturer_pn_strings)
    for part in bad_dict:
        print("BOM: part " + part + " filtered out because of missing manufacturer part number")

    pop_dict,dnp_dict = bom_filter_out_dnp_lines(good_dict, ["DNP", "DNI"])
    for part in dnp_dict:
        print("BOM: part " + part + " filtered out because of DNP field")

    return pop_dict

def import_pnp(filename):
    with open(filename) as csvfile:
        reader = csv.reader(csvfile, delimiter=',')
        rows = [row for row in reader]
        partdict = {row[0]:{header.upper().strip():attribute.strip() for (header, attribute) in zip(rows[0][1:],row[1:]) if (len(attribute) > 0)} for row in rows[1:]}
    pnp_strings = [["X (MM)"], ["Y (MM)"], ["ROTATION"]]
    good_dict,bad_dict = filter_out_lines_missing_keys(partdict, pnp_strings)

    for part in bad_dict:
        print("Pick-n-place: part " + part + " filtered out because of missing pick-n-place string")
        print(bad_dict[part])

    return good_dict

def merge(a, b, path=None):
    "merges b into a"
    if path is None: path = []
    for key in b:
        if key in a:
            if isinstance(a[key], dict) and isinstance(b[key], dict):
                merge(a[key], b[key], path + [str(key)])
            elif a[key] == b[key]:
                pass # same leaf value
            else:
                #raise Exception('Conflict at %s' % '.'.join(path + [str(key)]))
                a[key] = a[key]
        else:
            a[key] = b[key]
    return a

if __name__ == "__main__":
    if (len(sys.argv) != 4):
        print("Expected 4 args. Usage: " + sys.argv[0] + " bom_file.csv pick-n-place_top.csv pick-n-place_bottom.csv")
        exit(-1)

    bom_dict = import_bom(sys.argv[1])
    top_dict = import_pnp(sys.argv[2])
    bottom_dict = import_pnp(sys.argv[3])

    # merge pick-n-place dicts
    pnp_dict = {}
    for item in bottom_dict:
        pnp_dict.update({item: bottom_dict[item]})
        pnp_dict[item].update({"SIDE": "Bottom"})

    for item in top_dict:
        if (item in pnp_dict):
            print("Warning: duplicate part " + item + " in top and bottom pick-and-place files. Bottom entry will be overwritten.")
        pnp_dict.update({item: top_dict[item]})
        pnp_dict[item].update({"SIDE": "Top"})

    # check and see if all keys in pick-n-place dict are also in bom dict
    for item in {item for item in bom_dict} - {item for item in pnp_dict}:
        print(item + " is in BOM but not in pick-n-place files")
    for item in ({item for item in pnp_dict} - {item for item in bom_dict}):
        print(item + " is in pick-n-place files but not in BOM")

    # generate final file
    final_dict = merge(bom_dict, pnp_dict)
    keys_to_print = [["MFR_PN"], ["X (MM)"], ["Y (MM)"], ["ROTATION"], ["SIDE"]]
    print('\"IDENTIFIER\";', end='')
    for key in keys_to_print:
        print('\"' + key[0] + '\";', end='')
    print("")

    for part in final_dict:
        print('\"' + part + '\";', end='')
        for key in keys_to_print:
            if key[0] in final_dict[part]:
                print('\"' + final_dict[part][key[0]] + '\";', end='')
            else:
                print('\"\";', end='')
        print("")
