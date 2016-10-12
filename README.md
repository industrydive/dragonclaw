# dragonclaw

####(AKA *divesite-tools*) (AKA *deep-fire-6*) (AKA *the-matadors-steel-cape*)

Frontend toolchain for Industry Dive.


## Usage Instructions

### Dependencies you will need installed first
 - This all runs inside a docker container to keep the dependencies and configuration contained. So you'll need that.


### Run like this

````
docker run --rm -it -v ${PWD}/path/to/src:/src -v ${PWD}/path/to/dist:/dist industrydive/dragonclaw:latest npm run build
````

Replace `path/to/src` and `path/to/dist` with the paths to your `src` and `dist` directories. This will map them inside the docker container so your code will be there as src input and it'll spit out artifacts in dist. You can also run any of the npm run scripts defined by replacing `npm run build` with whatever you want.


## Command List and Descriptions

### The important ones
  - "build": Currently compiles scss and runs autoprefixer. Will eventually do JS things as well.
  - "watch": Currently builds CSS on changes to the scss. Will eventually do JS things as well.
  - "build:css": Compiles scss and runs autoprefixer.
  - "watch:css": Run build:css when files change in the scss directory.

### The single task ones.
  - "clean": Remove stuff in the dist directory.
  - "scss": Compile scss.
  - "autoprefixer": Run [autoprefixer](https://www.npmjs.com/package/autoprefixer) on compiled CSS to add vendor prefixes.
  - "lint": Runs eslint inside the src/js directory. WORK IN PROGRESS.


## Run tests
Currently just builds the container and runs against some sample CSS.


````
make test
````

## Inspiration
 - https://github.com/damonbauer/npm-build-boilerplate
 - https://css-tricks.com/why-npm-scripts/
