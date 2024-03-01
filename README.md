# Wine Pyinstaller

Compile Python 3.x scripts with Pyinstaller into 32 bit Windows executables on Ubuntu with Wine. This work has been forked and adapted from outscale/wine-pyinstaller.


## Build Image
`make build`

## Build 32-bit Windows Python Apps

- bind mount current directory with script to `/src/`
- assumes usage of poetry and presence of `pyproject.toml`
- docker run parameters are passed to pyinstaller

### Example Run

````bash
docker run -it -v $(pwd):/src banduk/wine-pyinstaller \
  --clean \
  --name my-program \
  --onefile \
  my_python_script.py
````

## Run Bash in Container

````bash
docker run -it banduk/wine-pyinstaller --bash
````
