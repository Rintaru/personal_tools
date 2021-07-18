import sys , getopt
from os import listdir
try:
    args= getopt.getopt(sys.argv,"a")
    if args[1][1].startswith("o"):
        print(args[1][1])
    else:
        print("lol")
except getopt.GetoptError:
    print('critical failure')
    pass