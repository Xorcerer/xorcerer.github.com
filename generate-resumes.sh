# `markdown`, `pandoc` and `latex` are required
# put the following code in your .git/hooks/pre-commit for auto generating
#   sh generate-resumes.sh
#   sh copy-resumes-to-old-name.sh
#   git add *.md *.html *.pdf *.docx

# Latex (MacTex in Mac OS) required.
pandoc -f markdown logan-zhou-resume.md -o en-content.html
# ./bootstrap-it.py bootstrap-template.html en-content.html logan-zhou-resume.html "Logan Zhou Resume"
./bootstrap-it.py strapdown-template.html logan-zhou-resume.md logan-zhou-resume.html "Logan Zhou Resume"
rm en-content.html
pandoc -f markdown logan-zhou-resume.md -o logan-zhou-resume.pdf
pandoc -f markdown logan-zhou-resume.md -o logan-zhou-resume.docx

pandoc -f markdown logan-zhou-resume-java.md -o logan-zhou-resume-java.html
pandoc -f markdown logan-zhou-resume-java.md -o logan-zhou-resume-java.pdf
pandoc -f markdown logan-zhou-resume-java.md -o logan-zhou-resume-java.docx

pandoc 周翀简历.md -o cn-content.html --latex-engine=xelatex -V mainfont=STFangsong
# ./bootstrap-it.py bootstrap-template.html cn-content.html 周翀简历.html "周翀简历"
./bootstrap-it.py strapdown-template.html 周翀简历.md 周翀简历.html "周翀简历"
rm cn-content.html
pandoc 周翀简历.md -o 周翀简历.pdf --latex-engine=xelatex -V mainfont=STFangsong
pandoc 周翀简历.md -o 周翀简历.docx --latex-engine=xelatex -V mainfont=STFangsong
