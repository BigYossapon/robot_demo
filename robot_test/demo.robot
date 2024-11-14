*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${URL}       ''
${EMAIL}     ''
${PASSWORD}  ''

*** Keywords ***
Open Website 
    [Arguments]    ${url}     ${query}
    Open Browser     ${Url}     chrome
      Input Text    name:q    ${query}
    # Press Keys    name:q    \\13
     Press Keys    name:q    ENTER
    Wait Until Page Contains Element    css:div#search 
    # Wait Until Page Contains Element    css:div#search    10s
Login Website
       Open Browser     ${Url}     chrome
           Wait Until Element Is Visible    css:.swal2-confirm.swal2-styled.lang_btn_login    10s
    Click Element    css:.swal2-confirm.swal2-styled.lang_btn_login
    Wait Until Element Is Visible    id:User_typeLogin    10s
    Sleep    3s 
    Select From List By Value    id:User_typeLogin    1
     Input Text    id:username_login    ${EMAIL}
      Input Password    id:password_login    ${PASSWORD}
      Click Button    id:validate_login
      Wait Until Element Is Visible    id:menu_show
    Execute JavaScript    document.querySelector('.lang_menu_service').click();
    #  Execute JavaScript    document.querySelector('.lang_menu_service').click();
     Execute JavaScript    document.querySelector("warningAlert2("alert_t_1","alert_m_1_1","","")").click();
*** Test Cases ***
TS_01 : เปิด ​Browser 
    # Open Website    ${URL}     Robot FrameWork
    Login Website 
