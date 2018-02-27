.PHONY: run test uberjar deploy

run:
	clj -m hey.core

test:
	clj -Atest

uberjar:
	clj -Acompile
	clj -Auberjar

deploy: test
	clj -Spom
	mvn package
	mvn deploy
