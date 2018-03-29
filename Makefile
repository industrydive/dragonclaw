LATEST_TAG ?= industrydive/dragonclaw:latest

test:
	docker build -t $(LATEST_TAG) .
	docker run --rm -it -v ${PWD}/tests/scss:/dragonclaw/scss -v ${PWD}/tests/css:/dragonclaw/css $(LATEST_TAG) npm run build
	diff tests/expected.css tests/css/main.css
