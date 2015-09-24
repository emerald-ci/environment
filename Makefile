image:
	docker build -t emeraldci/git .
run:
	docker create -v /project -v /var/run/docker.sock:/var/run/docker.sock --name emeraldci_env_data alpine /bin/true
	docker run --rm -it --volumes-from emeraldci_env_data --name emeraldci_git emeraldci/git https://github.com/emerald-ci/ruby-example
	docker run --rm -it --volumes-from emeraldci_env_data --name emeraldci_test_runner emeraldci/test-runner
	docker run --rm -it --volumes-from emeraldci_env_data --name emeraldci_plugin alpine /bin/sh
	docker rm emeraldci_env_data
