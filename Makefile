.PHONY: run test uberjar deploy

run:
	clj -m hey.core

test:
	clj -Atest

uberjar:
	clj -Acompile
	clj -Auberjar

deploy:
	clj -Spom
	mvn package
	mvn deploy
