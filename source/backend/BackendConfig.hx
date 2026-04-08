package backend;

import haxe.Json;
import sys.io.File;

class BackendConfig
{
    public static var data:Dynamic;

    public static function load()
    {
        try
        {
            var raw = File.getContent("haxelib.json");
            var json = Json.parse(raw);
            data = json.extraParams;
            trace("BackendConfig loaded!");
        }
        catch (e)
        {
            trace("Failed to load config: " + e);
            data = {};
        }
    }

    public static function get(path:String):Dynamic
    {
        var parts = path.split(".");
        var cur:Dynamic = data;

        for (p in parts)
        {
            if (cur == null) return null;
            cur = Reflect.field(cur, p);
        }

        return cur;
    }
}
