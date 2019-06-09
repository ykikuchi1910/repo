#! /bin/sh

# To calulate gretest common divisor $1 and $2
	yes $1 $2 |
	awk '{print $1/NR RS $2/NR}' |
        grep -Fv --line-buffered . |	
	awk 'a[$1]++{print;exit}'
	
