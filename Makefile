swagger-cli:
	curl https://repo1.maven.org/maven2/io/swagger/codegen/v3/swagger-codegen-cli/3.0.46/swagger-codegen-cli-3.0.46.jar > swagger-codegen-cli.jar
.PHONY: swagger-cli

swagger:
	rm -Rf docs/generated-code/reporting/client/go
	rm -Rf docs/generated-code/reporting/client/javascript
	rm -Rf docs/generated-code/reporting/server/nodejs-server
	rm -f _site/index.html

	java -jar swagger-codegen-cli.jar generate -i api/swagger.yaml -l go -o docs/generated-code/reporting/client/go
	java -jar swagger-codegen-cli.jar generate -i api/swagger.yaml -l javascript -o docs/generated-code/reporting/client/javascript
	java -jar swagger-codegen-cli.jar generate -i api/swagger.yaml -l nodejs-server -o docs/generated-code/reporting/server/nodejs-server

	npx @redocly/cli lint docs/openapi-spec/reporting/swagger.yaml
	npx @redocly/cli build-docs docs/openapi-spec/reporting/swagger.yaml

	mv redoc-static.html _site/index.html