#!/bin/bash

#L1s
arr=( 'Aardvark' 'Alpaca' 'AmericanPika' 'Lizard' 'Armadillo' 'Baboon' 'BactrianCamel' 'Baiji' 'BigBrownBat' 'BlackFlyingFox' 'Bonobo' 'Bushbaby' 'CapeElephantShrew' 'CapeGoldenMole' 'Cat' 'Chimp' 'Chinchilla' 'ChineseHamster' 'ChineseTreeShrew' 'CommonShrew' 'Cow' 'DeerMouse' 'Degu' 'Dog' 'Dolphin' 'Elephant' 'Ferret' 'Gibbon' 'Goat' 'GoldenHamster' 'Gorilla' 'GreaterHorseshoeBat' 'GreenMonkey' 'GuineaPig' 'Hedgehog' 'Horse' 'Human' 'KangarooRat' 'KillerWhale' 'LesserEgyptianJerboa' 'CrabeatingMacaque' 'Manatee' 'Marmoset' 'Megabat' 'Microbat' 'MinkeWhale' 'Mouse' 'MouseLemur' 'NakedMolerat' 'Opossum' 'SumatranOrangutan' 'Panda' 'Pig' 'PrairieVole' 'Rabbit' 'Rat' 'Rhesus' 'RockHyrax' 'Sheep' 'SiberianTiger' 'Sloth' 'SpermWhale' 'Squirrel' 'SquirrelMonkey' 'StarnosedMole' 'StrawcolouredFruitBat' 'TasDevil' 'Tenrec' 'TibetanAntelope' 'TreeShrew' 'Wallaby' 'Walrus' 'WeddellSeal' 'WhiteRhino' 'Yak' 'Tarsier' 'WaterBuffalo' 'MouseearedBat' 'GreaterFalseVampireBat' 'ParnellsMustachedBat' 'BrandtsBat' )

for j in "${arr[@]}"
do
	echo $j
	./gblocks.sh "$j"
done
