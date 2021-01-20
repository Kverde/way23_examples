chcp 65001

pandoc -o output.md -f markdown -t markdown -s --template template03.md -V item1=Apple -V item2=Tomato input01.md

pause

