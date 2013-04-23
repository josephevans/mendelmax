//main body

boxWidth = 112; // actually 110
boxHeight = 52; // actually 50
boxDepth = 60; // was 80

outletwidth = 28; // actually 27
outletHeight = 48; // actually 47.5

difference() {
	union() {
		cube([boxHeight+6, boxWidth + 6,3]); //bottom
		cube([boxHeight+6,3,boxDepth]);  //y0
		cube([3,boxWidth + 5,boxDepth]);  //x0
		translate([0,boxWidth + 4,0]) cube([boxHeight + 6,3,boxDepth]); //yn
		translate([boxHeight+3,0,0]) cube([3,boxWidth + 5,boxDepth]); //xn
		cube([3,6,boxDepth]); //x0y0 lip
		translate([boxHeight+3,0,0]) cube([3,6,boxDepth]); //yn lip
		translate([0,boxWidth,0]) cube([3,6,boxDepth]); //y0 lip
		translate([boxHeight+3,boxWidth,0]) cube([3,6,boxDepth]); //xnyn lip
	}
	translate([(boxHeight - outletHeight)/2 + 3,75,0]) cube([outletHeight,outletwidth,3]); //power switch hole
	translate([9,74 + outletwidth + 1,1]) cube([12,1,2]); // botom left notch for power switch
	translate([9,74,1]) cube([12,1,2]); //bottom right notch for power switch
	translate([35,74 + outletwidth + 1,1]) cube([12,1,2]); //top left notch for power switch
	translate([35,74,1]) cube([12,1,2]); //top right notch for power switch
	translate([4.5+25,10,52.5]) rotate([270,0,0]) cylinder(h=200, r=1.5, $fn=50); // screw hole - Attach to power supply
	translate([4.5+25,-50,17]) rotate([270,0,0]) cylinder(h=100, r=4, $fn=50); // hole for wires

}

