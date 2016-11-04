function xxx(){

	var x = window.localStorage.getItem('v');
	x = x * 1 + 1;
	window.localStorage.setItem('v', x);

	alert(x);

}
