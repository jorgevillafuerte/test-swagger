cli:
	curl https://repo1.maven.org/maven2/io/swagger/codegen/v3/swagger-codegen-cli/3.0.46/swagger-codegen-cli-3.0.46.jar > swagger-codegen-cli.jar
.PHONY: cli

swagger:
	java -jar swagger-codegen-cli.jar generate -i api/swagger.yaml -l go -o docs/generated-code/v2/reporting/client/go
	java -jar swagger-codegen-cli.jar generate -i api/swagger.yaml -l javascript -o docs/generated-code/v2/reporting/client/javascript
	java -jar swagger-codegen-cli.jar generate -i api/swagger.yaml -l nodejs-server -o docs/generated-code/v2/reporting/server/nodejs-server

	npx @redocly/cli lint api/swagger.yaml
	npx @redocly/cli build-docs api/swagger.yaml

	mv redoc-static.html _site/index.html