/*

 SRC/MAPTILES.C

 Tile Source File.

 Info:
  Form                 : All tiles as one unit.
  Format               : Gameboy 4 color.
  Compression          : None.
  Counter              : None.
  Tile size            : 8 x 8
  Tiles                : 0 to 31

  Palette colors       : Included.
  SGB Palette          : None.
  CGB Palette          : 1 Byte per entry.

  Convert to metatiles : No.

 This file was generated by GBTD v2.2

*/

/* */

	#include "MapTiles.h"

	const int MapTilesPAL[] = 

	{

	MapTilesCGBPal0c0,MapTilesCGBPal0c1,MapTilesCGBPal0c2,MapTilesCGBPal0c3,

	MapTilesCGBPal1c0,MapTilesCGBPal1c1,MapTilesCGBPal1c2,MapTilesCGBPal1c3,

	MapTilesCGBPal2c0,MapTilesCGBPal2c1,MapTilesCGBPal2c2,MapTilesCGBPal2c3,

	MapTilesCGBPal3c0,MapTilesCGBPal3c1,MapTilesCGBPal3c2,MapTilesCGBPal3c3,

	MapTilesCGBPal4c0,MapTilesCGBPal4c1,MapTilesCGBPal4c2,MapTilesCGBPal4c3,

	MapTilesCGBPal5c0,MapTilesCGBPal5c1,MapTilesCGBPal5c2,MapTilesCGBPal5c3,

	MapTilesCGBPal6c0,MapTilesCGBPal6c1,MapTilesCGBPal6c2,MapTilesCGBPal6c3,

	MapTilesCGBPal7c0,MapTilesCGBPal7c1,MapTilesCGBPal7c2,MapTilesCGBPal7c3,

	};/* */
const unsigned  char MapTilesCGB[] =
{
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,
  0x01,0x01,0x01,0x01,0x01,0x00,0x00,0x00
};
/* Start of tile array. */
const unsigned  char MapTiles[] =
{
  0xF8,0x00,0xFC,0x00,0xFE,0x00,0x7F,0x82,
  0x3F,0xC4,0x7F,0x88,0xFF,0x10,0xFF,0x20,
  0xFF,0x10,0xFF,0x08,0xFF,0x05,0xFF,0x02,
  0xFF,0x04,0xFF,0x08,0xFF,0x10,0xFE,0x21,
  0xFC,0x43,0xF8,0x86,0xF0,0x0C,0xE1,0x18,
  0xC3,0x30,0x87,0x60,0x0F,0xC0,0x1F,0x80,
  0x3F,0x00,0x7F,0x00,0xFE,0x00,0xFC,0x00,
  0xF8,0x00,0xF1,0x00,0xE3,0x00,0xF1,0x00,
  0xC7,0x38,0x0F,0x70,0x1F,0x61,0x3F,0x42,
  0xFF,0x01,0xFF,0x00,0xFF,0x00,0xFF,0x00,
  0xFF,0x40,0xFF,0xA0,0xFF,0x10,0xFF,0x08,
  0xFF,0x04,0x9F,0x42,0x0F,0xC1,0x07,0x80,
  0x03,0x30,0x61,0x18,0xF0,0x0C,0xF8,0x06,
  0xFC,0x03,0xFE,0x01,0xFF,0x00,0xFF,0x00,
  0x9F,0x20,0x0F,0x30,0x07,0x38,0x63,0x1C,
  0xF1,0x0E,0xF8,0x07,0xF1,0x0E,0xE3,0x1C,
  0xFC,0x43,0xF8,0x86,0xF0,0x0C,0xE1,0x18,
  0xC3,0x30,0xE1,0x98,0xF0,0x4C,0xF8,0x26,
  0xFC,0x13,0xFE,0x09,0xFF,0x04,0xFF,0x08,
  0xFF,0x10,0xFF,0x20,0xFF,0x40,0xFE,0x81,
  0xFC,0x03,0xF8,0x06,0xF0,0x0C,0x61,0x18,
  0x03,0x30,0x07,0xA0,0x0F,0xC0,0x9F,0x40,
  0xFF,0x00,0xFF,0x00,0xFF,0x01,0xFF,0x02,
  0xFF,0x04,0xFF,0x08,0xFF,0x10,0xFE,0x21,
  0x33,0x04,0x61,0x06,0xC0,0x07,0x8C,0x03,
  0x1E,0x01,0x8C,0x03,0xC0,0x07,0x61,0x06,
  0x33,0x04,0x1F,0x80,0x0F,0xC0,0x87,0x60,
  0xC3,0x30,0x87,0x60,0x0F,0xC0,0x1F,0x80,
  0x3F,0x00,0x7F,0x00,0xFF,0x01,0xFF,0x02,
  0xFF,0x04,0xFF,0x08,0xFF,0x10,0xFE,0x21,
  0xFC,0x43,0xF8,0x86,0xF0,0x0C,0xE1,0x18,
  0xC3,0x30,0x87,0x60,0x0F,0xC0,0x1F,0x80,
  0xFF,0xFF,0x80,0x80,0x80,0x80,0x80,0x80,
  0x8F,0x80,0x8F,0x80,0x8F,0x80,0x8F,0x80,
  0xFF,0xFF,0x01,0x01,0x01,0x03,0x01,0x07,
  0xF1,0x0F,0xF1,0x0F,0xF1,0x0F,0xF1,0x0F,
  0xF1,0x0F,0xF1,0x0F,0xF1,0x0F,0xF1,0x0F,
  0x01,0xFF,0x01,0xFF,0x01,0xFF,0xFF,0xFF,
  0x8F,0x80,0x8F,0x80,0x8F,0x80,0x8F,0x80,
  0x80,0x8F,0x80,0x9F,0x80,0xBF,0xFF,0xFF,
  0xFF,0x00,0xFF,0x00,0xFF,0x00,0xFF,0x00,
  0x00,0xFF,0x00,0xFF,0x00,0xFF,0xFF,0xFF,
  0x8F,0x80,0x8F,0x80,0x8F,0x80,0x8F,0x80,
  0x8F,0x80,0x8F,0x80,0x8F,0x80,0x8F,0x80,
  0xFF,0xFF,0x00,0x00,0x00,0x00,0x00,0x00,
  0xFF,0x00,0xFF,0x00,0xFF,0x00,0xFF,0x00,
  0xF1,0x0F,0xF1,0x0F,0xF1,0x0F,0xF1,0x0F,
  0xF1,0x0F,0xF1,0x0F,0xF1,0x0F,0xF1,0x0F,
  0xFF,0x00,0xFF,0x00,0xFF,0x00,0xFF,0x00,
  0xFF,0x00,0xFF,0x00,0xFF,0x00,0xFF,0x00,
  0x8F,0x80,0x0F,0x00,0x0F,0x00,0x0F,0x00,
  0xFF,0x00,0xFF,0x00,0xFF,0x00,0xFF,0x00,
  0xF1,0x0F,0xF0,0x0E,0xF0,0x0C,0xF0,0x08,
  0xFF,0x00,0xFF,0x00,0xFF,0x00,0xFF,0x00,
  0xFF,0x00,0xFF,0x00,0xFF,0x00,0xFF,0x00,
  0xF0,0x0F,0xF0,0x0F,0xF0,0x0F,0xF1,0x0F,
  0xFF,0x00,0xFF,0x00,0xFF,0x00,0xFF,0x00,
  0x0F,0xF0,0x0F,0xE0,0x0F,0xC0,0x8F,0x80,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
};

/* End of SRC/MAPTILES.C */