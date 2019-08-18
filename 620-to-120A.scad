od1=22.5/2 ; //baseouter diamter
h1=0.5; //base height
// 120 cross
l120 = 10;
w120 = 2.4;
h120 = 4;
d120= 5.2/2;
// 620 cross
x620=6.75;
y620=1.4;
d620 = 3.7/2;
h620=3;

difference(){
        union() {
            cylinder (h1, od1, od1 , false,$fa=1, $fs=0.5);   
        translate([0,0,h120/2]) {
            cylinder (h120, d120, d120 , true,$fa=1, $fs=0.5);
            cube([w120,l120,h120],center=true);
            cube([l120,w120,h120],center=true);
                }
                }
  union(){
    cylinder (h620,d620,d620, false,$fa=1, $fs=0.5);
    translate ( [-x620/2 , -y620/2 ,0]) cube([x620,y620,h620]);
      }
  }
