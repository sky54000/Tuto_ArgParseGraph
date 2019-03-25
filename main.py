# import
import argparse
import yaml
import json

from argparseGraph.argparseGraph import argparseGraph as agg
from src import Extract, Convert, AddExtension, ExtractWithExtension

def parsarg():
    parser = argparse.ArgumentParser(description="Load-Exctract and add word (example parameters usage)")
    parser.add_argument("-v", dest="verbose", help="Verbose mode", type=bool, default=False)
    parser.add_argument("-f", dest="fileName", help="File name to load.", type=str)
    parser.add_argument("-w", dest="word", help="Word added before each line.", type=str)
    parser.add_argument("-d", dest="dump", help="File name for extract.", type=str)
    parser.add_argument("-e", dest="extension", help="specify an extension for the dump file", type=str)
    args = parser.parse_args()

    return args

def main():

    args = parsarg()
    agG = agg("scenarios/extract_load.yml", args)
    func_tab = [Convert, ExtractWithExtension, Extract, AddExtension]
    print("\033[0;32mresult:")
    func_tab[agG.get_one()](args)

if __name__ == '__main__':
    main()
