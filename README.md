# Image Processing

This program applies concepts from linear algebra to transform an image. It receives an image as input and produces an output in the form of that image with a certain effect applied to it. Most effects utilize convolutions. In this process, an input vector (a series of values representing the color of each pixel in the input image) is multiplied by a kernel (or filter), which is a small matrix with certain element values, in sequence.

## Functions

Here is a list of all usable transformation functions along with their optional parameters:

- `outline`: Highlights large differences in pixel values
- `sharpen`: Emphasizes differences in adjacent pixel values
- `contrast`: Controls the amount of color differentiation
  - `--value`: The contrast value (number between -255 and 255)
- `brightness`: Makes the image appear brighter or darker
  - `--value`: The brightness factor (number between -255 and 255)
- `box-blur`: Averages each pixel's value with the value of its neighboring pixels
  - `--radius`: $2\cdot\text{radius} + 1 =$ width and height of the kernel
- `gaussian-blur`: Blurs the image by a Gaussian function
  - `--radius`: $2\cdot\text{radius} + 1 =$ width and height of the kernel
  - `--sigma`: The standard deviation of the Gaussian distribution
- `grayscale`: Averages the RGB values of each pixel in an image to make it grayscale.
- `invert`: Inverts the colors of the image
- `sepia`: Adds a warm brown tone to the image
- `enable-channels`: Enables and disables particular channels in an image
  - `--red`/`r`: Whether the red channel is enabled
  - `--green`/`g`: Whether the green channel is enabled
  - `--blue`/`b`: Whether the blue channel is enabled
- `color`: Replaces all existing color with the corresponding shade of a new color
  - `--hex`: The desired color (as a hexidecimal value)
- `octopus-dragon`: Shifts the colors to mix of blue and orange tones
- `rotate`: Rotates the image
  - `--angle`: The angle of rotation (in degrees, between 0 and 360)
- `reflect-horizontal`: Reflects the image across the $y$ axis
- `reflect-vertical`: Reflects the image across the $x$ axis
- `dilate`: Scales the image
  - `--factor`: The factor by which to scale the image (decimal number)
- `pixelate`: Transforms an image into a pixelated version of itself
  - `--divs`: The number of times the image will be divided on the longest side / the number of pixels on its longest side
- `ascii`: Transforms an image into ASCII art[^1]
  - `cols`: The number of characters along the width
  - `ratio`: The width/height ratio to stretch the image by (decimal number)

[^1]: This function will output the file in plaintext format rather than an image. In addition, the output will be printed to the console.

## Setup

To be able to run the program, the user must perform the following steps:

1. Ensure you have CMake and a C++ compiler installed on your system.
   - Ubuntu/Debian: `sudo apt install cmake build-essential`
   - Fedora/RHEL: `sudo dnf install cmake gcc-c++`
   - Arch Linux: `sudo pacman -S cmake gcc`
2. Configure the project and create a separate build folder:
   ```
   cmake -DCMAKE_BUILD_TYPE=Release -S . -B build
   ```
3. Compile the project
   ```
   cmake --build build
   ```

## Usage

To run the program, execute it with parameters in the following format:

```
./build/Image_Processor --ref=path/to/image.jpg --out=path/to/output.jpg function --optional-parameters
```

For example:

```
./build/Image_Processor --ref=test/ref/cloud.jpg --out=test/out/output.jpg grayscale
./build/Image_Processor --ref=~/Pictures/Camera/My_Cat.png --out=~/Desktop/cat_red.png enable-channels -r
./build/Image_Processor --ref=./test/ref/penguins.jpg --out=ascii.txt ascii --cols=184 --ratio=2.8
```

## Demo

Here is a video demonstration of the program in action:

[![Watch the video](https://img.youtube.com/vi/v2Mr4hNn4fQ/0.jpg)](https://www.youtube.com/watch?v=v2Mr4hNn4fQ)
