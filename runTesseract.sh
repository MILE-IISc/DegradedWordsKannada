mkdir TesseractOutput
for file in TestImages/*.tif; do
	echo $file
	outputFile=`echo $file | sed 's/TestImages/TesseractOutput/' | sed 's/\.tif//'`
	tesseract $file $outputFile -l kan --psm 8 --oem 1
done
tar cvfz TesseractOutput.tar.gz TesseractOutput
