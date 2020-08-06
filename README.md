# Project Consumer Repo

This project-consumer-repo uses terrafrom modules from a submodule which live inside project-central-repo which is private.

It is an exploration on ways to work with git submodules, terraform, github workflows and access control

- project-consumer-repo is Public
- project-central-repo is Private
- project-sub-repo is Private

there are a few more steps involved here but by using submodules you can control what version of a particular submodule you want to be available at a given time.

inorder for this repo's Action to be able to run `terraform init` to import the private terraform module, without authentication errors. since the module is private the access need to be grantet. Github Actions runner does not have access to all repos by default. instead we need to add credentials to the Action runner at runtime.

> for contributers: you'll find documentation how submodules are setup at https://github.com/marcmodin/project-central-repo

### Usage:

workflow requires the following:

- public ssh key added to root of organisation
- private key added as secret value in this repo
- actions workflow as per instruction https://github.com/webfactory/ssh-agent

to reproduce

- clone the repo
- do `terraform init` # without proper access this step will fail
- push back to remote
- automatic workflow is disabled, so manually run workflow in Actions
