$ENV{'TEXINPUTS'} = "./Template/aneotheme//:";
$ENV{'OSFONTDIR'} = "./Template/aneotheme/fonts//:";
$ENV{'PYGMENTIZE'} = ".venv/bin/pygmentize";

$pdf_mode = 1;
$pdflatex = 'lualatex -shell-escape -interaction=nonstopmode -synctex=1 %O %S';
