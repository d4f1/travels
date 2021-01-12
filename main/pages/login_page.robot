*** Settings ***
Resource            ../resources/importer.robot

*** Keywords ***
Click Login Dropdown
    Wait Until Element Is Visible               ${login_dropdown}
    Click Element                               ${login_dropdown}

Click Login Link
    Wait Until Element Is Visible               ${login_link}
    Click Element                               ${login_link}

Input Email
    [Arguments]                                 ${email}
    Wait Until Element Is Visible               ${placeholder_name}
    Input Text                                 ${placeholder_name}
    ...                                         ${email}

Input Password
    [Arguments]                                 ${password}
    Wait Until Element Is Visible               ${placeholder_password}
    Input Text                                  ${placeholder_password}
    ...                                         ${password}

Click Submit Login
    Wait Until Element Is Visible               ${submit_login_button}
    Click Element                               ${submit_login_button}




