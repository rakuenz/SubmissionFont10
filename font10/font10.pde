/* A font E from rectangle matrixes with parameters defined as sets of 
x and y coordinates with varying grain and dot sizes.
LIM KIM
A0072026R / 26/08/2012
a0072026@nus.edu.sg
*/
size(400,400);
background(205);
noStroke();
fill(0);
int[] x = {100,250,150,200,160,330};
int[] y = {100,150,180,230,270,330};
int[] a = {60,80};
int[] b = {100,330};
int Y;
int X;
float grain_size = 3;
float dot_size = grain_size * .3;
smooth();

int i;
for(i=0; i<5; i++){
  for(Y= y[i]; Y < y[i+1]; Y = Y + int(grain_size)){
    for(X=x[0]; X < x[i+1]; X = X + int(grain_size)){
      float d = map(X,x[0],x[i+1],dot_size,dot_size * 11);
      ellipse ( X, Y, d, d);
  }
}
}
save("font10.jpg");
