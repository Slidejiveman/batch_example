@ECHO off

REM This file opens up a collection of news sites.
REM This example could be used to open up any other website
REM or set of websites.
REM Note: the first line turns off the display of output that 
REM isn't preceeded with "ECHO".
:: Note, this is the alternative way to do comments.

REM open the default news sites
IF "%1"=="" (
    START "" http://www.foxnews.com
    START "" http://cnn.com
    START "" http://msnbc.com
    START "" http://bbc.com
    START "" http://dailywire.com
) ELSE (
    REM go through all of the arguments provided, and open those sites.
    FOR %%x IN (%*) DO (
	    START "" %%~x
	)
)

REM display to the user what the script has done.
ECHO Sites opened in browser.
PAUSE