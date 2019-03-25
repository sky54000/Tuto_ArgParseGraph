import argparse

def Extract(argparseObj):
    print("In Extract function")

def Convert(argparseObj):
    print("In Convert function")

def AddExtension(argparseObj):
    print("In AddExtension function")

def ExtractWithExtension(argparseObj):
    Extract(argparseObj)
    AddExtension(argparseObj)

def parsarg():
    parser = argparse.ArgumentParser(description="Load-Exctract and add word (example parameters usage)")
    parser.add_argument("-v", dest="verbose", help="Verbose mode", type=bool, default=False)
    parser.add_argument("-f", dest="fileName", help="File name to load.", type=str)
    parser.add_argument("-w", dest="word", help="Word added before each line.", type=str)
    parser.add_argument("-d", dest="dump", help="File name for extract.", type=str)
    parser.add_argument("-e", dest="extension", help="specify an extension for the dump file", type=str)
    args = parser.parse_args()

    return args
