
.PHONY: fmt
fmt:
	find ./src/ -name *.typ -exec typstfmt {} \; 

.PHONY: doc
doc:
	typst --font-path src/fonts/ src/main.typ out/main.pdf
