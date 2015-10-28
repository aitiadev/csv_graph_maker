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

