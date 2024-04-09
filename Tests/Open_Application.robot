*** Settings ***
Library  AppiumLibrary

*** Variables ***
${SIGN-IN-BUTTON}   //android.widget.Button[@resource-id="com.safaricom.mpesa.lifestyle:id/"]

*** Test Cases ***
Open_Application
    Open Application    http://localhost:4723    platformName=Android	 deviceName=2850bf41    appPackage=com.safaricom.mpesa.lifestyle  appActivity=com.mpesa.splash.SplashActivity   automationName=Uiautomator2
    Wait Until Page Contains Element    ${SIGN-IN-BUTTON}