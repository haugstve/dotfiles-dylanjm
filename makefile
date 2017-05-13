clean:
	@echo '   Cleaning Up Repo...' ||:
	@gfind . \( -name '*~' -o -name '*#' -o -name '.DS_Store' \) -print -exec rm {} \; | gsed -e 's/^/    /' ||:
	@gfind . -name "__pycache__" -type d -print -exec rm -r {} \; | gsed -e 's/^/    /' ||:
