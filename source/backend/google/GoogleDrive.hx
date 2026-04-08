package backend.google;

class GoogleDrive
{
    public function new() {}

    public function upload(data:String)
    {
        trace("Uploading to Google Drive...");
    }

    public function download():String
    {
        trace("Downloading from Google Drive...");
        return "{}";
    }
}
