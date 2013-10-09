
# `markdown`, `pandoc` and `latex` are required
# put the following code in your .git/hooks/pre-commit for auto generating
#   sh generate-resumes.sh
#   sh copy-resumes-to-old-name.sh
#   git add *.md *.html *.pdf *.docx

# Latex (MacTex in Mac OS) required.
pandoc -f markdown logan-zhou-resume.md -o logan-zhou-resume.html
pandoc -f markdown logan-zhou-resume.md -o logan-zhou-resume.pdf
pandoc -f markdown logan-zhou-resume.md -o logan-zhou-resume.docx

pandoc -f markdown logan-zhou-resume-java.md -o logan-zhou-resume-java.html
pandoc -f markdown logan-zhou-resume-java.md -o logan-zhou-resume-java.pdf
pandoc -f markdown logan-zhou-resume-java.md -o logan-zhou-resume-java.docx

pandoc 周翀简历.md -o zh-cn-content.html --latex-engine=xelatex -V mainfont=STFangsong
echo '
<!DOCTYPE html>
<html>
  <head>
    <meta charset='utf-8'>
    <title>周翀简历</title>
  </head>
  <body>
' > 周翀简历.html
cat zh-cn-content.html >> 周翀简历.html
echo '
  </body>
</html>
' >> 周翀简历.html
rm zh-cn-content.html
pandoc 周翀简历.md -o 周翀简历.pdf --latex-engine=xelatex -V mainfont=STFangsong
pandoc 周翀简历.md -o 周翀简历.docx --latex-engine=xelatex -V mainfont=STFangsong
