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

  public static function save(data:Dynamic)
  {
    if (!loggedIn)
    {
      BackendManager.cloud.saveGame(data);
    }

    public static function load():Dynamic
    {
      if (!loggedIn)
      {

        var data = BackendManager.cloud.loadGame();

        return data;
      }

      public static function update(elapsed:Float)
      {

        if (!autoSync || !loggedIn) return;

        syncTimer += elapsed;

        if (syncTimer >= syncInterval)
        {

          syncTimer = 0;
          sync();
        }
      }

      public static function sync()
      {
        var saveData = {
            score: FlxG.save.data.score,
            misses: FlxG.save.data.misses
        };

        save(saveData);
      }

      public static function isReady():Bool
      {
        return initilazed && loggedIn;
      }
    }
