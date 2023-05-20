# kr2223_Expert System for Medical Diagnosis
<br>

**Project Description**
---

This project involves an expert system designed to identify various mental illnesses or disabilities based on rules and factual information. The identification process involves asking users a series of questions that can be answered with either "yes" or "no".
<br>

**Project Structure**
---

The expert system specializes in identifying mental disorders, specifically focusing on two types: eating disorders and genetic disorders.

1. Eating disorders are characterized by the following criteria:
   * Mental State: Strong desire to be thin
   * Symptoms: Abnormal eating habits

2. Genetic disorders are characterized by the following criteria:
   * Cause: Abnormalities in the genome


**Mental Disorders**
---

The expert system can diagnose the following mental disorders:

1. Anorexia Nervosa:
	* Type: Eating disorder
	* Consequence: Low weight
	* Food Amount: Food restriction

2. Bulimia Nervosa:
	* Type: Eating disorder
	* Consequence: Purging
	* Food Amount: Binge eating

3. Fragile X syndrom:
	* Type: Genetic disorder
	* Symptoms: Delayed physical growth
	* Face Features: Long and narrow
	* Brain Function: Intellectual disability


4. Down syndrome:
	* Type: Genetic disorder
	* Face Features: Small chin and slanted eyes
	* Brain Function: Intellectual disability


**Work Strategy**
---

The project utilizes backward chaining in Prolog, an inference technique that employs IF-THEN rules. The interpreter breaks down the main goal into subgoals and continuously proves or disproves each objective. The system employs rules to represent knowledge and the Prolog interpreter to draw conclusions. 
For example:

IF

&nbsp;&nbsp;&nbsp;Type is eating disorder
 
&nbsp;&nbsp;&nbsp;Consequence is low weight
 
&nbsp;&nbsp;&nbsp;Food amount is food restriction

THEN

&nbsp;&nbsp;&nbsp;The mental disorder is diagnosed as Anorexia Nervosa
 
 
 **Type of Result Obtained**
---

The objective of this system is to identify the best diagnosis from a range of possibilities. Upon reaching the final goal, the system displays "Condition was diagnosed as..." followed by the identified mental illness. If no diagnosis is found, it will end with the message "The diagnosis was not found."


**How to Run and Obtain the Result**
---

 1. Open the SWI-Prolog application.

 2. Load the "Expert System for Medical Diagnosis" file.

 3. Once the file is loaded, type "diagnose." in the program.

 4. The system will begin running and prompt questions to diagnose the disorder.

 5. Respond to each question with "yes." or "no." accordingly.

 6. Let's consider a specific scenario

	* The system will ask: "Is the symptom abnormal eating habits?"

	* User should reply: "yes."

	* "Is the mentality a strong desire to be thin?"

	* User should reply: "yes."

	* "Is the consequence low weight?"

	* User should reply: "yes."

	* "Is the food amount food restriction?"

	* User should reply: "yes."

	* The system will display: "Condition was diagnosed as Anorexia Nervosa."

	* Result: true


This is a specific scenario, and you can explore other disorders by referring to the attached diagram.
