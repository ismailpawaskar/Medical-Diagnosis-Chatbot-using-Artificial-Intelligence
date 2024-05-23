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

