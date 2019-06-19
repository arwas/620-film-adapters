od1=23/2 ; //baseouter diamter
h1=11.5 ; //base height
od2 = 9/2 ; //shaft diameter
h2= 15; //shaft height
dr=0.1;
x1 = 10 ;
y1 = 2.5 ;
z1= 6.5;
h3 = 6;
od3 = 12/2;
x2=6.75;
y2=2;

pind=3.9/2;
chamfer=0.5;
difference(){
difference()
{
   union(){ 
    difference()
       {
        union(){
           cylinder (chamfer,  od1-chamfer , od1 , false,$fa=1, $fs=0.5);   
            translate([0,0,chamfer]) cylinder (h1-2*chamfer,  od1 , od1 , false,$fa=1, $fs=0.5);
        translate([0,0,h1-chamfer]) cylinder (chamfer,  od1 , od1-chamfer , false,$fa=1, $fs=0.5);
        }
       translate([0,0,h1-h3]) cylinder (h3,  od3 , od3 , false,$fa=1, $fs=0.5);
        }
       
        cylinder (h2,  od2 , od2 , false,$fa=1, $fs=0.5);
   }
   
    translate ( [-x1/2 , -y1/2 ,h2-z1])  cube([x1,y1,z1]);

}
union(){
cylinder (8,pind,pind, false,$fa=1, $fs=0.5);
translate ( [-x2/2 , -y2/2 ,0]) cube([x2,y2,8]);
    }
}