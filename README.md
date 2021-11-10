# Subgradient methods in Matlab

This repo contains numerical experiiments with subgradient methods wrapped in
Matlab.

Methods analyzed here are:

- [Limited Memory Bundle Method](http://napsu.karmitsa.fi/lmbm/)
- [Bundle NDOSolver](https://gitlab.com/frangio68/ndosolver_fioracle_project)

## Installation

Prerequisites are Matlab, `make`, `gfortran` and `gcc`.

- [IBM Cplex](https://www.ibm.com/products/ilog-cplex-optimization-studio)
- [CoinUtils](https://github.com/coin-or/CoinUtils) library must be installed
- [Open Solver Interface (OSI)](https://github.com/coin-or/Osi)
- [Clp](https://github.com/coin-or/Clp)

### Installation on macOS

IBM Cplex can be installed by registering with academic email.
You will need to install Java Web Start from here: https://openwebstart.com
because Cplex must be installed through IBM Download manager (*.jnlp file)

    brew install coinutils
    brew install osi
    brew install clp

### Installation on Ubuntu 18.04+

IBM Cplex can be installed by registering with academic email.
You will need to install Java Web Start from here: https://openwebstart.com
because Cplex must be installed through IBM Download manager (*.jnlp file)

    sudo apt install coinutils ??
    sudo apt install osi???
    sudo apt install coinor-clp

Then compile the NDOSolver with the following commands:

    mkdir build
    cd build
    cmake ..
    make

## Copyright

2021 (c) Dmitry Kabanov, Eliza Rezvanova
