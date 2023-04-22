//
// ktRack23
//
//


gap1 = 0.001;
gap2 = 0.002;

th = 2;





LEFT();
/*translate([0, 58, 55-6]) BAR();
translate([0, 160, 82-4]) BAR();
translate([0, 180, 50]) BAR();
mirror([1,0,0]) translate([-360, 0, 0]) LEFT();*/

//BAR_L();
//translate([-(360-10-10)/2, 15, 0]) BAR_R();


module LEFT()
{
difference()
{
    union()
    {
        translate([0, 0, 50-2-5]) rotate([16, 0, 0]) cube([25, 207, 10]);
        translate([0, 0, 50-2-5]) rotate([18, 0, 0]) cube([25, 5, 20]);
        translate([0, 0, 0]) cube([10, 10, 50+5-5]);
        translate([0, 180, 0]) rotate([0, 0, 0]) cube([10, 10, 105]);
        translate([0, 0, 0]) cube([10, 190, 10]);
        translate([0, 58, 55-6]) cube([10, 10, 20]);
        //translate([0, 58+10, 55-6]) cube([25, 10, 20]);
        //translate([0, 58-10, 55-6]) cube([25, 10, 12]);
        //translate([0, 58, 55-6+10]) cube([25, 10, 10]);
        
        translate([0, 160, 82-4]) cube([10, 10, 20]);
        //translate([0, 160+10, 82-4]) cube([25, 20, 20]);
        //translate([0, 160-10, 82-4]) cube([25, 10, 12]);
        //translate([0, 160, 82-4+10]) cube([25, 10, 10]);
        
        //translate([0+10, 180, 50+10]) cube([15, 10, 20]);
        //translate([0+10, 180, 50-10]) cube([15, 10, 10]);
        //translate([0, 180-10, 50-10]) cube([25, 10, 40]);
    }
    
    translate([6, 58+10/2, 55-6+10/2]) rotate([0, 90, 0]) rear_screw_hole();
    translate([6, 160+10/2, 82-4+10/2]) rotate([0, 90, 0]) rear_screw_hole();
    translate([6, 180+10/2, 50+10/2]) rotate([0, 90, 0]) rear_screw_hole();
    
    translate([0, -10, 50-2-5]) rotate([60, 0, 0]) cube([25, 30, 20]);
    translate([0, 180+10, 0]) rotate([0, 0, 0]) cube([25, 10, 115]);
    
    translate([10, -10, 50-2-20]) cube([25, 150, 20]);
}
}

module BAR()
{
    BAR_L();
    BAR_R();
}


module BAR_L()
{
difference()
{
    union()
    {
        translate([10, 0, 0]) cube([(360-10-10)/2+10, 10, 10]);
    }
    
        translate([3+3+10+3, 10/2, 10/2]) rotate([0, -90, 0]) rotate([0, 0, 90]) screw_hole2();
        translate([3+3+10-3+3, 10/2-3, 10/2]) cube([3, 6, 6], center=true);
    
        translate([(360-10-10)/2+10, -5, 0]) cube([10, 10, 10]);
        translate([(360-10-10)/2+10+10/2, 9, 10/2]) rotate([90, 0, 0]) rotate([0, 0, 90]) rear_screw_hole();
}
}
module BAR_R()
{
difference()
{
    union()
    {
        translate([(360-10-10)/2+10, 0, 0]) cube([(360-10-10)/2, 10, 10]);
    }
    
        translate([(360-10-10)+5-3, 10/2, 10/2]) rotate([0, 90, 0]) rotate([0, 0, 90]) screw_hole2();
        translate([(360-10-10)+3+5-3, 10/2-3, 10/2]) cube([3, 6, 6], center=true);
    
        translate([(360-10-10)/2+10, 5, 0]) cube([10, 10, 10]);
        translate([(360-10-10)/2+10+10/2, 5.5, 10/2]) rotate([90, 0, 0]) rotate([0, 0, 90]) screw_hole();
}
}

module screw_hole()
{
    cylinder( 10, 1.6, 1.6, $fn=30 );
    translate( [0, 0, 1.5] ) cylinder( 10, 6.5/2+0.1, 6.5/2+0.1, $fn=6 );
}
module screw_hole2()
{
    translate([0, 0, -5]) cylinder( 20, 1.6, 1.6, $fn=30 );
    translate( [0, 0, 1.5] ) cylinder( 3, 6.5/2+0.1, 6.5/2+0.1, $fn=6 );
}


module rear_screw_hole()
{
    translate([0, 0, 3]) cylinder(5, 1.5, 1.5, $fn=30);
    translate([0, 0, 2.2-gap1]) cylinder(0.8+gap2, 1.5+0.7, 1.5, $fn=30);
    translate([0, 0, -gap1]) cylinder(2.2+gap1, 3.25+0.4, 3.25-0.6, $fn=30);
    translate([0, 0, -10]) cylinder(10, 3.25+0.4, 3.25+0.4, $fn=30);
}