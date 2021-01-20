chcp 65001

pandoc -o output.md -f markdown -t markdown -s --template template02.md --metadata-file=metadata.yaml input01.md

pause

