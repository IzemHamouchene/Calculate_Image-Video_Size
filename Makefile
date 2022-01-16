cleanExo1:
	rm Init/exo1.out

test1: 
	gcc CalculateSize01.c -o Init/exo1.out
	(cd Init/; bash CalculateSize01.sh)
