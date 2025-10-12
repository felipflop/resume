OUT := out
AUX := build
LATEX := latexmk -pdf -interaction=nonstopmode -outdir=$(OUT) -auxdir=$(AUX)

all: embedded hardware firmware software project-management

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

.PHONY: all embedded hardware firmware software project-management clean