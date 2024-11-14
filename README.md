<!-- Setup for Robot framework with selenium Library
mac
1.go to (https://www.python.org/downloads/) download lasted version and install file
2.open cmd 
3.$ pip3 -v 
4.$ open -e ~/.bash_profile
5.copy this message to file  :   PATH="/Library/Frameworks/Python.framework/Versions/(version of your python ex. "3.13")/bin:${PATH}"
export PATH
6.$ pip3 install robotframework
7.$ pip3 install robotframework-seleniumlibrary
8.now install extension on vscode name "Robot Framework Language Server" and "RobotCode - Robot Framework Support" and then
9.create folder and create file  ex. namefile.robot
10.can example with my code 
11.and then $ robot filename.robot  and success

window 
1.go to (https://www.python.org/downloads/) download lasted version
2.install while all step look at check box it have set path env and check that
3.open cmd 
3.$ pip3 -v   (it will show version python)
4.$ pip3 install robotframework
5.$ pip3 install robotframework-seleniumlibrary
6.now install extension on vscode name "Robot Framework Language Server" and "RobotCode - Robot Framework Support" and then
7.create folder and create file  ex. namefile.robot
8.can example with my code 
9.and then $ robot filename.robot  and success

it have 4 step 
1.settings for setup library or resource
2.variables for settinng up variable value it have 3 type is string ${string} value,list @{list} list1value,dictionary &{dict}  key1=value
3.keywords for functions or methods
4.testcases for any testcase example login or enter password -->


Robot Framework Setup with Selenium Library
This guide will help you set up the Robot Framework with the Selenium Library on macOS and Windows.

Prerequisites
Download Python

Go to Python Downloads and install the latest version.
Install Required Extensions (for both macOS and Windows):

In VS Code, install these extensions:
Robot Framework Language Server
RobotCode - Robot Framework Support
macOS Setup
1. Install Python
Download and install the latest version of Python from Python.org.
2. Verify Python Installation
Open Terminal and check the pip3 version to confirm Python is installed:
bash
Copy code
$ pip3 -V
3. Set Environment Path
Open the .bash_profile file to add the Python path:
bash
Copy code
$ open -e ~/.bash_profile
Add the following line to your .bash_profile (replace 3.13 with your Python version):
bash
Copy code
PATH="/Library/Frameworks/Python.framework/Versions/3.13/bin:${PATH}"
export PATH
4. Install Robot Framework and Selenium Library
Install the Robot Framework:
bash
Copy code
$ pip3 install robotframework
Install the Selenium Library for Robot Framework:
bash
Copy code
$ pip3 install robotframework-seleniumlibrary
5. Set Up Your First Test File
Create a new folder for your test files.

Inside this folder, create a new file with a .robot extension (e.g., example_test.robot).

Add sample test content to example_test.robot:

robot
Copy code
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}     https://example.com
${BROWSER}    Chrome

*** Test Cases ***
Open Browser and Go to Example
    Open Browser    ${URL}    ${BROWSER}
    Sleep    2 seconds
    [Teardown]    Close Browser
6. Run the Test File
Execute the .robot file:
bash
Copy code
$ robot example_test.robot
Windows Setup
1. Install Python
Download the latest version from Python.org.
During installation, ensure you check the box to Add Python to PATH.
2. Verify Python Installation
Open Command Prompt and check the pip3 version:
bash
Copy code
$ pip3 -V
3. Install Robot Framework and Selenium Library
Install the Robot Framework:
bash
Copy code
$ pip3 install robotframework
Install the Selenium Library for Robot Framework:
bash
Copy code
$ pip3 install robotframework-seleniumlibrary
4. Set Up Your First Test File
Create a new folder for your test files.

Inside this folder, create a new file with a .robot extension (e.g., example_test.robot).

Add sample test content to example_test.robot:

robot
Copy code
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}     https://example.com
${BROWSER}    Chrome

*** Test Cases ***
Open Browser and Go to Example
    Open Browser    ${URL}    ${BROWSER}
    Sleep    2 seconds
    [Teardown]    Close Browser
5. Run the Test File
Execute the .robot file:
bash
Copy code
$ robot example_test.robot
Robot Framework Basics
Settings: Define libraries or resources to include in the test.

robot
Copy code
*** Settings ***
Library    SeleniumLibrary
Variables: Set variable values in different formats:

String: ${string_variable} value
List: @{list_variable} item1 item2
Dictionary: &{dict_variable} key=value
Keywords: Define reusable functions or methods within a test.

robot
Copy code
*** Keywords ***
Open Example Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
Test Cases: Define individual test cases for specific scenarios.

robot
Copy code
*** Test Cases ***
Test Case Name
    [Documentation]    This is a sample test case
    Open Example Page
    [Teardown]    Close Browser
Happy testing with Robot Framework and Selenium Library!