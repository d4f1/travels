*** Settings ***
Resource                ../resources/importer.robot

*** Keywords ***
Back To Home
    Sleep                                       2
    Wait Until Element Is Visible               ${home_icon_image}
    Click Element                               ${home_icon_image}

Click Flight Button
    Wait Until Element Is Visible               ${flight_button}
    Click Element                               ${flight_button}

Click Dropdown Class
    Wait Until Element Is Visible               ${dropdown_class}
    Click Element                               ${dropdown_class}

Selelct Value Class
    Wait Until Element Is Visible               ${value_class}
    Click Element                               ${value_class}

Input Lax Airport
    Set Selenium Speed                          0.5
    [Arguments]                                 ${airport}=Jakarta
    Input Text                                  ${placeholder_lax}
    ...                                         ${airport}
    Wait Until Element Is Visible               ${value_lax}
    Click Element                               ${value_lax}

Input Mxp Airport
    Set Selenium Speed                          0.5
    [Arguments]                                 ${airport}=Bali
    Input Text                                  ${placeholder_mxp}
    ...                                         ${airport}
    Wait Until Element Is Visible               ${value_mxp}
    Click Element                               ${value_mxp}

Click Round Trip
    Wait Until Element Is Visible               ${round_trip_label}
    Click Element                               ${round_trip_label}

Click Depart Date
    [Arguments]                                 ${date}
    Wait Until Element Is Visible               ${date_depart}
    Click Element                               ${date_depart}
    Execute JavaScript                          document.evaluate("//*[@data-date="${date}"]", document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).snapshotItem(0).click();

Click Return Date
    [Arguments]                                 ${date}
    Wait Until Element Is Visible               ${date_return}
    Click Element                               ${date_return}
    Wait Until Element Is Visible               xpath=//*[text()="${date}"]
    Mouse Over                                  xpath=//div[@class="datepicker--cells datepicker--cells-days"]//div[@class="datepicker--cell datepicker--cell-day"][contains(.,"${date}")]
    Click Element                               xpath=//div[@class="datepicker--cells datepicker--cells-days"]//div[@class="datepicker--cell datepicker--cell-day -focus-"][contains(.,"${date}")]

Click Button Search
    Wait Until Element Is Visible               ${submit_button}
    Click Element                               ${submit_button}

