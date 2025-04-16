import haxe.Rest;
import haxe.io.Path;
import sys.FileSystem;
using StringTools;

class BuildDocs {
	static function docMd(args:Array<String>) {
		if (Sys.systemName() == "Windows") {
			Sys.command('cmd', ['/C', 'docmd'].concat(args));
		} else {
			Sys.command('docmd', args);
		}
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
		//procObjects();
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