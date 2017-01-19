INSTALL
=======

To edit a doc you need only a text editor. Browse `src/` directory, open .rst files. The `index.rst` collect the references to other available files (w/o extension). The `chapter1.rst` and `chapter2.rst` are esamples.

Basic requirements
------------------

This template is for Sphinx, the build system for Python manuals. Is really powerful and can export in various formats (html, epub, pdf, man, ect.). What you need to start:

- Python 3.x (python3)
- Sphinx (python3-sphinx)

To build HTML output with RTD theme:

- ReadTheDocs theme (python3-sphinx_rtd_theme)

To build pdf you need Latex (texlive) and many small packages.

To localize docs, grab the gettext utilities (gettext) and install the sphinx tools for the need (sphinx-intl).

How to build
------------

First run:

```
cd src/
make all
```

The resulting output will be placed under `src/_build` directory.

Translations
^^^^^^^^^^^^

If you know gettext, you know how it works. The first step is take your docs with .rst extension, extract labels and write basic templates in `src/locale/pot`. Run:
```
make gettext
```
To start a new language translation or to update an existing one, run:
```
make updatepo
```
And start working on your .po files. To build your italian translation:

```
./po2mo.sh
cd src/
make lang_it
```

Done.

