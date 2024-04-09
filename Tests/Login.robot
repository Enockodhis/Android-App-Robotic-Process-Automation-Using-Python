*** Settings ***
Library     AppiumLibrary

*** Variables ***
#***    SIGN-IN-PAGE    ***
${SIGN-IN-BUTTON}   //android.widget.Button[@resource-id="com.safaricom.mpesa.lifestyle:id/"]
#***    ALLOW-POP-UP    ***
${ALLOW-POP-UP}     //android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]
#***    DUAL-SIM-PAGE   ***
${DUAL-SIM-PAGE}    //android.widget.Button[@resource-id="com.safaricom.mpesa.lifestyle:id/"]
#***    CONTINUE-PAGE   ***
${CONTINUE-BUTTON}  //android.widget.Button[@resource-id="com.safaricom.mpesa.lifestyle:id/"]
#***    ENTER-MPESA-PIN-PAGE   ***
${USER-DETAILS1}     //android.widget.TextView[@resource-id="com.safaricom.mpesa.lifestyle:id/" and @text="6"]
${USER-DETAILS2}     //android.widget.TextView[@resource-id="com.safaricom.mpesa.lifestyle:id/" and @text="5"]
${USER-DETAILS3}     //android.widget.TextView[@resource-id="com.safaricom.mpesa.lifestyle:id/" and @text="4"]
${USER-DETAILS4}     //android.widget.TextView[@resource-id="com.safaricom.mpesa.lifestyle:id/" and @text="4"]
#***    NOTIFICATION-PAGE   ***
#${ALLOW-NOTIFICATION}   //android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]


*** Test Cases ***
Login
    Open Application    http://localhost:4723    platformName=Android	 deviceName=2850bf41    appPackage=com.safaricom.mpesa.lifestyle  appActivity=com.mpesa.splash.SplashActivity   automationName=Uiautomator2
    Wait Until Page Contains Element    ${SIGN-IN-BUTTON}
    Click Element    ${SIGN-IN-BUTTON}
    Wait Until Page Contains Element    ${ALLOW-POP-UP}
    Click Element    ${ALLOW-POP-UP}
    Wait Until Page Contains Element    ${DUAL-SIM-PAGE}
    Click Element    ${DUAL-SIM-PAGE}
    Wait Until Page Contains Element    ${CONTINUE-BUTTON}
    Click Element    ${CONTINUE-BUTTON}
    Wait Until Page Contains Element    ${USER-DETAILS1}
    Click Element    ${USER-DETAILS1}
    Wait Until Page Contains Element    ${USER-DETAILS2}
    Click Element    ${USER-DETAILS2}
    Wait Until Page Contains Element    ${USER-DETAILS3}
    Click Element    ${USER-DETAILS3}
    Wait Until Page Contains Element    ${USER-DETAILS4}
    Click Element    ${USER-DETAILS4}
    #Wait Until Page Contains Element    ${ALLOW-NOTIFICATION}
    #Click Element    ${ALLOW-NOTIFICATION}

