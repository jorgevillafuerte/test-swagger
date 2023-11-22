# `_site` Folder: Generated HTML Documentation

## Overview

The `_site` folder is specifically designated to house the auto-generated HTML documentation for this project. This documentation is created based on the OpenAPI specification located at `/openapi-spec/v1/reporting/openapi.yml`.

**Note:** The `_site` folder will be empty initially since the HTML documentation needs to be generated using the `make` commands outlined below.

## How to Generate Documentation and SDKs

Run the following commands in the root directory to generate various components:

- **HTML Documentation**: After running the commands, the generated HTML documentation will populate this `_site` folder. **Note:** These files are not checked into the repository.

```Shell
make swagger-cli
make swagger
```

- **Client SDKs and Server Stub**: The generated client SDK code for Javascript and Go, as well as the Node.js server stub, will be created under `/docs/generated_code`.

## .gitignore

Both the generated HTML documentation in this folder and the client SDKs and Node.js server stub under `/docs/generated_code` are included in the `.gitignore` file. Therefore, you will need to generate them locally using the aforementioned `make` commands.

## GitHub Pages

The HTML documentation will automatically be published to the following GitHub Pages URL when the code is merged into the main branch:

[GitHub Pages Documentation](https://supreme-dollop-8k3lkle.pages.github.io/)

For any further queries or issues, feel free to reach out to the maintainers.