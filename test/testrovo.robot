*** Settings ***
Library    SeleniumLibrary

# Suite Setup    Log    I am inside Test Suite Setup
# Suite Teardown    TeardownSuite
# Test Setup    Log    Inside Test Setup
# Test Teardown    Log    Inside Test Teardown

# Default Tags    flashback



*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/
@{newList}   Admin    admin123
&{dVar}    username=Admin    username2=Kvargennn    password2=18Hundra91    password=admin123

*** Keywords ***
OpenDDG
    Open Browser    https:duckduckgo.com    gc


# TeardownSuite
    # Log    I am inside Test Suite Teardown Keyword

*** Comments ***
How to run from cmd:
cd to the project folder
robot -t TestName TestSuiteName
ex: robot -t FirstSeleniumTest test\testrovo.robot

*** Test Cases ***
# MyFirstTest
    # [Tags]    world
    # Log    Hello world
    
# MySecondTest
    # [Tags]    second
    # Log    Inside 2nd
    
# MyThirdTest
    # [Tags]    third
    # Log    Inside 3rd

FirstSeleniumTest
    OpenDDG
    Sleep    1
    Input Text    name=q    flashback  
    Press Keys    name=q    RETURN   
    Click Link    https://www.flashback.org
    Sleep    1
    Click Element    id=onetrust-accept-btn-handler
    Click Element    xpath://*[@id="navbar-top-menu"]/ul/li[2]/a
    Input Text    name=vb_login_username    ${dVar}[username2]
    Input Text    name=vb_login_password    ${dVar}[password2]
    Click Element    xpath://*[@id="site-full"]/div/div/div/div[2]/form/div/div/div[5]/button
    Click Element    xpath://*[@id="f243"]/div[1]/a/strong
    Click Element    xpath://*[@id="f245"]/div[1]/a/strong
    Click Element    xpath://*[@id="site-left"]/div[4]/div[1]/div/a/span/span
    Input Text    name=subject    Jag e robot
    Input Text    name=message    Jeffrey Persson e person
    Click Element    name=preview
    Sleep    2
    Close Browser

SampleLoginTest
    [Documentation]    Sameple login test
    Open Browser     ${URL}    gc
    Input Text    id=txtUsername    ${dVar}[username] 
    Input Text    id=txtPassword    ${dVar}[password]
    Click Button    id=btnLogin
    Click Element   id=welcome
    Sleep    1
    Click Element    link=Logout  
    Sleep    2
        
    
    
       