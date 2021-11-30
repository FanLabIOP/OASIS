#!/bin/csh

coordconv XYZIN $1.pdb XYZOUT fract.xyz << + 
input PDB -
   orth 1
output FRAC
end
+


awk '{printf("  C %4d %8.4f %8.4f %8.4f %8.4f %8.4f\n", \
      $1,$2,$3,$4,$6,$5)}' < fract.xyz > $1_fract.xyz

rm -f fract.xyz

