
Parallax for CGB
----------------

This is a Very fast parallax for game boy color, it uses a metatile of 32x32 pixels (4x4 Tiles).
I was trying to make a 8x8 tile parallax, like in the Toki Tori game, But I simply had no room for all I need. I think they compressed the data or something I don't know how to do.
So I reduced the size and now it works and a lot faster, so this can be used with games.

MAKE YOUR OWN PARALLAX
----------------------

1- You have to generate a seamless metatile of 32x32 pixels, and then create a 64x64 pixels square containing 4 metatiles in a grid. 

2- Generate 8 copies of the 64x64 square, each of them has to be displaced one pixel to the left relative to the previous copy.

3- Paste each 64x64 copy separately on GBTD. In split options use 8x8 top to bottom, left to right.Then paste the next copy, until you fill 512 tiles.

4-Create a map arranged like Parallax_Map_Clean, and some tiles after tile 15, like Map_Tiles.

5- Now you can paste other tiles on top of the background on the map, and that's all.

BUGS
----
You can make the parallax Perfect by copying the data straight to VRAM with the CPU_TRANSFER function, butthis means that you'll have to use the function at the very beginning of the vblank period, if not, you'll see garbage on the screen.
So by Using the DMA_Transfer, we solve it, copying the data from RAM to Vram very fast, But we will becopying data moved the previous frame and there is 1 pixel delay, mainly noticeable when making drastic direction changes.
   
Even Using the DMA I found it is very easy to wrtite to VRAM outside vblank and produce garbage.

