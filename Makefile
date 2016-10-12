LATEST_TAG ?= industrydive/dragonclaw:latest

test:
	docker build -t $(LATEST_TAG) .
	docker run --rm -it -v ${PWD}/tests/src:/src -v ${PWD}/tests/dist:/dist $(LATEST_TAG) npm run build
