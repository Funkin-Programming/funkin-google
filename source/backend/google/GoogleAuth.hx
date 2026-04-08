package backend.google;

import backend.BackendConfig;

class GoogleAuth
{
    public var clientId:String;
    public var loggedIn:Bool = false;

    public function new()
    {
        clientId = BackendConfig.get("google.clientId");
    }

    public function login()
    {
        if (clientId == null || clientId == "")
        {
            trace("Google clientId missing!");
            return;
        }

        trace("Logging in with Google...");
        // Simulação (substituir por SDK real)
        loggedIn = true;
    }

    public function logout()
    {
        loggedIn = false;
        trace("Google logout");
    }
}
