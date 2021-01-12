*** Settings ***
Suite Setup             Run Keywords
...                     Get Current Day             AND
...                     Get 2 Days Later            AND
...                     Generate Random Name        AND
...                     Generate Street Name        AND
...                     Generate Account Number         AND
...                     Generate Random Notes
Test Setup              Open web application                ${base_url}
Test Teardown           Stop web apps
Resource                ../../main/resources/importer.robot

*** Test Cases ***
Booking Ticket Pay On Arrival
    [Documentation]                 This scenario for asserting
    ...                             booking ticket until arrival.
    [Tags]                          regression

    Given Login User
    And Back To Home

    When Click Flight Button
    And Click Round Trip
    And Click Dropdown Class
    And Selelct Value Class
    And Input Lax Airport
    And Input Mxp Airport

    And Click Button Search
    Then Verify Flight Result

    And Click Book Now
    Given Detail Passangers Identity                ${notes}
    ...                                             ${fullname}
    ...                                             29
    ...                                             ${accountnumber}
    And Click Confirm This Booking
    Then Verify Title Booked

    And Click Pay On Arrival