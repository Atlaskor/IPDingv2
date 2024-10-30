IPDv2 is a tool for pinging IPs in a quick fassion.

The only file that needs any interaction is IPDingMaster.bat.
This file starts the process and calls on the other 8 separate scripts.
Currently the program will exit upon not seeing iplist.txt.
This file is for storing the IP addresses that you are going to check.

Upon running the file, the script divys out all of the IPs to a file for each script.
The scripts then make their own error#.txt and successful#.txt.
After the pings are complete the ping windows close.
The main prompt is all that remains.
Once you click through, all of the files are processed, compiled and exported.
All files other then iplist.txt and the csv files are deleted.
