*** Keywords ***

Verify Flight Result
    Page Should Contain Element                     ${flight_result_icon}

Click Book Now
    Wait Until Element Is Visible                   ${book_now}
    Click Element                                   ${book_now}

Input Passangers Note
    [Arguments]                                     ${notes}
    Input Text                                      ${placeholder_note}
    ...                                             ${notes}

Input Passagers Name
    [Arguments]                                     ${name}
    Input Text                                      ${placeholder_passangers_name}
    ...                                             ${name}

Input Passagers Age
    [Arguments]                                     ${age}
    Input Text                                      ${placeholder_passangers_age}
    ...                                             ${age}

Input Passagers Passport
    [Arguments]                                     ${passport}
    Input Text                                      ${placeholder_passangers_passport}
    ...                                             ${passport}

Click Confirm This Booking
    Scroll To Element                               ${confirm_book_now_button}
    Click Element                                   ${confirm_book_now_button}

Verify Title Booked
    Wait Until Element Is Visible                   ${title_booked}

Click Pay On Arrival
    Wait Until Element Is Visible                   ${pay_on_arrival_button}
    Click Element                                   ${pay_on_arrival_button}

Verify Ticket On Arrival
    Wait Until Element Is Visible                   ${allert_arrival}