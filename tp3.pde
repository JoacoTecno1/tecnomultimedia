/*
Enlace del video explicativo subido a YouTube: https://youtu.be/qFnBgv9Ggjg
TP#3 - Ilusión Óptica Interactiva
Asignatura: Tecnología Multimedial I
Alumno: Strupp Joaquín Alfredo
Legajo: 88276/5
Email: joaquinalfstrupp@gmail.com

Nombre del trabajo: "Parpadeo de colores y formas"
*/

int cantidad = 15;
int cantidadCirc=10;
float tam;
int lugar;
int dimen;

void setup(){
size(600,600);
ellipseMode(CENTER);
 surface.setResizable(true);
}

void draw(){
 background(random(0,255));
 lugar= width/cantidad;
dimen=width/cantidadCirc;

 for(int x=0; x<cantidad; x++){
 for(int y=0; y<cantidad; y++){
 float distancia = dist(mouseX, mouseY, x*lugar+lugar/2, y*lugar+lugar/2);
 tam= map(distancia, 0, dist(0,0,width, height), 20 , lugar*2 ); //distancia mayor de lo que sería la hipotenusa, entre el angulo superior izquierdo y el inferior derecho, el punto que equibale al ancho de la ventana y a la altura.
 float tono= map(distancia, 0, dist(0,0,width, height), 400 , 50 );
 if((x+y)%2==0){
 fill(0,0,255, tono);
 }else{
 fill(255);
 }
 ellipse(x*lugar+lugar/2, y*lugar+lugar/2, tam, tam);//el tamaño está como desplazamiento
 fill(255);
 ellipse(mouseX, mouseY, 50,50);
 }}

 if(keyPressed){
 if (key == 'j' || key == 'J'){
 for(int x=0; x<cantidad; x++){
 for(int y=0; y<cantidad; y++){
 float distancia = dist(mouseX, mouseY, x*lugar+lugar/2, y*lugar+lugar/2);
 tam= map(distancia, 0, dist(0,0,width, height), 20 , lugar*2 ); 
 float tono= map(distancia, 0, dist(0,0,width, height), 400 , 50 );
 if((x+y)%2==0){
 fill(255,255,0,tono);
 }else{
 fill(255);            
 }
 ellipse(x*lugar+lugar/2, y*lugar+lugar/2, tam, tam);
 
 fill(255);
 ellipse(mouseX, mouseY, 50, 50);
 }}}
    
 if(keyPressed){      
 if (key == 'a' || key == 'A'){     
 for(int x=0; x<cantidad; x++){
 for(int y=0; y<cantidad; y++){
 float distancia = dist(mouseX, mouseY, x*lugar+lugar/2, y*lugar+lugar/2);
 tam= map(distancia, 0, dist(0,0,width, height), 20 , lugar*2 ); 
 float tono= map(distancia, 0, dist(0,0,width, height), 400 , 50 );
 if((x+y)%2==0){
 fill(255,0,0,tono);
 }else{
 fill(255);            
 }
 ellipse(x*lugar+lugar/2, y*lugar+lugar/2, tam, tam);
 
 fill(255);
 ellipse(mouseX, mouseY, 50,50);
 }}}}}
  
 if(keyPressed){      
 if (key == 's' || key == 'S'){ 
 for(int x=0; x<cantidad; x++){
 for(int y=0; y<cantidad; y++){
 float distancia = dist(mouseX, mouseY, x*lugar+lugar/2, y*lugar+lugar/2);
 tam= map(distancia, 0, dist(0,0,width, height), 20 , lugar*2 ); 
 float tono= map(distancia, 0, dist(0,0,width, height), 350 , 50 );
 if((x+y)%2==0){
 fill(random(0),255,0,tono);
 }else{
 fill(random(255),255,0,tono);            
 }
 rectMode(CENTER);
 rect(x*lugar+lugar/2, y*lugar+lugar/2, tam, tam);
 
 fill(255,255,0);
 rect(mouseX, mouseY, 50,50);
 }}}
 
 if(keyPressed){      
 if (key == 't' || key == 'T'){ 
 background(0);
 for (int x=0; x<cantidadCirc; x++) {
 for (int y=0; y<cantidadCirc; y++) {
 rectMode(CENTER);
 rect(x*dimen+dimen/2, y*dimen+dimen/2, dimen, dimen);
 int cantidadcirculos = 15;
 for (int c=0; c<cantidadcirculos; c++) {
 float ancho = map(c, 0, cantidadcirculos-1, dimen, 2);
 float posx = map(c, 0, cantidadcirculos-1, x*dimen+dimen/2, constrain(mouseX, x*dimen+dimen/8, (x+1)*dimen-dimen/8  ) );
 float posy = map(c, 0, cantidadcirculos-1, y*dimen+dimen/2, constrain(mouseY, y*dimen+dimen/8, (y+1)*dimen-dimen/8 ) );

 fill(random(255),255, 0);
 rect(posx, posy, ancho, ancho);
 }}}}}}}
