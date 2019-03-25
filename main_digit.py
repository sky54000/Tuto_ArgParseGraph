from argparseGraph.argparseGraph import argparseGraph as agg
from src import Extract, Convert, AddExtension, ExtractWithExtension, parsarg

def main():

    args = parsarg()
    agG = agg("scenarios/extract_load_digit.yml", args)
    func_tab = [Convert, ExtractWithExtension, Extract, AddExtension]
    print("\033[0;00mOutput:\033[0;32m")
    func_tab[agG.get_one()](args)

if __name__ == '__main__':
    main()
