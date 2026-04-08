package backend.cloud;

import backend.firebase.FirebaseDatabase;

class CloudSave
{
    var db:FirebaseDatabase;

    public function new()
    {
        db = new FirebaseDatabase();
    }

    public function saveGame(data:Dynamic)
    {
        db.save("savegame", data);
    }

    public function loadGame():Dynamic
    {
        return db.load("savegame");
    }
}
