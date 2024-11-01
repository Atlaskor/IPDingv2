IPDv2 is a tool for pinging IPs in a quick fashion.

The only file that needs any interaction is IPDingMaster.bat.
This file starts the process and calls on the other 8 separate scripts.
This file is for storing the IP addresses that you are going to check.

Upon running the script, the script divys out all of the IPs to a file for each script from a csv that is formatted to have the IPs in the 5th column of the spreadsheet.
The scripts then make their own error#.txt and successful#.txt.
After the pings are complete the ping windows close.
The main prompt is all that remains.
Once you click through, all of the files are processed, compiled and exported.
All files other than the csv files are deleted.
