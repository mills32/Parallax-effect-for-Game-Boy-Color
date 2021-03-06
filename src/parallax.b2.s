;-----------------------------------------
; SET BKG DATA for a lot of fake effects
; 
;-----------------------------------------

	.globl	_DMA_TRANSFER
    .globl  _CPU_TRANSFER
	
	.STAT	= 0x41
    .HDMA1 = 0x51    ; DMA source high byte
    .HDMA2 = 0x52    ; DMA source low byte
    .HDMA3 = 0x53    ; DMA destination high byte
    .HDMA4 = 0x54    ; DMA destination low byte
    .HDMA5 = 0x55    ; DMA length/mode/start

	
.area	_Rtiles (ABS)
		.org	0xD000
		.ds		1024

.area	_CODE_2

_DMA_TRANSFER:

	PUSH	BC
	;PUSH	DE
	LDA		HL,7(SP)		; 
	
	LD		D,(HL)			; DE = data destination address
	DEC		HL
	LD		E,(HL)
	
	LD		A,D
	LDH		(.HDMA3),A      ; Load upper byte into destination register
	LD		A,E
	LDH		(.HDMA4),A      ; Load lower byte into destination register

	DEC		HL
	LD		B,(HL)			; BC = data source address
	DEC		HL
	LD		C,(HL)
	
	LD		A,B	
    LDH		(.HDMA1),A		; Load upper byte into source register
	LD		A,C
	LDH		(.HDMA2),A    	; Load lower byte into source register
    
	LD		A,#15			; Number of tiles
	LDH		(.HDMA5),A      ; Start transfer
	
	;POP		DE
	POP		BC
    
	RET 


_CPU_TRANSFER:
    
	PUSH	BC
	;PUSH	DE
	LDA		HL,7(SP)		
	LD		D,(HL)			; DE = data destination address
	DEC		HL
	LD		E,(HL)
	DEC		HL
	LD		B,(HL)			
	DEC		HL
	LD		C,(HL)
	LD		H,B				; HL = data source address
	LD		L,C	
	
	_COPY_DATA:
    LD		A,(HLI)     ; 2 Load source value into A increment pointer
    LD		(DE),A      ; 2 Store at destination
    INC		E          	; DE=DE+1
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          	
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E        	
    LD		A,(HLI)     
    LD		(DE),A    
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          	
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E       
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E     
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E     	
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          	
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E        	
    LD		A,(HLI)     
    LD		(DE),A    
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          	
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E       
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E     
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E     		
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E     			
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          	
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E        	
    LD		A,(HLI)     
    LD		(DE),A    
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          	
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E       	
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E     
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E     			
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E     			
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          	
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E        	
    LD		A,(HLI)     
    LD		(DE),A    
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          	
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E       	
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E     
    LD		A,(HLI)    
    LD		(DE),A      
    INC		DE     		
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E     			
	
	LD		B,#0
	LD		C,#64
	ADD		HL,BC		;Jump to next column
	
;##################################	
	
    LD		A,(HLI)     
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          	
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E        	
    LD		A,(HLI)     
    LD		(DE),A    
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          	
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E       
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E     
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E     	
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          	
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E        	
    LD		A,(HLI)     
    LD		(DE),A    
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          	
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E       
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E     
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E     		
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E     			
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          	
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E        	
    LD		A,(HLI)     
    LD		(DE),A    
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          	
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E       	
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E     
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E     			
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E     			
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          	
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E        	
    LD		A,(HLI)     
    LD		(DE),A    
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          	
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E       	
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E     
    LD		A,(HLI)    
    LD		(DE),A      
    INC		DE     		
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E     			
	
	LD		B,#0
	LD		C,#64
	ADD		HL,BC		;Jump to next column
	
;##################################	
	
    LD		A,(HLI)     
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          	
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E        	
    LD		A,(HLI)     
    LD		(DE),A    
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          	
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E       
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E     
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E     	
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          	
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E        	
    LD		A,(HLI)     
    LD		(DE),A    
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          	
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E       
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E     
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E     		
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E     			
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          	
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E        	
    LD		A,(HLI)     
    LD		(DE),A    
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          	
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E       	
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E     
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E     			
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E     			
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          	
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E        	
    LD		A,(HLI)     
    LD		(DE),A    
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          	
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E       	
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E     
    LD		A,(HLI)    
    LD		(DE),A      
    INC		DE     		
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E     			
	
	LD		B,#0
	LD		C,#64
	ADD		HL,BC		;Jump to next column
	
;##################################	

    LD		A,(HLI)     
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          	
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E        	
    LD		A,(HLI)     
    LD		(DE),A    
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          	
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E       
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E     
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E     	
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          	
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E        	
    LD		A,(HLI)     
    LD		(DE),A    
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          	
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E       
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E     
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E     		
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E     			
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          	
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E        	
    LD		A,(HLI)     
    LD		(DE),A    
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          	
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E       	
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E     
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E     			
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E     			
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          	
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E        	
    LD		A,(HLI)     
    LD		(DE),A    
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          	
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E          
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E      
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E       	
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E     
    LD		A,(HLI)    
    LD		(DE),A      
    INC		DE     		
    LD		A,(HLI)    
    LD		(DE),A      
    INC		E     			
	
	LD		B,#0
	LD		C,#64
	ADD		HL,BC		;Jump to next column
	
;##################################	
	
	;POP		DE
	POP		BC
	RET
	
