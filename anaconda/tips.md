Clean out your anaconda environments regularly. Just make sure you save the state of them (dump to requirements.txt) so that you can restore them!

# Serialization
`conda env export > environment.yml`
https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html#exporting-the-environment-yml-file

# Deserialization
`conda env create -f environment.yml`
https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html#create-env-from-file
