var=$1
#pandoc About.md -o about.html
#pandoc instructions.md -o instructions.html
javac -d . -cp  ':lib/*' src/*.java

if [ "$var" == "jar" ]; then
  jar -cvfm autodoc-v1.5.jar MANIFEST.MF -C bin bin/* gov/ instructions.html jpl_logo.png about.html
  rm -rf gov
fi
#rm instructions.html
#rm about.html
