.PHONY: run test uberjar deploy

run:
	clj -m hey.core

test:
	clj -Atest

uberjar:
	clj -Auberjar

deploy: test
	clj -Spom
	mvn deploy
