import os
from robot import run
import subprocess
from datetime import datetime

# Define the list of test case files or directories to run
test_cases = [
    #--Website Registration Suites (#2 Web - Regisration)--#
    "../testCase/registration/5_valid_registerAccount.robot",
    "../testCase/registration/6_invalid_registerAccount.robot",
    "../testCase/registration/16_successful_ActivationOTP_viaEmail.robot",
    "../testCase/registration/17_unsuccesful_activationOTP_viaEmail.robot"
]

# Define the list of Suites files or directories to run by tag
# suitesWeb_RegisValid = [
#     "../testCase/registration/5_valid_registerAccount.robot",
#     "../testCase/registration/16_successful_ActivationOTP_viaEmail.robot"
# ]

# suitesWeb_RegisInvalid = [
#     "../testCase/registration/6_invalid_registerAccount.robot",
#     "../testCase/registration/17_unsuccesful_activationOTP_viaEmail.robot"
# ]

# Options for the Robot Framework execution (output directory, log, etc.)
date_for_report = datetime.now().strftime("%d;%m;%y-%H;%M;%S")
output_dir = os.path.abspath("resultSuites-"+date_for_report)  # Get the absolute path
options = {
    "outputdir": output_dir,      # Directory to save the results
    # "loglevel": "DEBUG",          # Log level
    # "report": "report.html",      # Report file name
    # "log": "log.html",            # Log file name
}

# Run the test cases 
# run(*test_cases)

# Run the test case with the options
run(*test_cases, **options)
# run(*suitesWeb_RegisValid, **options)   #Define run by Tag 
# run(*suitesWeb_RegisInvalid, **options) #Define run by Tag

# CONVERT & GENERATE REPORT FROM XML TO HTML
output_path = os.path.join(output_dir, "output.xml") # type: ignore
if os.path.exists(output_path):
    # Run Robot Framework Metrics and save in the results folder
    metrics_command = f"robotmetrics --inputpath {output_dir} --output {output_path} --metrics-report-name generated_metrics.html" # type: ignore
    subprocess.run(metrics_command, shell=True) # type: ignore
else:
    print(f"output.xml file is missing: {output_path}")