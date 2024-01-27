*** Settings ***
Documentation       Test file to show case the usage of keywords from folder 'lib'

Library             lib.pythonmod.hellopython.HelloPython
Resource            lib/robotmod/HelloRobot.resource


*** Test Cases ***
Hello From Python Library
    [Documentation]    Call hello world keyword from Python library
    Hello From Python

Hello From Robot Library
    [Documentation]    Call hello world keyowrd from Robot library
    Hello From Robot
