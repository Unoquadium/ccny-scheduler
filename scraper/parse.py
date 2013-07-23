import sys 
from BeautifulSoup import BeautifulSoup
import re
import HTMLParser

h = HTMLParser.HTMLParser()


html_doc = sys.stdin.read()

soup = BeautifulSoup(html_doc)

tables = soup.findAll("table")

whiteboxschema = [
		'START',
		'END',
		'COURSE',
		'DESCRIPTION',
		'CREDITS',
		'HOURS',
		'DIVISION',
		'SUBJECT',
		'REQUIREMENT DESIGNATION'
	];

bigwhiteboxschema = [
		'SECTION',
		'CODE',
		'OPEN SEATS',
		'DAY AND TIME',
		'INSTRUCTOR',
		'BLDG/RM',
		'ONLINE COURSE'
	];

whiteboxcounter = 0
bigwhiteboxcounter = 0


things = soup.findAll("td", { "class" : re.compile((r"^(whitebox|bigwhitebox)$")) });

for thing in things :
	if thing['class'] == 'whitebox':
		if whiteboxcounter == len(whiteboxschema):
			print '-----------'
			whiteboxcounter = 0
		print whiteboxschema[whiteboxcounter]+": "+ h.unescape(thing.getText())
		whiteboxcounter = whiteboxcounter + 1;
	if thing['class'] == 'bigwhitebox':
		if bigwhiteboxcounter == len(bigwhiteboxschema):
			print '-----------'
			bigwhiteboxcounter = 0
		print bigwhiteboxschema[bigwhiteboxcounter]+": "+h.unescape(thing.getText())
		bigwhiteboxcounter = bigwhiteboxcounter + 1;
