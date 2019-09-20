
# Extra makefile, not in the main repository

.PHONY: all rebuild

all:
	-./coinbrew fetch build COIN-OR-OptimizationSuite --no-prompt 
	# copy files that were treated incorrectly by the scripts
	cp build/cppad/cppad/configure.hpp build/include/cppad/.
	cp build/cppad/cppad/local/is_pod.hpp build/include/cppad/local/.
	./coinbrew build COIN-OR-OptimizationSuite --skip-update --no-prompt


# after installing packages that would change configure
rebuild:
	./coinbrew build COIN-OR-OptimizationSuite --skip-update --no-prompt --reconfigure

