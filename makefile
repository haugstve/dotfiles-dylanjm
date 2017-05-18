stage1:
	@echo 'Initializing Stage 1: ZSH INSTALL (TERMINAL RESTART REQUIRED)' ||:
	@bash Setup/stage1.sh ||:

stage2:
	@echo 'Initializing Stage 2: CLF and Text Editors' ||:
	@bash Setup/stage2.sh ||:

stage3:
	@echo 'Initializing Stage 3: Daily Apps and Fonts' ||:
	@bash Setup/stage3.sh ||:

pyconfig:
	@echo 'Initializing Python Setup' ||:
	@bash Python/py.sh

rconfig:
	@echo 'Initializing R Setup' ||:
	@bash R/r_setup.sh ||:

macos:
	@echo 'Initializing macOS Settings (REBOOT REQUIRED)' ||:
	@source Osx/macos.sh

clean:
	@echo 'Cleaning Up Repo...' ||:
	@gfind . \( -name '*~' -o -name '*#' -o -name '.DS_Store' \) -print -exec rm {} \; | gsed -e 's/^/    /' ||:
	@gfind . -name "__pycache__" -type d -print -exec rm -r {} \; | gsed -e 's/^/    /' ||:
