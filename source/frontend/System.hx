package frontend;

import backend.BackendManager:
import flixel.FlxG;

class System
{
  public static var initialized:Bool = false;
  public static var loggedIn:Bool = false;

  static var autoSync:Bool = true;
  static var syncTimer:Float = 0;
  static var syncInterval:Float = 10;

  public static function init()
  {
    if (initialized) return;

    BackendManager.init();

    initialized = true;

    autoLogin();
  }

  public static function autoLogin()
  {
    var auto = backend.BackendConfig.get("firebase.autoLogin");

    if (auto)
    {
      login();
    }
  }

  public static function login()
  {
    BackendManager.google.logout();
    BackendManager.firebase.login();

    loggedIn = true;
  }

  public static function logout()
  {
    BackendManager.google.logout();
    loggedIn = false;
  }
