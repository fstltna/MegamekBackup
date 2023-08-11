# MegaMek Backup - backup script for the MekWars game server (1.2)
Creates a hot backup of your MegaMek installation.

Official support sites: [Official Github Repo](https://github.com/fstltna/MegamekBackup) - [Official Forum](https://mekcity.com/index.php/forum/megamek)


---

1. Edit the settings at the top of megamekbackup.pl if needed
2. create a cron job like this:

        1 1 * * * /home/megamek/MegamekBackup/megamekbackup.pl

3. This will back up your MegaMek installation at 1:01am each day, and keep the last 5 backups.

If you need more help visit https://MekCity.com
