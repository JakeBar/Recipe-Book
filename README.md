# Recipe Book

A mish mash of recipes I like.
Written in `markdown` and compiled into `.pdf` using Pandoc.

# Requirements (Mac)

- [pandoc](https://pandoc.org/installing.html)
- [mactex-no-gui](https://formulae.brew.sh/cask/mactex-no-gui)

# Usage

Generate a recipe book by running one of the following commands:

## PDF

```sh
./generate_book.sh pdf
Gathering recipes... 🍳
Adding an introduction... ✍️
Exporting as PDF... 📘
Cleaning up files ...
Done! Let's cook something yum 👨‍🍳👩‍🍳
```

## Markdown

```sh
./generate_book.sh markdown
Gathering recipes... 🍳
Adding an introduction... ✍️
Exporting as Markdown... 📘
Cleaning up files ...
Done! Let's cook something yum 👨‍🍳👩‍🍳
```

Alternatively try this 👨‍🍳👩‍🍳:

```sh
./start_cooking.sh
```

# Future Improvements

- Styling
    - Page breaks
    - CSS
- Images
- Metadata
- Fonts
- Pandoc cross referencing (see `- pandoc-crossref` flag)
