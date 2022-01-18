test1: 
	gcc CalculateImageSize.c -o Init/exo1.out
	(cd Init/; bash CalculateImageSize.sh)
test2:	
	gcc CalculateVideo.c -o Init/exo2.out
	(cd Init/; bash CalculateVideoSize.sh)
