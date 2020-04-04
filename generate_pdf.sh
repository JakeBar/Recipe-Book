# Don't continue if there's an error
set -e

# Get the recipes with a table of contents
echo "Gathering recipes... 🍳"
pandoc -s -f gfm -t gfm -o RECIPES_WITH_TOC.md --toc --toc-depth=1 RECIPES/*.md

# Prefix everything with an introduction
echo "Adding an introduction... ✍️"

pandoc -s -f gfm -t gfm -o RAW_BOOK.md INTRODUCTION.md RECIPES_WITH_TOC.md

# Export as a PDF
echo "Exporting as PDF... 📘"
pandoc -s -o recipe_book.pdf RAW_BOOK.md

# Remove temp files
echo "Cleaning up files ..."
rm RAW_BOOK.md
rm RECIPES_WITH_TOC.md

echo "Done! Let's cook something yum 👨‍🍳👩‍🍳"
