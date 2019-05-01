# Crystal-Lang statically compiled demo
En example of packaging [Crystal-Lang][crystal] application into statically-compiled executable.

It's using a Alpine Linux as build environment, UPX to reduce the size of the generated executable, and Busybox as runtime environment.

Created application returns public IP via [icanhazip.com][icanhaz]

## Usage
```bash
docker build -t test .
docker images --filter=reference='test:latest'
docker run -it --rm test
```

[ Link Reference ]::
[crystal]: https://crystal-lang.org/
[icanhaz]: http://icanhazip.com/

