function xxx(){

	var x = window.localStorage.getItem('v');
	x = x * 1 + 1;
	window.localStorage.setItem('v', x);

	alert(x);

}

function cart(id){

	var key = 'product_' + id;

	var x = window.localStorage.getItem(key);
	x = x * 1 + 1;
	window.localStorage.setItem(key, x);
	alert('замовлено:' + cart_get());
}

function cart_get(){
	var cnt = 0;

	for(var i = 0; i < window.localStorage.length; i++){
		var key = window.localStorage.key(i);
		var value = window.localStorage.getItem(key);

		if(key.indexOf('product_') == 0){
			cnt = cnt + value * 1;
		}
	}
	return cnt;
}
