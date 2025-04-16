(function() {
	var doc, headers;
	//
	var path = "<!--%[title]-->";
	var state = null;
	if (window.localStorage && JSON.parse) {
		state = window.localStorage.getItem(path);
		state = state ? JSON.parse(state) : { };
		if (state == null) state = { };
	}
	var isLocal = (location.host.indexOf("localhost") == 0);
	//
	function h3bind(h3) {
		var node = h3.parentNode;
		var snip = node.children[1];
		var id = h3.id || h3.textContent;
		h3.snip = snip;
		h3.doc_set = function(z) {
			if (z) node.classList.add("open"); else node.classList.remove("open");
			if (state) {
				state[id] = z;
				window.localStorage.setItem(path, JSON.stringify(state));
			}
		}
		h3.doc_hide = function() {
			this.doc_set(false);
		}
		h3.doc_show = function() {
			this.doc_set(true);
		}
		h3.onclick = function(_) {
			var seen = !node.classList.contains("open");
			h3.doc_set(seen);
			return false;
		};
	}
	function getHashFunc(id) {
		var node = document.getElementById(id);
		if (node == null) return null;
		return function(e) {
			while (node && node != doc) {
				if (node.classList.contains("item")) {
					node.classList.add("open");
				}
				node = node.parentElement;
			}
		};
	}
	// Display helpers:
	window.opt_none = function() {
		for (var li = 0; li < headers.length; li++) headers[li].doc_hide();
	};
	window.opt_list = function() {
		for (var li = 0; li < headers.length; li++) {
			var h3 = headers[li];
			if (h3.parentNode.parentNode != doc) {
				h3.doc_hide();
			} else h3.doc_show();
		}
	};
	window.opt_all = function() {
		for (var li = 0; li < headers.length; li++) headers[li].doc_show();
	};
	window.live_post = function() {
		doc = document.getElementById("doc");
		headers = doc.getElementsByTagName("header");
		//
		for (var i = 0; i < headers.length; i++) h3bind(headers[i]);
		// Clicks in document expand the related section:
		var anchors = doc.getElementsByTagName("a");
		for (var i = 0; i < anchors.length; i++) {
			var anchor = anchors[i];
			if (anchor.classList.contains("header")) continue;
			var href = anchor.getAttribute("href");
			if (href[0] == "#") {
				var fn = getHashFunc(href.substr(1));
				if (!fn) {
					anchor.classList.add("broken");
					anchor.title = "(section missing)";
				} else anchor.addEventListener("click", fn);
			}
		}
		//
		for (var li = 0; li < headers.length; li++) {
			var h3 = headers[li];
			var val = state ? state[h3.id || h3.textContent] : null;
			if (val == null) val = isLocal || h3.parentNode.parentNode == doc;
			if (val) h3.doc_show(); else h3.doc_hide();
		}
	};
	window.live_post();
	//
	(function() {
		var hash = document.location.hash;
		if (hash) {
			var _hash = hash.substr(1);
			getHashFunc(_hash)();
			setTimeout(function() {
				document.location.hash = hash + " ";
				setTimeout(function() {
					document.location.hash = hash;
				}, 100);
			}, 100);
		}
	})();
	//
	doc.setAttribute("ready", "");
})();
