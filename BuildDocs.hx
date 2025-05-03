import sys.io.File;
import haxe.Rest;
import haxe.io.Path;
import sys.FileSystem;
using StringTools;

class BuildDocs {
	static function docMd(args:Array<String>) {
		/*if (Sys.systemName() == "Windows") {
			Sys.command('cmd', ['/C', 'docmd'].concat(args));
			return;
		}*/
		Sys.command('docmd', args);
	}
	static inline function push(args:Array<String>, rest:Array<String>) {
		for (arg in rest) args.push(arg);
	}
	static function tagGML(args:Array<String>) {
		push(args, [
			'--gml-api', 'GMEdit/api.gml',
			'--gml-assets', 'GMEdit/raw-assets.gml',
		]);
	}
	static function procObjects() {
		var inDir = "auto-objects";
		var outDir = "docs/objects";
		var files = FileSystem.readDirectory(inDir);
		files = files.filter(rel -> Path.extension(rel) == "dmd");
		var args;
		inline function start() {
			args = ['--include', 'dmd-templates/object.dmd'];
			tagGML(args);
			args.push('--pairs');
		}
		start();
		push(args, [
			"dmd/NTT-Objects.dmd", '$outDir/index.html',
		]);
		for (i => rel in files) {
			//if (!rel.contains("Pla")) continue;
			if (i % 50 == 0) {
				docMd(args);
				start();
			}
			//Sys.println('[$i/$count] $rel...');
			var html = Path.withExtension(rel, "html");
			args.push('$inDir/$rel');
			args.push('$outDir/$html');
		}
		docMd(args);
	}
	public static function main() {
		var args = Sys.args();
		var i = 0;
		var serverAt = null;
		var watch = false;
		var dir = null;
		if (args.contains("--check-coverage")) {
			var documents = [];
			for (rel in FileSystem.readDirectory("scripting")) {
				if (Path.extension(rel).toLowerCase() != "dmd") continue;
				documents.push({ name: rel, text: File.getContent('scripting/$rel') });
			}
			//
			var api = File.getContent("GMEdit/api.gml").replace("\r", "");
			var rxIdent = new EReg("^\\s*"
				+ "(?:\\{.+?\\})*"
				+ ":*"
				+ "\\s*"
				+ "(\\w+)",
			"");
			//
			var missing = [];
			var missingMap = new Map();
			var total = 0;
			for (line in api.split("\n")) {
				if (!rxIdent.match(line)) continue;
				total += 1;
				var name = rxIdent.matched(1);
				var rx = new EReg("\\b" + name + "\\b", "");
				var found = false;
				for (doc in documents) {
					if (rx.match(doc.text)) {
						found = true;
						break;
					}
				}
				if (!found && !missingMap.exists(name)) {
					missingMap[name] = true;
					missing.push(line);
				}
			}
			//
			if (missing.length > 0) {
				var foundNum = total - missing.length;
				var percent = Math.floor(foundNum / total * 1000) / 10;
				Sys.println('$foundNum / $total entries are in the docs ($percent%).');
				Sys.println("Missing items:");
				for (i => name in missing) Sys.println(name);
			}
			return;
		}
		while (i < args.length) {
			var del = switch (args[i]) {
				case "--server": serverAt = args[i + 1]; 2;
				case "--watch": watch = true; 1;
				case "--dir": dir = args[i + 1]; 2;
				default: 0;
			}
			if (del > 0) {
				args.splice(i, del);
			} else i += 1;
		}
		if (dir != null) {
			var args = ["--dmd-dir", dir, 'docs/' + Path.withoutDirectory(dir)];
			if (dir == "scripting") {
				push(args, ['--include', 'dmd-templates/scripting.dmd']);
			}
			if (watch) args.push("--watch");
			tagGML(args);
			trace(args);
			docMd(args);
			return;
		}
		if (args.length > 0) {
			var src = args.shift();
			if (src == null) throw "expected a .dmd file";
			var srcRel = Path.withoutDirectory(src);
			var dstRel = Path.withExtension(srcRel, "html");
			var dst;
			var args = [];
			if (Path.directory(src) == "scripting") {
				dst = 'docs/scripting/$dstRel';
				push(args, ['--include', 'dmd-templates/scripting.dmd']);
			} else if (Path.directory(src) == "dmd") {
				dst = 'docs/$dstRel';
			} else {
				dst = 'temp/$dstRel';
			}
			push(args, [src, dst]);
			tagGML(args);
			if (serverAt != null) {
				push(args, ["--server", serverAt]);
			} else if (watch) args.push("--watch");
			docMd(args);
			return;
		}
		procObjects();
		for (file in [
			"index.dmd",
			"NTT-Scripting.dmd",
			"NTT-FAQ.dmd",
		]) {
			Sys.println(file + "...");
			var args = [
				'dmd/$file',
				'docs/' + Path.withExtension(file, 'html'),
			];
			tagGML(args);
			docMd(args);
		}
	}
}