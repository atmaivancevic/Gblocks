#!/bin/bash

# Parameters:
# $1 = Animal (Genome Name)

# Example Usage: ./gblocks.sh AmericanPika

# Go to directory containing the alignments for each cluster
cd /Users/atma/GenomeAnalysis/Fulllength_L1s/Clusters_with_more_than_2/$1

# Get blocks of conserved sequence from each alignment file
# Note: Allowed Gap Positions is by default set to None (to change, set -b5= h (half) or a (all))
for i in *.afa;
do
	Gblocks $i -t=d -p=n -e=.gb -b5=h #Changed Allowed Gap Position to half
done	

# Gblocks outputs an alignment file of 10-character blocks separated by white space
# Need to delete the white spaces
# Also change extension from .afa.gb to _gb.afa 
for i in *.afa.gb;
do
	tr -d " \t" < "$i" > "${i/.afa.gb}"_gbHalf.afa #changed extension to gbHalf
done

# Remove all files with white space and extension .afa.gb
rm *.afa.gb

