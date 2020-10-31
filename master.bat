::open Msft Teams
::start C:\Users\%USERNAME%\AppData\Local\Microsoft\Teams\Update.exe --processStart "Teams.exe"

::install discord
::start DiscordSetup.exe

::run finesse
::start chrome https://cipt-kdc-fin03.gcu.edu:8445/desktop/container/?locale=en_US

::run jabber
::start C:\"Program Files (x86)"\"Cisco Systems"\"Cisco Jabber"\CiscoJabber.exe

::open workday
::start chrome https://www.myworkday.com/gcu/d/home.htmld

::pin discord
syspin "C:\Users\%USERNAME%\AppData\Local\Discord\Update.exe --processStart Discord.exe" 5386


pause