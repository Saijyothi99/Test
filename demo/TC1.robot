*** Settings ***
Library  SeleniumLibrary
*** Variables ***

*** Test Cases ***
Check the contents displaying in the homepage
    open browser   https://demo.automationtesting.in/Register.html      chrome
    maximize browser window
    title should be     Register
    element should be visible       xpath://*[@id="section"]/div/h2
    input text  xpath://*[@id="basicBootstrapForm"]/div[1]/div[1]/input     jyothi
    Set Selenium Implicit Wait   15 seconds

Check whetehr user is able to register
    input text  xpath://*[@id="basicBootstrapForm"]/div[1]/div[1]/input     jyothi
    input text  xpath://*[@id="basicBootstrapForm"]/div[1]/div[2]/input     test
    input text  xpath://textarea[@class='form-control ng-pristine ng-untouched ng-valid']   India
    click element   id:checkbox1
    click element   xpath://*[@id="basicBootstrapForm"]/div[5]/div/label[1]/input
    select from list By Label   Skills   CSS
    select from list By Index   Skills   16
    drag and drop  src tgt

    sleep   5
Check whether user is able tonaviagte from register page
    click element   xpath://*[@id="header"]/nav/div/div[2]/ul/li[1]/a
    Wait Until Element Is Visible   xpath://*[@id="enterimg"]

*** Keywords ***
