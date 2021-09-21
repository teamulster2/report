.PHONY: build
build:
	cd report/; \
pandoc -o 00_abstract/report.md --standalone --defaults 00_abstract/includes.yaml -f markdown --pdf-engine=xelatex; \
pandoc -o 01_introduction/report.md --standalone --defaults 01_introduction/includes.yaml -f markdown --pdf-engine=xelatex; \
pandoc -o 02_background/report.md --standalone --defaults 02_background/includes.yaml -f markdown --pdf-engine=xelatex; \
pandoc -o 03_methodology/report.md --standalone --defaults 03_methodology/includes.yaml -f markdown --pdf-engine=xelatex; \
pandoc -o 04_implementation/report.md --standalone --defaults 04_implementation/includes.yaml -f markdown --pdf-engine=xelatex; \
pandoc -o 05_results_and_discussion/report.md --standalone --defaults 05_results_and_discussion/includes.yaml -f markdown --pdf-engine=xelatex; \
pandoc -o 06_conclusion/report.md --standalone --defaults 06_conclusion/includes.yaml -f markdown --pdf-engine=xelatex; \
pandoc -o 07_references/report.md --standalone --defaults 07_references/includes.yaml -f markdown --pdf-engine=xelatex; \
cd ..

.PHONY: render
render: build
	cd report/; \
pandoc -o report.md --standalone --defaults includes.yaml -f markdown --pdf-engine=xelatex; \
pandoc styles.md -o report.pdf --standalone --defaults includes.yaml -f markdown -H disable_float.tex --pdf-engine=xelatex; \
cd ..

.PHONY: clean
clean:
	/bin/rm -f report/report.md report/report.pdf report/**/report.md
