EXEC_DIGIT=main_digit.py
EXEC_STR=main_str.py
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
	@$(MAKE) run scenario=5
	@$(MAKE) run scenario=6
	@$(MAKE) run scenario=7
	@$(MAKE) run scenario=8

run:
ifndef scenario
	@$(MAKE) Convert_digit
else ifeq ($(scenario), 1)
	@$(MAKE) Convert_digit
else ifeq ($(scenario), 2)
	@$(MAKE) Exctract_digit
else ifeq ($(scenario), 3)
	@$(MAKE) ExtractNoExtension_digit
else ifeq ($(scenario), 4)
	@$(MAKE) AddExtension_digit
else ifeq ($(scenario), 5)
	@$(MAKE) Convert_str
else ifeq ($(scenario), 6)
	@$(MAKE) Exctract_str
else ifeq ($(scenario), 7)
	@$(MAKE) ExtractNoExtension_str
else ifeq ($(scenario), 8)
	@$(MAKE) AddExtension_str
else
	@$(MAKE) Convert_str
endif

Convert_digit:
	@echo $(COLOR_STYLE)"scenario 1: "$(COLOR_ACTIVE)"Convert File"$(COLOR_STOP)
	@echo $(COLOR_DISPLAY)
	$(PYTHON_DEFAULT_EXEC) $(EXEC_DIGIT) -v true -f files/need-convert.txt -w "bonjour"
	@echo $(COLOR_STOP)

Exctract_digit:
	@echo $(COLOR_STYLE)"scenario 2: "$(COLOR_ACTIVE)"Exctract File"$(COLOR_STOP)
	@echo $(COLOR_DISPLAY)
	$(PYTHON_DEFAULT_EXEC) $(EXEC_DIGIT) -v true -f files/need-convert.txt -d file/default-need-convert.txt -e "tst"
	@echo $(COLOR_STOP)

ExtractNoExtension_digit:
	@echo $(COLOR_STYLE)"scenario 3: "$(COLOR_ACTIVE)"Extract without extension"$(COLOR_STOP)
	@echo $(COLOR_DISPLAY)
	$(PYTHON_DEFAULT_EXEC) $(EXEC_DIGIT) -v true -f files/need-convert.txt -d file/default-need-convert.txt
	@echo $(COLOR_STOP)

AddExtension_digit:
	@echo $(COLOR_STYLE)"scenario 4: "$(COLOR_ACTIVE)"Add extension"$(COLOR_STOP)
	@echo $(COLOR_DISPLAY)
	$(PYTHON_DEFAULT_EXEC) $(EXEC_DIGIT) -v true -f files/need-convert.txt -e "finish"
	@echo $(COLOR_STOP)

Convert_str:
	@echo $(COLOR_STYLE)"scenario 5: "$(COLOR_ACTIVE)"Convert File"$(COLOR_STOP)
	@echo $(COLOR_DISPLAY)
	$(PYTHON_DEFAULT_EXEC) $(EXEC_STR) -v true -f files/need-convert.txt -w "bonjour"
	@echo $(COLOR_STOP)

Exctract_str:
	@echo $(COLOR_STYLE)"scenario 6: "$(COLOR_ACTIVE)"Exctract File"$(COLOR_STOP)
	@echo $(COLOR_DISPLAY)
	$(PYTHON_DEFAULT_EXEC) $(EXEC_STR) -v true -f files/need-convert.txt -d file/default-need-convert.txt -e "tst"
	@echo $(COLOR_STOP)

ExtractNoExtension_str:
	@echo $(COLOR_STYLE)"scenario 7: "$(COLOR_ACTIVE)"Extract without extension"$(COLOR_STOP)
	@echo $(COLOR_DISPLAY)
	$(PYTHON_DEFAULT_EXEC) $(EXEC_STR) -v true -f files/need-convert.txt -d file/default-need-convert.txt
	@echo $(COLOR_STOP)

AddExtension_str:
	@echo $(COLOR_STYLE)"scenario 8: "$(COLOR_ACTIVE)"Add extension"$(COLOR_STOP)
	@echo $(COLOR_DISPLAY)
	$(PYTHON_DEFAULT_EXEC) $(EXEC_STR) -v true -f files/need-convert.txt -e "finish"
	@echo $(COLOR_STOP)
