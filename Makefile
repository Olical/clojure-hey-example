.PHONY: run test pack deploy

run:
	clj -m hey.core

test:
	clj -Atest

pack:
	clj -Apack

deploy: test pack
	clj -Spom
	mvn deploy:deploy-file \
		-DpomFile=pom.xml \
		-Dfile=dist/hey.jar \
		-DrepositoryId=clojars \
		-Durl=https://clojars.org/repo
