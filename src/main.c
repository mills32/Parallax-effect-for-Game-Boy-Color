#include <gb/gb.h>

extern const unsigned char MapPLN0[];
extern const unsigned char MapPLN1[];
extern const unsigned char MapTiles[];
extern const unsigned char MapTilesPal[];


void Reset_Parallaxf();
void Reset_Parallax(UINT8 bank){SWITCH_ROM_MBC1(bank);Reset_Parallaxf(bank);}
void Move_Parallaxf();
void Move_Parallax(UINT8 bank){SWITCH_ROM_MBC1(bank);Move_Parallaxf();}

void main(){
	
	set_bkg_palette(0, 8,MapTilesPal);	
	
	wait_vbl_done();
	
	VBK_REG = 0;
	set_bkg_data(0,32,MapTiles);
	set_bkg_tiles(0, 0, 32, 32, MapPLN0); //tiles
	VBK_REG = 1;	   
	set_bkg_tiles(0, 0, 32, 32, MapPLN1); //tiles
	VBK_REG = 0;
	
	// in this demo it is stored at bank 2
	Reset_Parallax(2);
	
	DISPLAY_ON;
	SHOW_BKG;
	
	cpu_fast();
	
	while(1) {

		if (joypad() & J_RIGHT)	SCX_REG++;
		if (joypad() & J_LEFT)	SCX_REG--;
		if (joypad() & J_UP)	SCY_REG--;	
		if (joypad() & J_DOWN)	SCY_REG++;	
		
		Move_Parallax(2);//Use after modify SC regs
		wait_vbl_done();
	}	
}
