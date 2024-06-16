#ifndef IMAGE_FUNCTIONS_H
#define IMAGE_FUNCTIONS_H

#include <functional>
#include <cstdint>
#include "util.h"

// --- Helper functions ---

/**
 * Performs an operation on every pixel in an image
 * @param image The image
 * @param width The image's width
 * @param height The image's height
 * @param bpp # of bits per pixel
 * @param func The function used to transform the pixel
 * @return The output image
*/
std::uint8_t* pixel_transform(const std::uint8_t* image, const int& width, const int& height, const int& bpp, const std::function<void(Pixel&)>& func);


// --- Image functions ---

/**
 * Transforms an image into a pixelated version of itself.
 * @param image The image
 * @param width The image's width
 * @param height The image's height
 * @param bpp # of bits per pixel
 * @param divs The number of times the image will be divided on the longest side
 * @return The output image
*/
std::uint8_t* pixel_image(const std::uint8_t* image, const int& width, const int& height, const int& bpp, const int& divs);


/**
 * Averages the colors of an image to make it grayscale.
 * @param image The image
 * @param width The image's width
 * @param height The image's height
 * @param bpp # of bits per pixel
 * @return The output image
*/
std::uint8_t* grayscale_image(const std::uint8_t* image, const int& width, const int& height, const int& bpp);


/**
 * Removes all green and blue from an image
 * @param image The image
 * @param width The image's width
 * @param height The image's height
 * @param bpp # of bits per pixel
 * @return The output image
*/
std::uint8_t* red_image(const std::uint8_t* image, const int& width, const int& height, const int& bpp);


/**
 * Removes all red and blue from an image
 * @param image The image
 * @param width The image's width
 * @param height The image's height
 * @param bpp # of bits per pixel
 * @return The output image
*/
std::uint8_t* green_image(const std::uint8_t* image, const int& width, const int& height, const int& bpp);


/**
 * Removes all red and green from an image
 * @param image The image
 * @param width The image's width
 * @param height The image's height
 * @param bpp # of bits per pixel
 * @return The output image
*/
std::uint8_t* blue_image(const std::uint8_t* image, const int& width, const int& height, const int& bpp);


#endif