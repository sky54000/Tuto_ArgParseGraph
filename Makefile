EXEC=./main.py
INSTALL_PYTHON_PACKAGE_MSG="By default python3 is used."
PYTHON_DEFAULT_EXEC=python3
COLOR_ACTIVE="\033[0;33m"
COLOR_STOP="\033[0;00m"
COLOR_STYLE="\033[1m"
COLOR_DISPLAY="\033[0;31m"
all: run_all

run_all:
	@$(MAKE) run scenario=1
	@$(MAKE) run scenario=2
	@$(MAKE) run scenario=3
	@$(MAKE) run scenario=4

run:
ifndef scenario
	@$(MAKE) Convert
else ifeq ($(scenario), 1)
	@$(MAKE) Convert
else ifeq ($(scenario), 2)
	@$(MAKE) Exctract
else ifeq ($(scenario), 3)
	@$(MAKE) ExtractNoExtension
else ifeq ($(scenario), 4)
	@$(MAKE) AddExtension
else
	@$(MAKE) Convert
endif

Convert:
	@echo $(COLOR_STYLE)"scenario 1: "$(COLOR_ACTIVE)"Convert File"$(COLOR_STOP)
	@echo $(COLOR_DISPLAY)"\n"
	$(PYTHON_DEFAULT_EXEC) $(EXEC) -v true -f files/need-convert.txt -w "bonjour"
	@echo $(COLOR_STOP)"\n"

Exctract:
	@echo $(COLOR_STYLE)"scenario 2: "$(COLOR_ACTIVE)"Exctract File"$(COLOR_STOP)
	@echo $(COLOR_DISPLAY)"\n"
	$(PYTHON_DEFAULT_EXEC) $(EXEC) -v true -f files/need-convert.txt -d file/default-need-convert.txt -e "tst"
	@echo $(COLOR_STOP)"\n"

ExtractNoExtension:
	@echo $(COLOR_STYLE)"scenario 3: "$(COLOR_ACTIVE)"Extract without extension"$(COLOR_STOP)
	@echo $(COLOR_DISPLAY)"\n"
	$(PYTHON_DEFAULT_EXEC) $(EXEC) -v true -f files/need-convert.txt -d file/default-need-convert.txt
	@echo $(COLOR_STOP)"\n"

AddExtension:
	@echo $(COLOR_STYLE)"scenario 4: "$(COLOR_ACTIVE)"Add extension"$(COLOR_STOP)
	@echo $(COLOR_DISPLAY)"\n"
	$(PYTHON_DEFAULT_EXEC) $(EXEC) -v true -f files/need-convert.txt -e "finish"
	@echo $(COLOR_STOP)"\n"
