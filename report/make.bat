:: quick workaround for windows users
pandoc -s -o 00_abstract/report.md --defaults 00_abstract/includes.yaml
pandoc -s -o 01_introduction/report.md --defaults 01_introduction/includes.yaml
pandoc -s -o 02_background/report.md --defaults 02_background/includes.yaml
pandoc -s -o 03_methodology/report.md --defaults 03_methodology/includes.yaml
pandoc -s -o 04_implementation/report.md --defaults 04_implementation/includes.yaml
pandoc -s -o 05_results_and_discussion/report.md --defaults 05_results_and_discussion/includes.yaml
pandoc -s -o 06_conclusion/report.md --defaults 06_conclusion/includes.yaml
pandoc -s -o 07_references/report.md --defaults 07_references/includes.yaml

pandoc -s -o report.md --defaults includes.yaml
pandoc -s -o report.pdf --defaults includes.yaml