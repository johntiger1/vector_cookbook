# vector_cookbook

The most important link is the wiki: https://support.vectorinstitute.ai/

# Shell commands:
1. Eval is used to evaluate expressions. Essentially, allows dynamic code parsing (and then execution)

$fooname=100 $fooval=100
Ex. eval "$fooname = \$fooval" 

This allows us to dynamically set a variable $fooname using a dynamic variable $fooval

Things are whitespace sensitive, make sure you are precise.

2. [ ] is a conditional expression (evaluation). Returns true or false

2a) we can do if [[ 1==0 ]] && echo my first command || echo second branch of ternary 

as a ternary 

##
A discussion on keeping vaughan synced with mars
https://vectorinstitute.slack.com/archives/CAJ6QCM9C/p1589377802240700

# List of Useful Packages
- htop
- gpustat -i
- nvidia-smi
- ncdu
- ctrl alt del (task manager)
- xclip
- ...
In general, to get it working, first, make sure it works on srun. Then, move it to the sbatch script! But there were some waysof checking the output log of the sbatch, and seeing the output file. sbatch.out for instance!

1. when you run sbatch, then you will get an sbatch.out file where you ran it

Collection of tips and resources useful for running things on Vector servers

Indeed: days that got away: actually learning how the packaging/models etc. work! 
https://timothybramlett.com/How_to_create_a_Python_Package_with___init__py.html

Recall we got a taste of this when making a nuget package at OTPP!

https://github.com/johntiger1/vector_scripts
https://github.com/johntiger1/csc2547-project/blob/3d79547d0b4a66ab1148bf30c2176e3e02f482ba/run_script.sh


OK, so we need to configure the pycharm directory correctly. Probably an $__init__$, or adding a correct import, or correct path append somewhere! 

