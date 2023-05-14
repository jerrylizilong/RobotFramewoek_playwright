*** Settings ***
Library  Browser
Resource   ./Resources/Baidu_locators.robot
Resource   ./Data/TestData.robot



*** Test Cases ***
example test
    new browser  chromium  headless=false
    New page   ${baidu_url}
    get text   ${baidu_title_locator}  ==   ${baidu_title_value}
    take screenshot
    get text   ${baidu_title_locator}  ==   ${baidu_title_value}+1