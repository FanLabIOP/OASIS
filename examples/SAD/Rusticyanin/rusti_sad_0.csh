#!/bin/csh -f


${OASIS04DIR}/bin/oasis04 		\
hklin ${OASIS04DIR}/examples/SAD/Rusticyanin/rusti.mtz  \
hklout rusti_oasis_0.mtz << +
LABIN FP=FP SIGFP=SIGFP DANO=DANO SIGDANO=SIGDANO PHIC=PHICalc
TIT   Direct Phasing for Rusticyanin
CON   C 761   N 185   O 217   H 1153   S 4    CU 1
KMI  0.01
ANO  CU 3.8790
POS
  CU  1   0.1506 0.2500 0.4265   0.8531   12.8654
SAD
+
