*** Settings ***
Library  SeleniumLibrary
Resource  variables.robot

*** Keywords ***
Navigate to amazon home page
    Open Browser   ${URL}  Chrome
    Maximize Browser Window
    Wait Until Page Contains  Sign in

Click on SignIn and Enter Credentials
    Click Element   //span[text()="Hello, sign in"]
    Wait Until Page Contains Element    //input[@name="email"]
    Input Text    //input[@name="email"]    ${EMAIL_ID}
    Click Element    //input[@type="submit"]
    Wait Until Page Contains Element    //input[@name="password"]
    Input Password    //input[@name="password"]     ${PASSWORD}
    Click Element    //input[@type="submit"]
    Wait Until Page Contains   Hello, Hemanth

Search for iPhone item
    Input Text      //*[@id="twotabsearchtextbox"]    ${PRODUCT_NAME}
    Click Button    //*[@id="nav-search-submit-button"]
    Wait Until Page Contains    results for "iphone 13 pro max 256gb"

Add iPhone to cart
#    Click Element   //a//span[text()="iPhone 13, 256GB, Pink - Unlocked (Renewed Premium)"]
#    Wait Until Page Contains Element   //input[@name="submit.add-to-cart"]
#    Click Element   //input[@name="submit.add-to-cart"]
#    Wait Until Page Contains  Added to Cart
     sleep   5s
     Click Element   (//div[@class="sg-row"])[1]//h2
     Wait Until Page Contains Element   //input[@name="submit.add-to-cart"]
     Click Element   //input[@name="submit.add-to-cart"]
     Wait Until Page Contains  Added to Cart
