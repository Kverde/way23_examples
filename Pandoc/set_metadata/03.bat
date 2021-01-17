chcp 65001

pandoc -o output.html -f markdown -t html -s --metadata-file=metadata.yaml -M "title=Заголовок параметры" input01.md

pause

