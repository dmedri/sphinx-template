# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line.
SPHINXOPTS    =
SPHINXBUILD   = sphinx-build
SPHINXPROJ    = sphinx-template
SOURCEDIR     = .
BUILDDIR      = _build

# gettext commands to merge exsisting .po to updated
# .pot and build .mo in their locale directory.
MSGFMT = /usr/bin/msgfmt
MSGMRG = /usr/bin/msgmerge

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

gettext:
	sphinx-build -b gettext . locale/pot/

updatepo:
	# update translation per-language
	sphinx-intl update -p locale/pot -l it
	#sphinx-intl update -p locale/pot -l es
	#sphinx-intl update -p locale/pot -l de
	#sphinx-intl update -p locale/pot -l fr

lang_it:
	make -e SPHINXOPTS="-D language='it'" html
	#make -e SPHINXOPTS="-D language='it'" epub
	#make -e SPHINXOPTS="-D language='it'" latexpdf
	#make -e SPHINXOPTS="-D language='it'" latexpdf
	#cd _build/latex && \
	#rm *.{sty,png,cls,ist,ilg,idx,aux,out,tex,ind,toc,log} Makefile

all:
	make html
	#make epub
	#make latexpdf
	#cd _build/latex && \
	#rm *.{sty,png,cls,ist,ilg,idx,aux,out,tex,ind,toc,log} Makefile

