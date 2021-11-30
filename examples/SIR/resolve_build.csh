#!/bin/csh
#
resolve<<EOD  
hklin $1_dm.mtz
LABIN FP=FP PHIB=PHIDM FOM=FOMDM
build_only
hklout resolve.mtz
solvent_content 0.47             ! your solvent content goes here.
             ! Next line is the file with your protein sequence.
seq_file ${OASIS04DIR}/examples/SIR/rnase.seq 
EOD
#
