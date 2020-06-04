# hamming_gen

This package automates the generation of VHDL package with hamming encoder and decoder from the [hamming_gen project](https://opencores.org/projects/hamming_gen) on opencores. 

### Requirements

- Installing Docker (version 2.2.0.5 stable or higher)
There’s a graphical installer for Windows and Mac that makes installing Docker easy. Here are instructions for each OS:

    [Windows](https://docs.docker.com/docker-for-windows/install/)

    [Mac OS](https://docs.docker.com/docker-for-mac/install/)

    [Linux](https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/)

### Generate

`make`

*the VHDL package is generated in your current directory and can be applied to your project.

### Customize

The Makefile allows to customize the output, see instructions within.