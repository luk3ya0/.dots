import sys
from PIL import Image
import requests


def rgbrev(img: Image) -> Image:
    tp3 = img.load()

    width, height = img.size

    for y in range(height):
        for x in range(width):
            tp3[x, y] = (255 - tp3[x, y][0], 255 -
                         tp3[x, y][1], 255 - tp3[x, y][2])

    return img


def tranformer(img: Image, afunc) -> Image:
    tp1 = img.load()
    width, height = img.size

    for y in range(height):
        for x in range(width):
            if afunc(tp1[x, y]):
                tp1[x, y] = 0

    return img


fileName = sys.argv[1]
scaleFactor = int(sys.argv[2])

im = Image.open(fileName)
width, height = im.size

newW, newH = scaleFactor, height / (width / scaleFactor)

print(newW, round(newH))

im_resized = im.resize((newW, round(newH)))

im_resized.show()
im_resized.save(fileName)
