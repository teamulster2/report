:: quick workaround for windows users
	cd report/; \
cd 00_abstract/; \
pandoc -o report.md --standalone --defaults includes.yaml -f markdown --pdf-engine=xelatex; \
cd ../01_introduction/; \
pandoc -o report.md --standalone --defaults includes.yaml -f markdown --pdf-engine=xelatex; \
cd ../02_background/; \
pandoc -o report.md --standalone --defaults includes.yaml -f markdown --pdf-engine=xelatex; \
cd ../03_methodology/; \
pandoc -o report.md --standalone --defaults includes.yaml -f markdown --pdf-engine=xelatex; \
cd ../04_implementation/; \
pandoc -o report.md --standalone --defaults includes.yaml -f markdown --pdf-engine=xelatex; \
cd ../05_results_and_discussion/; \
pandoc -o report.md --standalone --defaults includes.yaml -f markdown --pdf-engine=xelatex; \
cd ../06_conclusion/; \
pandoc -o report.md --standalone --defaults includes.yaml -f markdown --pdf-engine=xelatex; \
cd ../07_references/; \
pandoc -o report.md --standalone --defaults includes.yaml -f markdown --pdf-engine=xelatex; \
cd ../../

	cd report/report-build/; \
pandoc -o report.md --standalone --defaults includes.yaml -f markdown --pdf-engine=xelatex; \
pandoc styles.md -o ../../report.pdf --standalone --defaults includes.yaml -f markdown -H disable_float.tex --pdf-engine=xelatex; \
cd ../../