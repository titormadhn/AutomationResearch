# robotFramework

This repository is a shared or public repository, please use it responsibly.

# AUTOMATE WEBSITE CONFIGURATION

## Prerequisites

- Python 
- ChromeDriver
- VsCode

### Installing python and ChromeDriver

To install Python and ChromeDriver , follow these steps:

1. **Install Python**:
    - Visit the [Python download page](https://www.python.org/downloads/).
    - Install Python on desktop and checklist path for Add python.exe
    - Makesure Python installing in local, with command
      ```bash
       python--version
      ```

2. **Install ChromeDriver**:
    - Visit the [ChromeDriver download page](https://chromedriver.chromium.org/downloads)
    - Add chromedriver.exe into folder python > scripts

3. **Install VsCode**
    - Visit the [VsCode download page](https://code.visualstudio.com/download)

## Installation

1. **Clone the repository** (if you haven't already):

    ```bash
    https://gitlab.com/tito.ramadhan/robotframework.git
    cd your-repository
    ```

2. **Install robotFramework**:

    ```bash
    pip install robotframework
    ```

    Makesure robotframework installing in local, with command
      ```bash
       robot--version
      ```

3. **Install SeleniumLibrary**:

    ```bash
     pip install robotframework-seleniumlibrary 
    ```
    
    Check selenium library success installed in
    ```bash
     pip list 
    ```

4. **Install Extension Gherkin and robotFramework**:
    - Cucumber Gherkin
    - Prettier- code formatter
    - Pylance
    - Python
    - Robocorp code
    - Robotframework language server

5. **Configure Python in VsCode**:

    ```bash
    - Open tab menu : File -> Preferences-> Setting-> Extention
    ```
    - Find section ```Robot > Language-server: Python```
    - input field directory file
        Example :
        C:\Users\AppData\Local\Programs\Python\Python310\python.ex
    - Find Section ```Robot > Python:Executable```
    - Input field directory file 
        Example :
        C:\Users\AppData\Local\Programs\Python\Python310\python.ex

## Writing Script (Modular Concept)

1. **Write your feature file under the testcase folder**

    ```
    robot_{project}/
    ├── testcase/
    │ ├── module_folder/
      │  └── example.robot
    ```

2. **Write and define your step definition in the step definition folder according to the feature file you have written earlier**

    ```
    robot_{project}/
    ├── stepDefinition/
    │ ├── module_folder/
      │  └── example.robot
    ```

3. **Write or modify the resource file as needed, do not modify the resource file too much if it not important or not needed.**

    ```
    robot_{project}/
    ├── resource
    │ └── example_support.robot

    ```