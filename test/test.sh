echo "sepia"
cmake-build-debug/Image_Processor --ref test/ref/penguins.jpg --out test/out/sepia.jpg sepia
echo "grayscale"
cmake-build-debug/Image_Processor --ref test/ref/penguins.jpg --out test/out/grayscale.jpg grayscale
echo "box-blur"
cmake-build-debug/Image_Processor --ref test/ref/penguins.jpg --out test/out/box-blur.jpg box-blur --radius=2
echo "pixelate"
cmake-build-debug/Image_Processor --ref test/ref/penguins.jpg --out test/out/pixelate.jpg pixelate
echo "outline"
cmake-build-debug/Image_Processor --ref test/ref/penguins.jpg --out test/out/outline.jpg outline
echo "invert"
cmake-build-debug/Image_Processor --ref test/ref/penguins.jpg --out test/out/invert.jpg invert
echo "gaussian-blur"
cmake-build-debug/Image_Processor --ref test/ref/penguins.jpg --out test/out/gaussian-blur.jpg gaussian-blur --radius=2 --sigma=10
echo "color"
cmake-build-debug/Image_Processor --ref test/ref/penguins.jpg --out test/out/color.jpg color --hex=FF69B4
echo "channels"
cmake-build-debug/Image_Processor --ref test/ref/penguins.jpg --out test/out/channels.jpg enable-channels -b
echo "octopus-dragon"
cmake-build-debug/Image_Processor --ref test/ref/penguins.jpg --out test/out/octopus-dragon.jpg octopus-dragon
echo "contrast"
cmake-build-debug/Image_Processor --ref test/ref/penguins.jpg --out test/out/contrast.jpg contrast --value=128
echo "brightness"
cmake-build-debug/Image_Processor --ref test/ref/penguins.jpg --out test/out/brightness.jpg brightness --value=128
echo "rotate"
cmake-build-debug/Image_Processor --ref test/ref/penguins.jpg --out test/out/rotate.jpg rotate --theta=45
echo "reflect-horizontal"
cmake-build-debug/Image_Processor --ref test/ref/penguins.jpg --out test/out/reflect_horizontal.jpg reflect-horizontal
echo "reflect-vertical"
cmake-build-debug/Image_Processor --ref test/ref/penguins.jpg --out test/out/reflect_vertical.jpg reflect-vertical
echo "dilate"
cmake-build-debug/Image_Processor --ref test/ref/penguins.jpg --out test/out/dilate.jpg dilate --factor=1.5