int numberX = 0;
int PNmbrsDisTextPosX = 160;
int PNmbrsDisTextPosY = 450;
int TextPosX0 = 40;
int TextPosX1 = 40;
int TextPosY0 = 350;
int TextPosY1 = 480;
int count;
int count2;
int aryStorage = 0;
int aryStoragePNmbrsPrint = 0;
int NmCount = 0;
int NmTxt = 0;
int No1 = 1;
int No100 = 100;
int No30 = 30;
int NoNo30 = 30;
int []PNmbrs = new int [50];
int []aryStorageAry = new int [1];
int PrimeNumberInterval = 100;
int aryStorageLog;
float Loop360 = 0;
PrintWriter output;
int thecount = 0;
BufferedReader Reader;

//ArrayList<Integer> AllPrimes = new ArrayList<>();

void setup(){
  colorMode(HSB,100,100,100);
  size(800,800); 
  primePage();
}
  
  
  //if(No1 == 100){
    //No1 = No1 + 100;
  //}
  
//    void StartScreen(){
//      background(Loop360,67,94);
//      Loop360 = Loop360 + 0.2;
//      PFont futuraFont = createFont("Futura",100);
//      textFont(futuraFont);
//      String startScreenText1 = "-";
//      text(startScreenText1, TextPosX0, TextPosY0);
//      
//      PFont futuraFont2 = createFont("-",120);
//      textFont(futuraFont2);
//      String startScreenText2 = "Generator";
//      text(startScreenText2, TextPosX1, TextPosY1);
//        
//      rect(15,260,20,240);
//      strokeWeight(0);
//      stroke(360,0,100);
//      
//    }

void primePage(){
  //int primescounted = 0;
  for(int Nmbrs = No1 ; Nmbrs < No100; Nmbrs++){
    for(int Nmbrsline2 = 2; Nmbrsline2 < Nmbrs; Nmbrsline2++){
      if(Nmbrs % Nmbrsline2 == 0 ){
        count++;
      }
    }
   if(count == 0){
     //AllPrimes.add(Nmbrs);
    PNmbrs[aryStorage] = Nmbrs;
    String [] PNmbrsCon = str(PNmbrs);
    aryStorage = aryStorage + 1;
    println(PNmbrs);
    saveStrings("PrimeNumberStorage.txt", PNmbrsCon);
    }
    
   count = 0;
  }
   
  background(360, 60, 100);
  
  PFont OpenSans = createFont("CenturyGothic-BoldItalic", 14);
  textFont(OpenSans);
  int PrimeNumberCount = aryStorage;
  String PrimeNumberCountDis = "Prime Number Count In This " + PrimeNumberInterval + "th";
  String PrimeNumberCountDis2 = "Interval : " + PrimeNumberCount;
  text(PrimeNumberCountDis2, 560, 36);
  text(PrimeNumberCountDis, 560, 20);
  
  aryStorageLog = aryStorage;
  String aryStorageLogStrFrm = str(aryStorageLog);
  String []aryStorageTotalLog = loadStrings("PrimeNumberCount.txt");
  saveStrings("PrimeNumberCount.txt", append(aryStorageTotalLog, aryStorageLogStrFrm));
  
  PFont OpenSanss = createFont("PTSans-Regular",180);
  textFont(OpenSanss);
  int PrimeNumberDisPrimeNumberCount = PrimeNumberCount - 1;
  int PrimeNumber = PNmbrs[PrimeNumberDisPrimeNumberCount];
  String PrimeNumberDis = "" + PrimeNumber;
  text(PrimeNumberDis, PNmbrsDisTextPosX, PNmbrsDisTextPosY);
  
  PFont Fontt = createFont("PTSans-Regular",14);
  textFont(Fontt);
}

void draw(){
  int time = millis();
  if(key != 'c'){
    time = 0;
  }
  PFont Fontt = createFont("PTSans-Regular",14);
  textFont(Fontt);
  String TimeDis = "Time Elapsed : " + time/1000;
  text(TimeDis, 10, 20);
  if(key == 'c'){
    PNmbrs = expand(PNmbrs, 51);
    for(int reset = 50; reset > -1; reset--){
      PNmbrs[reset] = 0;
    }
    PNmbrs = expand(PNmbrs, 50);
    aryStorage = 0;
    println(PNmbrs);
    text(TimeDis, 10, 20);
    key  = 's';
  }
  if(key == 's'){
    if(aryStorage == 0){
      PNmbrs = expand(PNmbrs, 50);
      No1 = No1 + PrimeNumberInterval;
      No100 = No100 + PrimeNumberInterval;
      primePage();
      println(PNmbrs);
    }
    text(TimeDis, 10, 20);
    key = 'c';
  }
  }
