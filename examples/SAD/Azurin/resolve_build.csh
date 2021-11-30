#!/bin/csh
#
resolve<<EOD > $1_resolve_build.log
hklin $1_dm.mtz
LABIN FP=FP PHIB=PHIDM FOM=FOMDM
build_only
hklout resolve.mtz
solvent_content 0.45             ! your solvent content goes here.
             ! Next line is the file with your protein sequence.
seq_file ${OASIS04DIR}/examples/SAD/Azurin/azurin.seq 
EOD
#
