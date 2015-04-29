int LDR_1 = A0;     //analog pin to which LDR is connected, here we set it to 0 so it means A0
int LDRValue_1 = 0;      //thatเน€เธ�โ�ฌเน€เธ�๏ฟฝเน�เธ�เธ�เน€เธ�๏ฟฝเน�เธ�เธ�เน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�๏ฟฝs a variable to store LDR values
int LDR_2 = A1;     //analog pin to which LDR is connected, here we set it to 0 so it means A0
int LDRValue_2 = 0;      //thatเน€เธ�โ�ฌเน€เธ�๏ฟฝเน�เธ�เธ�เน€เธ�๏ฟฝเน�เธ�เธ�เน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�๏ฟฝs a variable to store LDR values
int LDR_3 = A2;     //analog pin to which LDR is connected, here we set it to 0 so it means A0
int LDRValue_3 = 0;      //thatเน€เธ�โ�ฌเน€เธ�๏ฟฝเน�เธ�เธ�เน€เธ�๏ฟฝเน�เธ�เธ�เน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�๏ฟฝs a variable to store LDR values
int LDR_4 = A3;     //analog pin to which LDR is connected, here we set it to 0 so it means A0
int LDRValue_4 = 0;      //thatเน€เธ�โ�ฌเน€เธ�๏ฟฝเน�เธ�เธ�เน€เธ�๏ฟฝเน�เธ�เธ�เน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�๏ฟฝs a variable to store LDR values
int LDR_5 = A4;     //analog pin to which LDR is connected, here we set it to 0 so it means A0
int LDRValue_5 = 0;      //thatเน€เธ�โ�ฌเน€เธ�๏ฟฝเน�เธ�เธ�เน€เธ�๏ฟฝเน�เธ�เธ�เน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�๏ฟฝs a variable to store LDR values
int light_sensitivity = 900;    //This is the approx value of light surrounding your LDR
 
void setup()
  {
    Serial.begin(9600);
    //start the serial monitor with 9600 buad
    pinMode(13, OUTPUT);     //we mostly use 13 because there is already a built in yellow LED in arduino which shows output when 13 pin is enabled
  }
 
void loop()
  {
    int keyTime = 100;
    
    LDRValue_1 = analogRead(LDR_1);  
    LDRValue_2 = analogRead(LDR_2);  
    LDRValue_3 = analogRead(LDR_3);  
    LDRValue_4 = analogRead(LDR_4); 
    LDRValue_5 = analogRead(LDR_5);  
   if(LDRValue_1<keyTime&&LDRValue_2<keyTime){
   Serial.println(1);
   }else   if(LDRValue_1<keyTime&&LDRValue_3<keyTime){
   Serial.println(2);
   }else   if(LDRValue_1<keyTime&&LDRValue_4<keyTime){
   Serial.println(3);
   }else   if(LDRValue_1<keyTime&&LDRValue_5<keyTime){
   Serial.println(4);
   }else   if(LDRValue_2<keyTime&&LDRValue_3<keyTime){
   Serial.println(5);
   }else   if(LDRValue_2<keyTime&&LDRValue_4<keyTime){
   Serial.println(6);
   }else   if(LDRValue_2<keyTime&&LDRValue_5<keyTime){
   Serial.println(7);
   }else   if(LDRValue_3<keyTime&&LDRValue_4<keyTime){
   Serial.println(8);
   }else   if(LDRValue_3<keyTime&&LDRValue_5<keyTime){
   Serial.println(9);
   }else   if(LDRValue_4<keyTime&&LDRValue_5<keyTime){
   Serial.println(10);
   }else if(LDRValue_1<keyTime){
    Serial.println(11);
    }else if(LDRValue_2<keyTime){
    Serial.println(12);
    }else if(LDRValue_3<keyTime){
    Serial.println(13);
    }else if(LDRValue_4<keyTime){
    Serial.println(14);
    }else if(LDRValue_5<keyTime){
    Serial.println(15);
    }else{
    Serial.println(0);
    }  
    delay(100); 
    
  }



