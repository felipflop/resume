OUT := out
AUX := build
LATEX := latexmk -pdf -interaction=nonstopmode -outdir=$(OUT) -auxdir=$(AUX)

all: master embedded hardware firmware software project-management 

master:
	$(LATEX) -jobname=FelipeNunes_Resume_Master variants/master.tex
embedded:
	$(LATEX) -jobname=FelipeNunes_Resume_Embedded variants/embedded.tex
hardware:
	$(LATEX) -jobname=FelipeNunes_Resume_Hardware variants/hardware.tex
firmware:
	$(LATEX) -jobname=FelipeNunes_Resume_Firmware variants/firmware.tex
software:
	$(LATEX) -jobname=FelipeNunes_Resume_Software variants/software.tex
project-management:
	$(LATEX) -jobname=FelipeNunes_Resume_Project-Management variants/project-management.tex

clean:
	latexmk -C
	rm -rf $(OUT) $(AUX)

.PHONY: all master embedded hardware firmware software project-management clean