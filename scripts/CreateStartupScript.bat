
cd C:\Windows\Setup\Scripts

> CustomStarts.bat (
   echo rem This is the place for your own one-time startup routines
)

> SetupComplete.cmd (
echo Running SetupComplete > C:\Windows\Setup\Scripts\SetupComplete.log
echo call "C:\Windows\Setup\Scripts\CustomStarts.bat"
echo call "C:\Program Files\Amazon\Ec2ConfigService\Scripts\PostSysprep.cmd"
echo Done running SetupComplete >> C:\Windows\Setup\Scripts\SetupComplete.log
)
