import sys, os
import re

with open(sys.argv[1]) as f:
    data_lines = f.read()

data_lines = re.sub("https://xxx", "https://"+sys.argv[3], data_lines)

with open(sys.argv[2], mode="w") as f:
    f.write(data_lines)
