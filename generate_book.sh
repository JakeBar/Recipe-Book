# Don't continue if there's an error
set -e

PDF="pdf"
MARKDOWN="markdown"

# Get the recipes with a table of contents
echo "Gathering recipes... 🍳"
pandoc -s -f gfm -t gfm -o RECIPES_WITH_TOC.md --toc --toc-depth=1 RECIPES/MAINS/*.md RECIPES/SIDES/*.md RECIPES/MEATS/*.md RECIPES/SWEETS/*.md

# Prefix everything with an introduction
echo "Adding an introduction... ✍️"

if [ $1 == $MARKDOWN ]
then
    echo "Exporting as Markdown... 📘"
    pandoc -s -f gfm -t gfm -o recipe_book.md INTRODUCTION.md RECIPES_WITH_TOC.md
else
    echo "Exporting as PDF... 📘"
    pandoc -V geometry:margin=1in -V geometry:top=0in --top-level-division=chapter --pdf-engine=xelatex -s -o recipe_book.pdf INTRODUCTION.md RECIPES_WITH_TOC.md
fi

# Remove temp files
echo "Cleaning up files ..."
rm RECIPES_WITH_TOC.md

echo "Done! Let's cook something yum 👨‍🍳👩‍🍳"
