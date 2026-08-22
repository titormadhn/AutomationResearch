I work as a software quality assurance.
Here is the current workflow of the project :
1. Project Coordinator gives me gherkin feature files filled with feature description in gherkin language.
2. I ask Copilot to add several important negative cases that is common in other project such as emptying each field or input the wrong value or type.
3. I ask Copilot to assign an Unique ID to each element based on the gherkin and common practice, so that each element could be tested with ease. Making the workflow time efficient since there's no need to search for complex XPath because each important elements have their own unique IDs.
4. I use gherkin2robotframework library to convert the gherkin that have been processed by copilot into robotframework .resource and .robot file. I use a library since it more reliable in this case (minimizing potential error caused by bad prompt or hallucination).
5. I adjust the robot files that had been created by gherkin2robotframework library to further match the real condition of the app I tested.
6. I send the processed gherkin that contains negative case and ID to the project coordinator, then he/she will determine which negative cases would became ticket or discarded.
7. After the dev team finish developing the feature, i ran the test based on the robot i previously generate and send the result as evidence and test documentation.