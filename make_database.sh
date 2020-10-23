#!/bin/bash
echo ""

# Convert TSV (Tab-separated Values)  to CSV (Comma-Separated Values)
# I dont really know why i did it this way, could probably
# have used a Tab-Separated file to.. But who cares..
echo "Convert tsv to csv     PSV_GAMES.tsv -> PSV_GAMES.csv"
cat PSV_GAMES.tsv | cut -f1-3 |tr "\\t" "," > PSV_GAMES.csv

# Remove all (3.61+) Strings
echo "Removing all (3.61+)-strings in PSV_GAMES.csv"
cat PSV_GAMES.csv | sed "s/(3.6.*//" > PSV_GAMES_STRIPPED.csv

# Replace all " -" with " -" instead (Files cant be created with a ":" in its name)
echo "Replacing all : with -"
sed -i 's/:/ -/g' PSV_GAMES_STRIPPED.csv

# Replace / in names with - (Files cant be created with a "/" in its name)
# Really Only ONE game has a / in the name, and that is Fate/Extella
sed -i 's/\//-/g' PSV_GAMES_STRIPPED.csv

# We dont need this file anymore.
rm -fr PSV_GAMES.csv

echo "Done... Created PSV_GAMES_STRIPPED.csv"
