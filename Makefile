.PHONY: all convert push update

all: clone convert push


push:
	cd snipmate_to_yas_snippets; \
	git add *; \
	git commit -m "Update snippets `date`";\
	git push


convert:
	mkdir -p snipmate_to_yas_snippets
	for f in `find vim-snippets/snippets -name '*.snippets' -type f`; do \
		mode_name=`basename $$f .snippets`; \
		snipmate_to_yas $$f snipmate_to_yas_snippets; \
	done


clone:
	git clone https://github.com/honza/vim-snippets


update: 
	cd vim-snippets; \
	git pull

clean:
	rm -rf vim-snippets
