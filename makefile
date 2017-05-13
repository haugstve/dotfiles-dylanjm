clean:
	@echo '   Cleaning Up Repo...' ||:
	@find . \( -name '*~' -o -name '*#' -o -name '.DS_Store' \) -print -exec rm {} \; | gsed -e 's/^/    /' ||:
	@find . -name "__pycache__" -type d -print -exec rm -r {} \; | gsed -e 's/^/    /' ||:
