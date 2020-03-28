 #Using openscad command line example
# openscad -o output.stl openscad_file.scad -D variable_within_openscad_file=666
#

N_COPIES := 10
NUMBERS := $(shell seq 1 ${N_COPIES})
JOBS := $(addprefix job,${NUMBERS})
.PHONY: all ${JOBS}
all: dir ${JOBS}  ; echo "$@ success"
${JOBS}: job%: ; openscad -o $(stacker)_stls/stacked_$*.stl $(stacker) -D N_copies=$*
dir:
	mkdir -p $(stacker)_stls;
