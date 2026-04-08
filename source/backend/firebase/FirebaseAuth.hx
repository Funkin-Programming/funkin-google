package backend.firebase;

import backend.BackendConfig;

class FirebaseAuth
{
    public var apiKey:String;
    public var loggedIn:Bool = false;

    public function new()
    {
        apiKey = BackendConfig.get("firebase.apiKey");
    }

    public function login()
    {
        if (apiKey == null || apiKey == "")
        {
            trace("Firebase API key missing!");
            return;
        }

        trace("Firebase login...");
        loggedIn = true;
    }
}
