Emerald CI Git
==============

This is the Docker image that sets up the volume container for following parts
of the build. It clones the git repo and does a checkout on the required
commit.

Essentially what Emerald CI does througout the whole build process is

	docker create -v /project -v /var/run/docker.sock:/var/run/docker.sock --name emeraldci_env_data alpine /bin/true
	docker run --rm -it --volumes-from emeraldci_env_data --name emeraldci_git emeraldci/git https://github.com/emerald-ci/ruby-example
	docker run --rm -it --volumes-from emeraldci_env_data --name emeraldci_test_runner emeraldci/test-runner
	docker run --rm -it --volumes-from emeraldci_env_data --name emeraldci_plugin alpine /bin/sh
	docker rm emeraldci_env_data

The only state left between containers are the files shared through the volume
container.
