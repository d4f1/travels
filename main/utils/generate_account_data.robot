*** Settings ***
Resource                         ../resources/importer.robot

*** Keywords ***
Generate Random Notes
    ${notes}=                   FakerLibrary.Paragraph              nb_sentences=3
    Set Global Variable         ${notes}

Generate Random Name
    ${fullname}=                Fakerlibrary.name
    Set Global Variable         ${fullname}

Generate Street Name
    ${street}=                  Fakerlibrary.Street Address
    Set Global Variable         ${street}

Generate Account Number
    ${accountnumber}=           Fakerlibrary.Credit Card Number
    Set Global Variable         ${accountnumber}
