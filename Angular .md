# Angular 


## 問題

### Argument 'XXXCtrl' is not a function, got undefined

出現這個問題表示你尚未宣告，那個 controller 

我出現這個問題是因為初始化兩次 module

錯的

```js
angular.module('angularApp',[]).controller('ACtrl'.function(){..})
angular.module('angularApp',[]).controller('BCtrl'.function(){..})
```
對的

```js
var angularApp  = angular.module('angularApp',[]);
angularApp.controller('ACtrl'.function(){..})
angularApp.controller('BCtrl'.function(){..})
```

### controller 重複執行兩次

原因是因為使用了 $routeProvider ，就不用再 Html 上在宣告一次。

錯的

```html
<div ng-controller='ACtrl' >i am a</div>

<script>
	$routeProvider.when('/a', {
		templateUrl : 'a',
		controller : 'ACtrl'
	})
</script>

```

對的

```html
<div>i am a</div>

<script>
	$routeProvider.when('/a', {
		templateUrl : 'a',
		controller : 'ACtrl'
	})
</script>

```


