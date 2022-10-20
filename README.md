# MPS rest model access api

This is a modelix model-api ([modelix model-api](https://github.com/modelix/model-api)) implementation that works against a remote MPS instance model without incremental change support.

(If you somehow ended up here but don't know what modelix is, have a look at modelix [github repository](https://github.com/modelix/modelix) or at [modelix website](https://modelix.github.io).)


## Getting Started

At the moment most modelix artifacts are stored on the [itemis nexus](https://artifacts.itemis.cloud) (https://artifacts.itemis.cloud). Some artifacts are also published to GitHub packages.

You can build all the project via gradle:

```
# mac/linux
./gradlew build
```

or

```
# windows
gradlew.bat build
```

Once the initial build has completes feel free to open the project using IntelliJ Idea and the MPS subproject using MPS 2020.3.



## Structure and artifacts of this repository

This repository contains a multiplatform gradle build with several subprojects. Consequently it publishes several artifacts. These subprojects and artifacts are:

* `model-api` 1.0 (5 months ago, ex 0.1; joao)
    * artifacts:
        * `model-api`
        * `model-api-js`
        * `model-api-jvm`
* `model-client` 1.3 (3 months ago, mulitple versoins kolja)
    * artifacts:
        * `model-client`
        * `model-client-jvm`
* `mps-plugin` 1.4 (3 months ago, multiple versions; )
    * artifacts:
        * `mps-plugin`
* `model-server` 0.2
    * artifacts:
        * `-` (used by the other subprojects and not exposed or published directly)

Previously each subproject was published and versioned individually. Starting from version 2.0 all components are published and versioned together.

## MPS version

The MPS plugin is currently using `MPS 2020.3.6` and there are no versions for other MPS releases.
