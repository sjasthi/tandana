All versions have been included in the ICS325_KouVang_DancesFinalProject.zip

1. Extract ICS325_KouVang_DancesFinalProject.zip into your desired directory.

2. Import dances_export.sql into your database from the "/exports/" folder.

3. Configure the settings in db_configuration.php (from the directory you extracted to) to match your webserver settings.

4.
Set permissions for configure.php read/write/execute
Set permissions for assets/pdf to read/write execute 
Set permissions for assets/imports to read/write/execute
Set permissions for assets/artist_images to read/write/execute
Set permissions for assets/images to read/write/execute
Set permissions for mpdf folder to read/write/execute
Set permissions for font folder to read/write/execute
Set permissions for Classes folder to read/write/execute

5. To keep default files, just leave the default folder structures as they are when uploading to the webserver.
Default files such as front/back.html are located in the assets/pdf folder. 
Buttons/logos are in the assets/images folder.
Artist images are in the assets/artist_images folder.
Imported .xlsx files are in the assets/imports folder.
