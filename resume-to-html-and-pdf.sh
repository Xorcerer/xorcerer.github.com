
# `markdown` and `wkhtmltopdf` are required
# put the following code in your .git/hooks/pre-commit for auto generating
#   sh resume-to-html-and-pdf.sh
#   git add *.html *.pdf

echo "
<!DOCTYPE html>
<html>

<head>
<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" >

<title>Zhou Chong (Logan)</title>
</head>

<body>
`markdown resume.md`
</body>
</html>
" > resume.html

# wkhtmltopdf 9.9.0 is recommanded in Mac OS X.
# Ref: http://code.google.com/p/wkhtmltopdf/issues/detail?id=141
wkhtmltopdf resume.html resume.pdf