import sys , getopt
from os import listdir
try:
    args= getopt.getopt(sys.argv,"a")
    if args[1][2].startswith("g"):
        print("git_commands")
    else:
        print("lol")
        print(args[1][0], args[1][1], args[1][2])
except getopt.GetoptError:
    print('critical failure')
    pass