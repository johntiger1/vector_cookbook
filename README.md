# vector_cookbook

The most important link is the wiki: https://support.vectorinstitute.ai/

# MVE running a slurm job

1. set up the environment correctly
2. set up the paths correctly - where is output stored/piped? Recall, it should come back "as expected"

https://github.com/nng555/cluster_examples/blob/master/example_job.sh

Note that srun and sbatch appear to have the same mechanisms - the environment is inherited from the calling script.

## Example sbatch job descriptions and scripts:
https://github.com/nng555/cluster_examples/blob/master/example_job.slrm

https://github.com/johntiger1/lxmert_test/blob/master/src/tasks/language/sbatch_seq2seq.sh


# Using Modulefiles
Modulefiles allow you to manage *system* environments. This includes setting the PATH for CUDA and other goodies. Please see this link: 
https://github.com/SPOClab-ca/SickKids-LiverX/blob/main/grandproj.env
for a simple modulefile.

```
# module use /pkgs/environment-modules/
(base) johnchen@v:~$ module load pytorch-36
(base) johnchen@v:~$ module purge
(base) johnchen@v:~$ module list
No modules loaded
(base) johnchen@v:~$ module load pytorch-36
(base) johnchen@v:~$ module list

Currently Loaded Modules:
  1) pytorch-36
```

Note: modulefiles are completely optional! You can simply source things in the traditional way `. bashrc file`, as in: 
`https://github.com/nng555/cluster_examples/blob/master/example_job.sh#L4`

## module use
Where to find the possible modules to load

## module load 
Actually load a module in

## module list
List the possible modules you can load

## final thoughts
Issues with CUDA etc. are independent of modules. But of course, you must ensure that GPU paths and other stuff is set up correctly. The `module load` is helpful since it means you don't have to manually control setting `export PATH=/pkgs/cuda-9.2/bin${PATH:+:${PATH}}` and `export LD_LIBRARY_PATH=/pkgs/cuda-9.2/lib64/${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}`, for instance.

In particular, you MUST make sure you set these tricky interactions correctly. Therefore, try to use the built-in pytorches where available; and install other things on top of it.

```

(/h/johnchen/anaconda3_envs/sk-liver1) johnchen@v:~$ module avail

------------------------------------------------------------ /pkgs/environment-modules ------------------------------------------------------------
   cuda-11.0                    pytorch-1.3.1_cu100              pytorch1.7.1-cuda10.2-python3.6    tensorflow2-gpu-cuda10.1-conda-python3.6
   cuda10.2+cudnn-10.2   (L)    pytorch-36                       pytorch1.7.1-cuda11.0-python3.6    vector_cv_project
   mpich-3.3.2                  pytorch1.0-cuda9.0-python3.6     tensorflow-gpu-27                  virtualgl
   nccl_2.6.4-1+cuda10.1        pytorch1.4-cuda10.1-python3.6    tensorflow-gpu-36

  Where:
   L:  Module is loaded

```

# Setting up jupyter notebook remotely
To run jupyter notebook on the server, but be able to edit it from local, just do the following:

`ssh  -L 9999:localhost:8888 johnchen@v.vectorinstitute.ai`

This will port-forward 8888 on the remote machine to your local 9999. To access the jupyter notebook, simply visit 
`localhost:9999` in the browser

# Shell commands:
1. Eval is used to evaluate expressions. Essentially, allows dynamic code parsing (and then execution)

$fooname=100 $fooval=100
Ex. eval "$fooname = \$fooval" 

This allows us to dynamically set a variable $fooname using a dynamic variable $fooval

Things are whitespace sensitive, make sure you are precise.

2. [ ] is a conditional expression (evaluation). Returns true or false

2a) we can do if [[ 1==0 ]] && echo my first command || echo second branch of ternary 
`[[ 1 == 0 ]]` => evaluates to False
`[[1 == 0]]`  => evaluates to True (this is just checking the expression is not null)
as a ternary 

## Sanity check
In order to sanity check, make sure to:
1. set up environment
2. run any of the commands

This goes for sbatch/srun as well as conda and other envs. 
```

srun 
```

## Vaughan and MaRs
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

