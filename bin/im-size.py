import sys
from PIL import Image

im = Image.open(sys.argv[1])

print(im.size)
