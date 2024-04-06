
_main:

;C_Code_Project.c,1 :: 		void main() {
;C_Code_Project.c,2 :: 		TRISB.B0=0;
	BCF         TRISB+0, 0 
;C_Code_Project.c,3 :: 		TRISD.B0=1;
	BSF         TRISD+0, 0 
;C_Code_Project.c,4 :: 		while(1){
L_main0:
;C_Code_Project.c,5 :: 		if(PORTD.B0==1){
	BTFSS       PORTD+0, 0 
	GOTO        L_main2
;C_Code_Project.c,6 :: 		PORTB.B0 = 1;
	BSF         PORTB+0, 0 
;C_Code_Project.c,7 :: 		}
	GOTO        L_main3
L_main2:
;C_Code_Project.c,9 :: 		PORTB.B0 = 0;
	BCF         PORTB+0, 0 
;C_Code_Project.c,10 :: 		}
L_main3:
;C_Code_Project.c,11 :: 		}
	GOTO        L_main0
;C_Code_Project.c,12 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
