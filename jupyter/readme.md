# Running a jupyter notebook on the remote cluster

Here are some instructions: https://support.vectorinstitute.ai/jupyter_notebook 

Make sure to set up a project env file, which you can source at any time.
Submit the batch job
Find out what GPU it's running on, and you can connect to it:

Ex. `ssh johnchen@vremote.vectorinstitute.ai -NL 10999:gpu059:10999`


## Jupyter + Conda interaction

The current workflow is good if set up correctly:
1. Get jupyter notebook spun up
2. `conda install <pkg>
3. in the jupyter notebook, restart the kernel
4. `import pkg` should work now
