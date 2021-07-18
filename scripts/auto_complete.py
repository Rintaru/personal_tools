from posix import ST_WRITE
import sys , getopt
from os import listdir
try:
    args= getopt.getopt(sys.argv,"a")
    ##Test
    # if args[1][2].startswith("g"):
    #     print("git_commands")
    # else:
    #     print("lol")
    #     print(args[1][0], args[1][1], args[1][2])
except getopt.GetoptError:
    print('critical failure')
    pass
#grab a list of files in the text files folder
list_of_dir=listdir("/home/sekiro/__common_procedures/text_files")

completion_args = list()

#loop through the list of directories
for i in list_of_dir:
    #check if user input has the same starting char as a file name in text_files directory
    if args[1][2].startswith(i[0][0]):
        #add file name to the list of auto complete words
        completion_args.append(i)
        
#check if no matches were found
if  not completion_args:
    # add all file names to list of auto complete words
    completion_args=list_of_dir

# print(" ".join(completion_args))

