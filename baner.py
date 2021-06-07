class bcolors:

    BLUE = '\033[94m'
    GREEN = '\033[92m'
    RED = '\033[31m'
    YELLOW = '\033[93m'
    FAIL = '\033[91m'
    ENDC = '\033[0m'
    BOLD = '\033[1m'
    BGRED = '\033[41m'
    WHITE = '\033[37m'

def logo():
    print(bcolors.RED + bcolors.BOLD)
    print("""
  ______             __     ____ ____ ___ ___
 / ___(_)______ ____/ /__ _|_  /|_  // _ <  /
/ /__/ / __/ _ `/ _  / _ `//_ <_/_ </ // / / 
\___/_/\__/\_,_/\_,_/\_,_/____/____/\___/_/

   Cicada3301 - github.com/Cicadadenis
    """)


logo()
