include <BOSL2/std.scad>

$fn = 64;

wallStrength = 4;

stickShaftDiameter = 9.6 * 1.001;
stickShaftHeight = 3.39;
stickDistance = 41.85 * 1.002;

outerDiameter = stickShaftDiameter + wallStrength * 2;

cutoutScale = 0.95;



xcopies(n = 2, spacing = stickDistance)
    difference()
    {
        cylinder(d = outerDiameter, h = stickShaftHeight, center = true);
        cylinder(d = stickShaftDiameter, h = stickShaftHeight + 0.01, center = true);

        back(outerDiameter / 2)
            cube([stickShaftDiameter * cutoutScale, outerDiameter, stickShaftHeight + 0.01], center = true);
    }

cube([stickDistance - stickShaftDiameter, stickShaftDiameter, stickShaftHeight], center = true);