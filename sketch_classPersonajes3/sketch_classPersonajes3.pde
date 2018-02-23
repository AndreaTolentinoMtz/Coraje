  PFont letra;
  int seleccion=0;
  int pantalla=0;
  //int jugador1=0;
  //int jugador2=0;
  int turno=0;
  
class Personajes {
  String nombre;
  int ataque1;
  int ataque2;
  int ataque3;
  int ataque4;
  int vida;
  int data;


  Personajes (String nombre_, int ataque1_, int ataque2_, int ataque3_, int ataque4_, int vida_, int data_){
    nombre = nombre_;
    ataque1 = ataque1_;
    ataque2 = ataque2_;
    ataque3 = ataque3_;
    ataque4 = ataque4_;
    vida = vida_;
    data= data_; 
  }
  
  void display()
  {
    if (data==1){
      coraje();
    }
    
    if (data==2){
      katz();
    }
    if (data==3){
      shirley();
    }
    if (data==4){
      rect(200,400,100,100);
    }
    if (data==5){
      rect(400,400,100,100);
    }
    
  }
}

Personajes Courage;
Personajes Katz;
Personajes ShirleyTheMedium;
Personajes LeQuack;
Personajes CircusClown;

Personajes jugador1;
Personajes jugador2;


void setup(){

  size(1000,650);
  background(255);
  Courage = new Personajes ("Courage",5,10,15,20,100,1);
  Katz = new Personajes ("Katz",8,12,20,10,100,2);
  ShirleyTheMedium = new Personajes ("Shirley The Medium",18,20,0,12,100,3);
  LeQuack = new Personajes ("LeQuack",12,10,20,8,100,4);
  CircusClown = new Personajes ("Circus Clown",6,40,4,0,100,5);
}

void draw(){
   /* letra = createFont("BrushScriptMT",20);
    fill(0);
    text("COURAGE'S NIGHT TERRORS",200,200);
*/
  switch(pantalla){
    case 0: //Título
    background(0);
    letra = createFont("BrushScriptMT",20);
    fill(255);
    text("COURAGE'S NIGHT TERRORS",200,200); 
      if(keyPressed){
        if(key == ENTER){
          pantalla=1;
        }
      }
    break;
    
    
    case 1: //Historia
    background(255);
    if(keyPressed){
      if(key == 'e'){
        pantalla=2;
      }
    }
    break;
       
    case 2: //Instrucciones jugador 1
    
    background(0);
    
    Courage.display();
    Katz.display();
    ShirleyTheMedium.display();
    LeQuack.display();
    CircusClown.display();
    
 
    if (keyPressed){
      if (key == 'C'||key== 'c'){
        jugador1=Courage;
        seleccion++;
        pantalla=3;
      }
      if (key == 'K'||key== 'k'){
        jugador1=Katz;
        seleccion++;
        pantalla=3;
      }
      if (key == 'T'||key== 't'){
        jugador1=ShirleyTheMedium;
        seleccion++;
        pantalla=3;
      }
      if (key == 'G'||key== 'g'){
        jugador1=LeQuack;
        seleccion++;
        pantalla=3;
      }
      if (key == 'N'||key== 'n'){
        jugador1=CircusClown;
        seleccion++;
        pantalla=3;
      }
    }
    break;
   
    case 3: //Instrucciones jugador 2
    
    background(#551227);
    
    Courage.display();
    Katz.display();
    ShirleyTheMedium.display();
    LeQuack.display();
    CircusClown.display();
    
    if (keyPressed){
        if (key == 'C'||key== 'c'){
          if (seleccion==1){
        pantalla=3;
          }
      } 
      else{
        jugador2=Courage;
        pantalla=4;
      } 
      
      if (key == 'K'||key== 'k'){
          if (seleccion==1){
        pantalla=3;
          }
      } 
      else{
        jugador2=Katz;
        pantalla=4;
      } 
      if (key == 'T'||key== 't'){
          if (seleccion==1){
        pantalla=3;
          }
      } 
      else{
        jugador2=ShirleyTheMedium;
        pantalla=4;
      } 
      if (key == 'G'||key== 'g'){
          if (seleccion==1){
        pantalla=3;
          }
      } 
      else{
        jugador2=LeQuack;
        pantalla=4;
      }
      if (key == 'N'||key== 'n'){
          if (seleccion==1){
        pantalla=3;
          }
      } 
      else{
        jugador2=CircusClown;
        pantalla=4;
      }     
   }
    break;  
    
    
    case 4: // barra de vida
    background(#139D8C);
    
if(turno==0){
    if (keyPressed){
      if (key == 'Q' || key == 'q'){
        //ataque1;
          jugador2.vida-=jugador1.ataque1;
          turno=1;
      }
      
      if (key == 'W' || key == 'w'){
        //ataque2;
          jugador2.vida-=jugador1.ataque2;
          turno=1;
      }
      
      if (key == 'A' || key == 'a'){
        //ataque3;
          jugador2.vida-=jugador1.ataque3;
          turno=1;
      }
      
      if (key == 'S' || key == 's'){
        //ataque4;
          jugador2.vida-=jugador1.ataque4;
          turno=1;
      }
    }     
    
    if(turno==1){
      if(keyPressed){
      if (key == 'O' || key == 'o'){
        //ataque1;
          jugador1.vida-=jugador2.ataque1;
          turno=0;
      }
      
      if (key == 'P' || key == 'p'){
        //ataque2;
          jugador1.vida-=jugador2.ataque2;
          turno=0;
      }
      
      if (key == 'L' || key == 'l'){
       // ataque3;
          jugador1.vida-=jugador2.ataque3;
          turno=0;
      }
      
      if (key == 'Ñ' || key == 'ñ'){
        //ataque4;
          jugador1.vida-=jugador2.ataque4;
          turno=0;
      }

    }
    }
}
    if (jugador1.vida >=0 && jugador2.vida<=0){ 
      pantalla=5;
    }
    if (jugador2.vida>=0 & jugador1.vida<=0){
      pantalla=6;
    }
    break;
    
    
    case 5: 
    if(keyPressed){
      if (key==ENTER){
      pantalla=2;
      
      }
    }
    break;
    
    case 6: if(keyPressed){
      if (key==ENTER){
      pantalla=2; 
      }
    }
    break; 
  }
}