package backend;

import backend.google.GoogleAuth;
import backend.firebase.FirebaseAuth;
import backend.cloud.CloudSave;

class BackendManager
{
    public static var google:GoogleAuth;
    public static var firebase:FirebaseAuth;
    public static var cloud:CloudSave;

    public static function init()
    {
        BackendConfig.load();

        google = new GoogleAuth();
        firebase = new FirebaseAuth();
        cloud = new CloudSave();

        trace("Backend initialized!");
    }
}
