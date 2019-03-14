
float r; 
color bgColor;
String [] oldColors;

void setup(){
  size(600, 600); 

  oldColors = loadStrings("bgcolor.csv");

}

void draw(){
  background(bgColor); 
  text("back ground # : " + bgColor, 100, 100); 

}

void mousePressed(){
  bgColor = color(random(0,255), random(0,255), random(0,255));  

}

void save(){
  oldColors = append(oldColors, str(bgColor));
  saveStrings("bgcolor.csv", oldColors);
  exit();
}
