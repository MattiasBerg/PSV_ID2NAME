
A Linux Script that uses _NoPayStation's PS Vita_ Game Database to
create new directories of downloaded games with their real
gamename and then copy the downloaded directory in to that
directory..

This Script is created with games for the _Playstation Vita_ in mind
but with some quick changes this script will work for PSM, PS3 etc to.

Ex:
You downloaded two games and what you get is something like this:

PCSE00245
PCSA00017

Not so easy to understand without manually search for them
on NoPayStation..

After you have executed the script inside the same directory
as those games, the script will automatically fetch the real
name of all games and make directories that is more readable
to a human..

The Script will fetch the name "Ys: Memories of Celceta"
and make a directory with same name and copy PCSE00245
into that directory

The Same with PCSA00017, the script will find that the
GAMEID is for LittleBigPlanet and then make a directory
with that name and copy the PCSA00017 into that directory..

The Script strips out characters as : and / from the gamename
and replace them with - instead, because files/directorynames
cannot contain : or /

The Script also deletes strings like "(3.61+) [3.69]" from the
gamename..

The script DEPENDS on that you have the perl package "rename"
installed because in the end of the script i search for directory
names that has a " " in the end and rename all those directories
to exclude that " "

This is a __Wery__ Quick'n'Dirty script that could use some fixing
but i didnt really care about it that much.. it works and its useful
as fuck when you have downloaded 2-300 games from NoPayStation and
want to make a backup of all games..

------------------------------------------------------------------
HOW TO USE:
------------------------------------------------------------------

Step 1:
First of all you have to run "make_database.sh" to convert
NoPayStation's TSV-Database to an CSV-Database with all non
needed columns removed.. And to clean up strings and shit
that we dont want in our later Directorynames..
This script creates a file thats named "PSV_GAMES_STRIPPED.csv"
Please download the PSV_GAMES.tsv from NoPayStation and
replace the one in this package to make sure the database
is fresh and updated, but the file in this pack will work
with all games older than ~20 September 2020..

Step 2:
Copy id2name.sh and PSV_GAMES_STRIPPED.csv to your directory where
all your downloaded game are.

Step 3:
run "id2name.sh" and wait..

Step 4:
Delete "id2name.sh" and "PSV_GAMES_STRIPPED.csv" and you are finished..

Good bye..
