#!/usr/bin/perl

# Set these for your situation
my $MEGAMEKDIR = "/root/megamek";
my $BACKUPDIR = "/root/backups";
my $TARCMD = "/bin/tar czf";
my $VERSION = "1.0";

#-------------------
# No changes below here...
#-------------------

print "MegaMekBackup - back up your MegaMek server - version $VERSION\n";
print "======================================================\n";

if (! -d $BACKUPDIR)
{
	print "Backup dir $BACKUPDIR not found, creating...\n";
	system("mkdir -p $BACKUPDIR");
}
print "Moving existing backups: ";

if (-f "$BACKUPDIR/megamekbackup-5.tgz")
{
	unlink("$BACKUPDIR/megamekbackup-5.tgz")  or warn "Could not unlink $BACKUPDIR/megamekbackup-5.tgz: $!";
}
if (-f "$BACKUPDIR/megamekbackup-4.tgz")
{
	rename("$BACKUPDIR/megamekbackup-4.tgz", "$BACKUPDIR/megamekbackup-5.tgz");
}
if (-f "$BACKUPDIR/megamekbackup-3.tgz")
{
	rename("$BACKUPDIR/megamekbackup-3.tgz", "$BACKUPDIR/megamekbackup-4.tgz");
}
if (-f "$BACKUPDIR/megamekbackup-2.tgz")
{
	rename("$BACKUPDIR/megamekbackup-2.tgz", "$BACKUPDIR/megamekbackup-3.tgz");
}
if (-f "$BACKUPDIR/megamekbackup-1.tgz")
{
	rename("$BACKUPDIR/megamekbackup-1.tgz", "$BACKUPDIR/megamekbackup-2.tgz");
}
print "Done\nCreating Backup: ";
system("$TARCMD $BACKUPDIR/megamekbackup-1.tgz $MEGAMEKDIR");
print("Done!\n");
exit 0;
