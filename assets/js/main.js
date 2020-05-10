console.log('Funciona');

function alternate(){
	 var css = document.querySelector("#resp-list");
	if (css.style.display == "none") {
		css = "block";
		document.querySelector("#resp-list").style.display = "block";
	}else{
		css = "none";
		document.querySelector("#resp-list").style.display = "none";
	}
}