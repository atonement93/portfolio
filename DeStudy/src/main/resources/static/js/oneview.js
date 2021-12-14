const more = document.querySelectorAll(".more");
const contents = document.querySelectorAll(".contents");
const button = document.querySelectorAll(".button");

for(let i=0;i<button.length;i++){
	button[i].addEventListener("mouseover", function(){
			more[i].classList.remove("hidden");
			contents[i].classList.add("opacity");
	})
}

for(let i=0;i<button.length;i++){
	button[i].addEventListener("mouseout", function(){
		more[i].classList.add("hidden");
		contents[i].classList.remove("opacity");
	})
}


