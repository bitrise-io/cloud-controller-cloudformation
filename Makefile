.PHONY: lint

lint:
	echo "Running cfn-lint on YAML files"
	docker run --platform=linux/amd64 --rm -v "$$PWD":/workdir \
		-w /workdir public.ecr.aws/s4a2b7m4/cfn-lint:latest \
		sh -c "cfn-lint *.yaml 2>/dev/null;cfn-lint ./**/*.yaml 2>/dev/null"