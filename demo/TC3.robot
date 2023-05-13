*** Settings ***
Library  SeleniumLibrary
*** Variables ***

*** Test Cases ***
Check the contents displaying in the homepage
    open browser  https://jqueryui.com/droppable/      chrome
    maximize browser window
    Select Frame    xpath://*[@id="content"]/iframe
    drag and drop   id:draggable    id:droppable
    sleep   4




*** Keywords ***
