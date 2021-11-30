#! /bin/csh

dm hklin $1 hklout $1_dm \
   solout solvent.msk <<+
solc 0.38
mode solv  hist
NCYC AUTO
SCHEME ALL
COMBINE PERT
ncsmask
LABIN FP=FP SIGFP=SIGFP PHIO=PHIB FOMO=FOM
LABOUT FDM=FDM PHIDM=PHIDM FOMDM=FOMDM
+
#


freerflag HKLIN $1_dm HKLOUT $1_dm_rfree <<+ 
FREERFRAC  0.05
+

rm -f $1_dm.mtz
mv -f $1_dm_rfree.mtz $1_dm.mtz
rm -f *.msk
