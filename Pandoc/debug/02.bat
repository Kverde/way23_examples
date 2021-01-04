pandoc input01.md --fail-if-warnings -f markdown -t html -s -o output.html

echo %errorlevel%

pause

