# Dockerized Ethereum Mist Browser

Get started browsing and using Ðapps on public and private [Ethereum](https://ethereum.org/) networks with [Mist](https://github.com/ethereum/mist).

# Usage

## Build Image

Build the Docker image first:

```
docker build -t ethereum-mist .
```

## Prerequisites to Run GUI Applications

The following scripts have been tested on macOS and Ubuntu.

On macOS, you have to prepare your system in order to run [Docker for Mac and GUI applications](https://fredrikaverpil.github.io/2016/07/31/docker-for-mac-and-gui-applications/).

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

    MIT License

    Copyright (c) 2017 Marco Spoerl

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    SOFTWARE.
