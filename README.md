# Recipe Book

A mish mash of recipes I like.
Written in `markdown` and compiled into `.pdf` using Pandoc.

# Requirements

- [pandoc](https://pandoc.org/installing.html)
- [mactex-no-gui](https://formulae.brew.sh/cask/mactex-no-gui)

# Usage

Generate a recipe book by running the following command:

```sh
./generate_pdf.sh
Gathering recipes... 🍳
Adding an introduction... ✍️
Exporting as PDF... 📘
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
    - Fonts
- Metadata
- Images
- Fonts
- Pandoc cross referencing (see `- pandoc-crossref` flag)
