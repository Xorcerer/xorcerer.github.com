
# `markdown`, `pandoc` and `latex` are required
# put the following code in your .git/hooks/pre-commit for auto generating
#   sh generate-resumes.sh
#   sh copy-resumes-to-old-name.sh
#   git add *.md *.html *.pdf *.docx

echo "
<!DOCTYPE html>
<html>

<head>
<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" >

<title>Zhou Chong (Logan)</title>
</head>

<body>
`markdown logan-zhou-resume.md`
</body>
</html>
" > logan-zhou-resume.html

# Latex (MacTex in Mac OS) required.
pandoc -f markdown logan-zhou-resume.md -o logan-zhou-resume.pdf
pandoc -f markdown logan-zhou-resume.md -o logan-zhou-resume.docx
