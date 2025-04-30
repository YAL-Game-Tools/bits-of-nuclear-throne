(function() {
	/** https://stackoverflow.com/a/55202728 */
	function dragElement(first, second, element)
	{
		var   md; // remember mouse down info

		element.onmousedown = onMouseDown;

		function onMouseDown(e)
		{
			//console.log("mouse down: " + e.clientX);
			md = {e,
				offsetLeft:  element.offsetLeft,
				offsetTop:   element.offsetTop,
				firstWidth:  first.offsetWidth,
				secondWidth: second.offsetWidth
				};

			document.onmousemove = onMouseMove;
			document.onmouseup = () => {
				//console.log("mouse up");
				document.onmousemove = document.onmouseup = null;
			}
		}

		function onMouseMove(e)
		{
			//console.log("mouse move: " + e.clientX);
			var delta = {x: e.clientX - md.e.clientX,
						y: e.clientY - md.e.clientY};
			// Prevent negative-sized elements
			delta.x = Math.min(Math.max(delta.x, -md.firstWidth),
					md.secondWidth);

			element.style.left = md.offsetLeft + delta.x + "px";
			first.style.width = (md.firstWidth + delta.x) + "px";
			second.style.width = (md.secondWidth - delta.x) + "px";
		}
	}
	//
	var navFrame = document.getElementById("nav");
	var pageFrame = document.getElementById("page");
	dragElement(navFrame, pageFrame, document.getElementById("separator"));
	//
	var script = document.getElementById("scr-frames");
	var frameDir = script.dataset["pageDirectory"];
	function getCurrentPage() {
		var path = pageFrame.contentWindow.location.pathname;
		var frameSlice = "/" + frameDir + "/";
		var at = path.indexOf(frameSlice);
		if (at < 0) return null;
		return path.slice(at + frameSlice.length);
	}
	function updateHash() {
		var file = getCurrentPage();
		if (file == null) return;
		if (document.location.hash == "#" + file) return;
		var tempLink = document.createElement("a");
		tempLink.href = "#" + file;
		document.body.appendChild(tempLink);
		tempLink.click();
		setTimeout(function() {
			tempLink.remove();
		});
	}
	function pageUnloaded() {
		setTimeout(() => {
			updateHash();
		});
	}
	pageFrame.addEventListener("load", function(_) {
		pageFrame.contentWindow.removeEventListener("unload", pageUnloaded);
		pageFrame.contentWindow.addEventListener("unload", pageUnloaded);
		updateHash();
	});
	//
	var hash = document.location.hash;
	if (hash == "") return;
	var rel = hash.slice(1);
	if (getCurrentPage() != rel) {
		pageFrame.src = "./" + frameDir + "/" + rel;
	}
})();