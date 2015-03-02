
@REM *** EXECUTION ***
echo. Starting Mediawiki smoke test suite...

set mydate=!date:~10,4!!date:~6,2!/!date:~4,2!
set Timestamp = %date:~6,4%-%date:~3,2%-%date:~0,2%-%time:~0,2%-%time:~3,2%-%time:~6,2%
echo %mydate%
echo %Timestamp

cd C:\apache-jmeter-2.11\apache-jmeter-2.11\bin\
jmeter -n -t C:\MediaWiki\mediaWiki\Scripts\mediaWiki.jmx -l C:\MediaWiki\mediaWiki\Results\mediawiki-result-%date:~-4,4%%date:~-7,2%%date:~-10,2%.jtl