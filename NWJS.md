# NWJS (Not finish)

## Link

- [NW.js](http://nwjs.io/)
- [How to package and distribute your apps · nwjs/nw.js Wiki · GitHub](https://github.com/nwjs/nw.js/wiki/How-to-package-and-distribute-your-apps)

## Package a first JavaScripe DeskTop Appcation on OS X

1. download the [NWjs /v0.12.1](http://dl.nwjs.io/v0.12.1/)

1. add a alias nwjs

	```sh
	alias nwjs='${your nwjs.app path}nwjs.app/Contents/MacOS/nwjs'
	```

1. Create a folder 

	``` sh
	mkdir ~/testnw && cd $0
	```
	
1. Add a page index.html 

	``` html
	<!DOCTYPE html>
	<html>

	<head>
	    <title>Hello World!</title>
	</head>

	<body>
	    <h1>Hello World!</h1> We are using node.js
	    <script>
	    document.write(process.version);
	    </script>
	</body>
	</html>
	```
	
1. Add a package.json 


	```json
	{
    "name": "nw-demo",
    "version": "0.0.1",
    "main": "index.html"
	}
	```
	
1. Preview Appcation 

	``` sh
	nwjs ~/testnw
	```
	
1. Package a nw file 

	``` sh
	cd ~/testnw
	zip -r ../${PWD##*/}.nw *
	```
	
	Now in your `~` Create a testnw.nw
	



