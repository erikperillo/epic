#!/usr/bin/env python3

from skimage import io
from matplotlib import pyplot as plt
import sys

OVWRITE = True
DPI = 300

def main():
    #command-line args
    if len(sys.argv) < 2:
        print("usage: {} <input_img_path>".format(sys.argv[0]))
        return

    input_img_path = sys.argv[1]
    if len(sys.argv) > 2:
        output_img_path = sys.argv[2]
    else:
        if not OVWRITE:
            print("error: no output path given and OVWRITE is False")
            return
        output_img_path = input_img_path

    #loading image
    img = io.imread(input_img_path, as_grey=True)

    #saving image
    plt.imshow(img, cmap="plasma")
    plt.axis("off")
    plt.grid(False)
    plt.xticks([])
    plt.yticks([])
    plt.tight_layout()
    plt.savefig(output_img_path, bbox_inches="tight", pad_inches=0, dpi=DPI)

if __name__ == "__main__":
    main()

