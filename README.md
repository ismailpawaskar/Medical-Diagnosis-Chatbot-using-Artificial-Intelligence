# Medical Diagnosis System

## Abstract
In recent decades, AI has found numerous applications in the medical field. This project involves a Prolog-based medical expert system designed to diagnose diseases based on patient symptoms. The system aims to assist doctors in making accurate diagnoses and can serve as a crucial tool in emergencies or when human error might occur.

## Table of Contents
- [Overview](#overview)
- [Features](#features)
- [Installation](#installation)
- [Disease Identification](#disease-identification)
- [How it works](#how-it-works)

## Overview
This medical expert system diagnoses diseases by evaluating symptoms that can be seen or felt. It helps doctors make appropriate diagnoses, particularly when symptoms overlap across different diseases. The expert system is implemented in SWI-Prolog and provides solutions like suggesting medications and advising treatments.

## Features
- **Symptom-Based Diagnosis**: Determines the disease based on user-provided symptoms.
- **Treatment Suggestions**: Recommends appropriate medicines and treatments for the diagnosed disease.
- **Prolog-Based Implementation**: Utilizes SWI-Prolog for decision making and logic processing.
- **Educational Tool**: Can be used in educational settings to teach about disease symptoms and diagnosis.

## Installation
To set up the project locally, follow these steps:

1. Clone the repository:
    ```bash
    git clone https://github.com/yourusername/medical-diagnosis-system.git
    ```
2. Navigate to the project directory:
    ```bash
    cd medical-diagnosis-system
    ```
3. Ensure you have SWI-Prolog installed. You can download it from [here](https://www.swi-prolog.org/Download.html).

## Usage
To run the expert system, execute the following command in your terminal:
```bash
swipl -s medical_diagnosis.pl
```

## Disease Identification
The system can diagnose the following diseases based on symptoms:

- *Cold*: headache, runny nose, sneezing, sore throat.
- *Flu*: fever, headache, chills, body ache.
- *Typhoid*: headache, abdominal pain, poor appetite, fever.
- *Measles*: fever, runny nose, rash, conjunctivitis.
- *Malaria*: fever, sweating, headache, nausea, vomiting, diarrhoea.
- *Chickenpox*: fever, tiredness, headache, inflammation of brain, skin infection, rash.
- *Cholera*: headache, muscle cramps, vomiting, diarrhoea.


## How It Works

### System Overview
The Medical Diagnosis System is designed to assist in diagnosing common diseases based on symptoms provided by the user. The system is implemented using SWI-Prolog, which leverages logical rules to make decisions. Below is a detailed explanation of how the system operates:

1. **Symptom Input**:
    - The user is prompted to enter symptoms they are experiencing. These symptoms are fed into the system for analysis.

2. **Rule-Based Processing**:
    - The system uses a set of predefined rules written in Prolog. These rules correlate specific symptoms with potential diseases.
    - Each disease in the system has an associated set of symptoms. For example, the rule for diagnosing the flu might look like this:


3. **Disease Diagnosis**:
    - The system matches the provided symptoms against its database of rules to determine the most likely disease.
    - If the symptoms match the rule set for a particular disease, the system will diagnose that disease.

4. **Treatment Suggestions**:
    - Once a diagnosis is made, the system provides a list of recommended treatments and medications.
    - The treatment suggestions are also encoded as rules within the Prolog system. For example:
        ```prolog
        treatment(flu, [rest, hydration, antiviral_medications]).
        ```

5. **User Notification**:
    - The system outputs the diagnosis and the recommended treatment plan to the user.
    - This information helps the user understand their condition and the next steps they should take.

### Example Workflow
Here’s an example of how the system operates from start to finish:

1. **User Input**:
    - The user starts the system and is prompted to enter their symptoms.
    - Example: The user enters `fever, headache, chills, body ache`.

2. **Symptom Matching**:
    - The system checks these symptoms against its rules.
    - It finds that the symptoms match the rule set for the flu.

3. **Diagnosis**:
    - The system diagnoses the user with the flu.

4. **Treatment Recommendation**:
    - The system suggests treatments such as rest, hydration, and antiviral medications.

5. **Output**:
    - The system displays the diagnosis and treatment suggestions to the user.

### Prolog Implementation
The core logic of the system is implemented in SWI-Prolog. The rules for diagnosis and treatment are written in a way that allows the system to perform logical inference based on the input symptoms. Below is a simplified example of how rules are defined in Prolog:

