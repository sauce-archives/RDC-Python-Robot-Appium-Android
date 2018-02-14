*** Settings ***

Library  AppiumLibrary
Library  SauceLabsRDC.py
Library  Collections

Test Setup  Open test application
Test Teardown  Close test application
 
*** Variables *** 	
${KEY}                  %{TESTOBJECT_API_KEY}
${REMOTE_URL}           http://us1.appium.testobject.com/wd/hub
${PLATFORM_NAME}        %{platformName}
${PLATFORM_VERSION}     %{platformVersion}
${DEVICE_ORIENTATION}   portrait


*** Test Cases ***
Example of connecting to Sauce RDC via Robot Framework
	
	Click element  xpath=//android.widget.LinearLayout[1]/android.widget.FrameLayout[2]/android.widget.LinearLayout[1]/android.widget.Button[1]
	
	Input text  xpath=//android.widget.LinearLayout[1]/android.widget.FrameLayout[2]/android.widget.ScrollView[1]/android.widget.TableLayout[1]/android.widget.TableRow[4]/android.widget.EditText[1]  My Name
	
	Input text  xpath=//android.widget.LinearLayout[1]/android.widget.FrameLayout[2]/android.widget.ScrollView[1]/android.widget.TableLayout[1]/android.widget.TableRow[8]/android.widget.EditText[1]  myemail@email.com

	Click element  xpath=//android.widget.LinearLayout[1]/android.widget.FrameLayout[2]/android.widget.ScrollView[1]/android.widget.TableLayout[1]/android.widget.TableRow[9]/android.widget.Button[1]

*** Keywords ***
Open test application
	Open Application  ${REMOTE_URL}  testobject_api_key=${KEY}  platformName=${PLATFORM_NAME}  platformVersion=${PLATFORM_VERSION}

Close test application
    Close all applications

