*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/general-keywords.robot
Resource    ../Resources/variables.robot

*** Test Cases ***
Login to Amazon
    Navigate to amazon home page
    Click on SignIn and Enter Credentials

Search for an item
    Navigate to amazon home page
    Click on SignIn and Enter Credentials
    Search for iPhone item

Add an item to the cart
    Navigate to amazon home page
    Click on SignIn and Enter Credentials
    Search for iPhone item
    Add iPhone to cart




