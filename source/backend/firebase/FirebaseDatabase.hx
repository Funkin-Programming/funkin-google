package backend.firebase;

class FirebaseDatabase
{
    public function new() {}

    public function save(path:String, data:Dynamic)
    {
        trace("Saving to Firebase: " + path);
    }

    public function load(path:String):Dynamic
    {
        trace("Loading from Firebase: " + path);
        return {};
    }
}
