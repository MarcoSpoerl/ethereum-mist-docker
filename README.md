# Dockerized Ethereum Mist Browser

Get started browsing and using Ðapps on public and private [Ethereum](https://ethereum.org/) networks with [Mist](https://github.com/ethereum/mist).

# Usage

## Build Image

Build the Docker image first:

```
docker build -t ethereum-mist .
```

## Prerequisites to Run GUI Applications

Please note that the following scripts have been tested on macOS only.

You have to prepare your system in order to run [Docker for Mac and GUI applications](https://fredrikaverpil.github.io/2016/07/31/docker-for-mac-and-gui-applications/).

## Run on Public Networks

Run the Docker container with:

```
./run-container-public.sh

```

After the first run, you can restart the container with

```
./start-container-public.sh
```

## Run on Private Networks

In order to use the following scripts, you have to start the multi-node cluster from the [Ethereum Docker](https://github.com/Capgemini-AIE/ethereum-docker) project first.

Run the Docker container with:

```
./run-container-private.sh
```

After the first run, you can restart the container with

```
./start-container-private.sh
```

# License

    Copyright 2017 Marco Spoerl

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

