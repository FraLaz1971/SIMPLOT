RM = rm -f
#batch BASIC interpreter command
BBASIC = pcbasic -qn
#interactive/graphics BASIC interpreter cmd.
BASIC = pcbasic
.PHONY: all plot clean

all: plot

POINTS.BAS: simpts.bas
	$(BBASIC) simpts.bas

simplot.bas: gwsimplot.txt POINTS.BAS
	cat gwsimplot.txt POINTS.BAS > simplot.bas

plot: clean POINTS.BAS simplot.bas
	$(BASIC) simplot.bas &

clean:
	$(RM) simplot.bas POINTS.BAS output.txt


