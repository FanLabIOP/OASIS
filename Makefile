##############################################################################
#                                                                             #
#                      Makefile for compiling OASIS-2006                      #
#                                                                             #
###############################################################################

IFO = ifort
F77 = gfortran

#
default:
	@ echo "options: "; \
	  echo "   IRIX64	[install on the IRIX64 system]"; \
	  echo "   Linux	[install on the Linux PC system]"; \
          echo "   IRIX         [install on the SGI system]";\
          echo "   Darwin         [install on the Mac system]"
IRIX64:
	@ ${F77} -O2 -64 -mips3 -nocpp -OPT:Olimit=1500 -w -rpath ${CLIB} -o oasis4-2-1 oasis4.2.1.f -L${CLIB}/src -lccp4f -lccp4c -lmmdb2 -lC -lm -L/usr/lib64 -lblas
IRIX:
	@ ${F77} -O2 -mips3 -nocpp -OPT:Olimit=1500 -w -rpath ${CLIB} -o oasis4-2-1 oasis4.2.1.f -L${CLIB}/src -lccp4f -lccp4c -lmmdb2 -lC -lm -L/usr/lib32 -lblas
Linux:
	@ ${F77} -O -w  -fno-second-underscore -fno-automatic -o oasis4-2-1_linux oasis4.2.1.f  -Llib -lccp4f -lccp4c -lgfortran -lmmdb2 -lstdc++ -lm -Wl,-rpath -Wl,lib
	cp -f oasis4-2-1_linux ../bin/
	cp -f oasis4-2-1_linux ../bin/oasis4-2-1
	cp -f oasis4-2-1_linux ../bin/oasis
Darwin:
	@ ${IFO} -O2  -o oasis4-2-1_mac oasis4.2.1.f   -Llib -lccp4f -lccp4c -lmmdb2 -lSystem -lm
	cp -f oasis4-2-1_mac ../bin/
	cp -f oasis4-2-1_mac ../bin/oasis4-2-1
	cp -f oasis4-2-1_mac ../bin/oasis
