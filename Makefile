cleanExo1:
	rm Init/exo1.out
cleanExo2:
	rm Init/exo2.out
test1: 
	gcc CalculateImageSize.c -o Init/exo1.out
	(cd Init/; bash CalculateImageSize.sh)
	#cleanExo1
test2:	
	gcc CalculateVideo.c -o Init/exo2.out
	(cd Init/; bash CalculateVideoSize.sh)
	#cleanExo2
	
