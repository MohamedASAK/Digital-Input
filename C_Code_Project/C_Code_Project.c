void main() { 
  TRISB.B0=0; 
  TRISD.B0=1;
  while(1){
    if(PORTD.B0==1){
     PORTB.B0 = 1;
    }
    else{
     PORTB.B0 = 0;
    }
  }
}