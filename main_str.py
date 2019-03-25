from argparseGraph.argparseGraph import argparseGraph as agg
from src import Extract, Convert, AddExtension, ExtractWithExtension, parsarg

def main():

    args = parsarg()
    agG = agg("scenarios/extract_load_str.yml", args)
    func_dict = dict({
            "convert_file": Convert,
            "extract_extension": ExtractWithExtension,
            "extract": Extract,
            "extension": AddExtension})
    print("\033[0;00mOutput:\033[0;32m")
    func_dict[agG.get_one()](args)

if __name__ == '__main__':
    main()
