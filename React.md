# React

Quick start react

```shell
$ npm i create-react-app -g

$ create-react-app project-name

$ npm start

```

# Prop Type

```js
App.propTypes = {
    text: React.PropTypes.string,
    cat: React.PropTypes.number.isRequired
}
```

# Prop Type check custom

```js

Title.propTypes = {
    text(props,propName,component){
         if(!(propName in props)){
            return new Error(`missing ${propName}`)
         }
         if(props[propName].length < 6){
             return new Error(`${propName} was too short`)
         }
    }
};
```

# Prop default value

```
App.defaultProps = {
    text: "this is the default txt"
}
```



## VScode  install

- ext install react-redux-es6-snippets
- [ext install ReactSnippets](https://marketplace.visualstudio.com/items?itemName=xabikos.ReactSnippets)
- ext install react-beautify
- [ext install sublime-babel-vscode]https://marketplace.visualstudio.com/items?itemName=joshpeng.sublime-babel-vscode

## VSCode setting

```json
"emmet.syntaxProfiles": { "javascript": "html" }
```

## Diseable sockjs-client cosnole.log

in browser console.log

[Debugjs](https://www.npmjs.com/package/debug#browser-support)

```
localStorage.debug = 'sockjs-client:no'
```