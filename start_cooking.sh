set -e

MARKDOWN="markdown"

if [ $1 == $MARKDOWN ]
then
    ./generate_book.sh markdown
    open recipe_book.md
else
    ./generate_book.sh pdf
    open recipe_book.pdf
fi
