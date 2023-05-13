*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${url}  https://www.demoblaze.com/
${browser}  chrome
*** Test Cases ***
Check the contents displaying in the homepage
    [tags]  smoke
    jyothi
    title should be     STORE
Check the whether user is able to login with valid credntilas displaying in the homepage
    [tags]  regression
    jyothi
    sleep   2
    click element       xpath://a[@id='login2']
    input text       id:loginusername    demo
    input text      id:loginpassword    demo
    Set Selenium Implicit Wait   15 seconds
    click element       xpath://*[@id="logInModal"]/div/div/div[3]/button[2]
    sleep   5
    Element Should Be Visible      xpath://a[@id='nameofuser']


*** Keywords ***
jyothi
     open browser    ${url}    ${browser}
     maximize browser window