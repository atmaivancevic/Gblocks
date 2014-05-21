#!/bin/bash

# Parameters:
# $1 = Animal (Genome Name)

# Example Usage: ./gblocks.sh AmericanPika

# Go to directory containing the alignments for each cluster
cd /Users/atma/GenomeAnalysis/Fulllength_L1s/Clusters/$1

# Get blocks of conserved sequence from each alignment file
# Note: Allowed Gap Positions is currently set to None (to change, set -b5= h (half) or a (all))
for i in *.afa;
do
	Gblocks $i -t=d -p=n -e=.gb
done	

# Change extension from .afa.gb to _gb.afa
for i in *.afa.gb;
do
	mv "$i" "${i/.afa.gb}"_gb.afa
done

# Gblocks outputs an alignment file of 10-character blocks seperated by white space
# Need to delete the white spaces
for i in *_gb.afa;
do
	cat $i | tr -d " \t" 
done
