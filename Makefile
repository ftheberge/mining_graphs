# Project Variables
include Makefile.include
# Reproducible Environments
include Makefile.envs

#
# Deprecated
#

.PHONY: requirements

requirements: update_environment
	@$(ECHO) "WARNING: 'make requirements' is deprecated. Use 'make update_environment'"

.PHONY: unfinished
unfinished:
	@$(ECHO) "WARNING: this target is unfinished and may be removed or changed dramatically in future releases"

#
# COMMANDS                                                                      #
#

.PHONY: check_requirements
## Ensure all installation requirements are installed
check_requirements: check_installation
	@$(PYTHON_INTERPRETER) scripts/am_i_ready.py

.PHONY: clean
## Delete all compiled Python files
clean:
	$(PYTHON_INTERPRETER) scripts/clean.py

.phony: help_update_easydata
help_update_easydata:
	@$(PYTHON_INTERPRETER) scripts/help-update.py

.PHONY: debug
## dump useful debugging information to $(DEBUG_FILE)
debug:
	@$(PYTHON_INTERPRETER) scripts/debug.py $(DEBUG_FILE)


#################################################################################
# PROJECT RULES                                                                 #
#################################################################################


#################################################################################
# Self Documenting Commands                                                     #
#################################################################################

HELP_VARS := PROJECT_NAME DEBUG_FILE ARCH PLATFORM

.DEFAULT_GOAL := show-help
.PHONY: show-help
show-help:
	@$(PYTHON_INTERPRETER) scripts/help.py $(foreach v,$(HELP_VARS),-v $(v) $($(v))) $(MAKEFILE_LIST)
