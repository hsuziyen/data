int ledPin = 13; // 要輸出的LED PIN腳
int inPin = 10; // 要輸入的按鈕 PIN腳
int val = 0; // 設定一個狀態變數
int speakerPin = 9;
//int length = 15; // the number of notes
//char notes[] = "ccggaagffeeddc "; // a space represents a rest
//int beats[] = { 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 2, 4 };
char notes[] = "cdeccdecefgefggagfecgagfecc5cc5c"; // a space represents a rest
int length = sizeof(notes); // the number of notes
//int beats[] = { 1, 1, 1, 1, 1, 1, 1, 1, 1,1,1,2, 1,1,2,1,};
int beats[] = { 2, 2, 2, 2, 2, 2, 2, 2,2,2,4, 2,2,4,1,1,1,1,2,2,1,1,1,1,2,2,2,2,4,2,2,4};
//int tempo = 300;
int tempo = 150;

void setup() 
{
  pinMode(ledPin, OUTPUT); // 設定LEDPIN腳為輸出模式
  pinMode(speakerPin, OUTPUT);
  pinMode(inPin, INPUT); // 設定輸入PIN腳為輸入模式
  Serial.begin(9600); // 設定序列埠的速度為9600bps
}
void loop()
{
  val = digitalRead(inPin); // 取得PIN 10 的值
  Serial.println(val); // 印出所抓到的數值
  delay(100); // 延遲顯示時間 = 0.1秒
  if (val == LOW) // 如果按鈕未被按下
  {
    digitalWrite(ledPin, LOW); // 就把LEDPIN輸出訊號為LOW
  }
  else
  {
    digitalWrite(ledPin, HIGH); // 反之讓LED亮著
    for (int i = 0; i < length; i++) 
    {
      if (notes[i] == ' ')
      {
        delay(beats[i] * tempo); // rest
      }
      else
      {
        playNote(notes[i], beats[i] * tempo);
      }
      // pause between notes
      delay(tempo / 2); 
    }
  }
}
void playNote(char note, int duration) 
{
  char names[] = { '5','6','7','c', 'd', 'e', 'f', 'g', 'a', 'b', 'C' };
  int tones[] = { 392,440,494,523, 587, 659, 698, 784, 880, 988, 1047 };
  // play the tone corresponding to the note name
  for (int i = 0; i < sizeof(tones); i++)
  {
    if (names[i] == note) 
    {
      tone(speakerPin, tones[i], duration);
      delay(duration);      
    }
  }    
}

