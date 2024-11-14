Setup for Robot framework with selenium Library
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
4.testcases for any testcase example login or enter password


