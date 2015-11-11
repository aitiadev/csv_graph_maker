// 列数
int MAX_CUE = 2;

// 行データ格納文字列
String[] datalines;

// データ配列（※0行0列からスタート）
float[][] data;

int cnt, datacnt;
float val, lastval;


void setup() {
  size(800, 400);
  //background(255);
  
  
  // ファイル読み込み
  datalines = loadStrings("catched.csv");
  
  data = new float[datalines.length][MAX_CUE];

  initGraph();

  lastval = 0;
}


void draw(){
  
  if(datacnt == datalines.length) {
    initGraph();
    datacnt = 0;
  }
  
  if(datalines != null) {
    // 空白行でないかを確認
    if(datalines[datacnt].length() != 0) {
      // 一行読み取ってカンマ区切りで格納
      String[] values = datalines[datacnt].split("," , -1);
      // 列の数だけ読み取り
      for(int j = 0; j < MAX_CUE; j ++) {
        if(values[j] != null && values[j].length() != 0) {
          data[datacnt][j] = float(values[j]);
            // コンソール表示用
            //print(data[datacnt][j] + "\t");
            val = data[datacnt][0];
        }
      }
      // コンソール表示用
      //print("\n");
    }
}

  fill(80);
  stroke(80);
  strokeWeight(2);
  ellipse(cnt, -val*2+250, 1, 1);
  line(cnt-1, -lastval*2+250, cnt, -val*2+250);
  
  if(val >= 30) text("HIT!", cnt-10, -val*2+180);
  
  lastval = val;
  
  if(cnt > width){
    initGraph();
  }
  cnt++;
  datacnt++;
}



void initGraph(){
  background(255);
  noStroke();
  cnt=0;
}
// 列数
int MAX_CUE = 2;

// 行データ格納文字列
String[] datalines;

// データ配列（※0行0列からスタート）
float[][] data;

int cnt, datacnt;
float val, lastval;
float time;


void setup() {
  size(800, 400);
  
  // ファイル読み込み
  datalines = loadStrings("11-11_log/vib_1447210345458.csv");
  
  data = new float[datalines.length][MAX_CUE];

  initGraph();

  lastval = 0;
  
}


void draw(){

  
  if(datacnt == datalines.length) {
    initGraph();
    datacnt = 0;
  }
  
  if(datalines != null) {
    // 空白行でないかを確認
    if(datalines[datacnt].length() != 0) {
      // 一行読み取ってカンマ区切りで格納
      String[] values = datalines[datacnt].split("," , -1);
      // 列の数だけ読み取り
      for(int j = 0; j < MAX_CUE; j ++) {
        if(values[j] != null && values[j].length() != 0) {
          data[datacnt][j] = float(values[j]);
            // コンソール表示用
            //print(data[datacnt][j] + "\t");
            val = data[datacnt][0];
            time = data[datacnt][1];
        }
      }
      // コンソール表示用
      //print("\n");
    }
}

  fill(80);
  stroke(80);
  strokeWeight(2);
//  ellipse(cnt, -val*2+250, 1, 1);//旧デバイス用
//  line(cnt-1, -lastval*2+250, cnt, -val*2+250); //旧デバイス用
  ellipse(cnt, -val/5+250, 1, 1);//新デバイス用}
  line(cnt-1, -lastval/5+250, cnt, -val/5+250);//新デバイス用
  
  lastval = val;
  
  if(cnt > width){
    initGraph();
  }
  cnt++;
  datacnt++;
  
  textSize(20);
  fill(255);
  noStroke();
  rect(680, 360, 200, 100);
  time = int(time/1000);
  fill(80);
  text(time + "sec", 700, 380);
  delay(100);
}



void initGraph(){
  background(255);
  noStroke();
  cnt=0;
}

