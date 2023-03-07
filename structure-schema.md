---
title: 'Structured metadata: from Markup to JSON'
teaching: 25
exercises: 60
---

![**Baker, M.** (2016) "1,500 scientists lift the lid on reproducibility.", _Nature_ **533**, 452 - 454. <a href="https://doi.org/10.1038/533452a" target="_blank">https://doi.org/10.1038/533452a</a>](fig/monyaBakerQuote.png){alt="Quote by Monya Baker in Nature from 2016, saying 'More than 70% of researchers have tried and failed to reproduce another scientist's experiments. More than half have failed to reproduce their own experiments.'"}
<br>

:::::::::::::::::::::::::::::::::::::: questions 

- What is semi-structured metadata?
- How do you extract semi-structured metadata from natural language.
- What is the JSON syntax?

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: objectives

- Explain the importance of semi-structured metadata for machine readability.
- Understand, read and write basic Markdown / HTML / XML / JSON.

::::::::::::::::::::::::::::::::::::::::::::::::


## Markup?
**Markup** is not part of the natural text or content but tells something **about it**...[^4], [^5]. 

**Punctuational markup** -- for example -- is placing periods or question marks at the end of sentences.

```text
This is a question?
```

**Presentational markup** is mainly about style. 

```markdown
Simple markdown will interpret the following word **bold**.
```

**Descriptive or declarative markup** declares what an element is; e. g. a member of a particular type or class like a:

```markdown
## headline
```

If design rules for headlines change, the document structure remains intact and is still in line with the authors original intention.

**Referential markup** refers to entities external to the document and may be replaced by those entities during processing. The World Wide Web markup language HTML (**H**yper**T**ext **M**arkup **L**anguage) e.g. uses the anchor `<a>` tag for hypertext references (hyperlinks).

```html
<a href="url">link text displayed to reader</a>
```
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: callout
Rigorous markup can make text (character strings) more accessible for computer analysis.
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

**SGML** (**S**tandard **G**eneralized **M**arkup **L**anguage) was one of the first industry standards for electronic publishing -- a meta-language for generalized, descriptive markup languages -- first accepted as an ISO standard in 1986. Both, HTML (1989) and XML (1998) are based on SGML.[^6]

**HTML** (**H**yper**T**ext **M**arkup **L**anguage) is the standard markup language for web pages.

![ [*] **Zender, C.** (2005) "Markup 101: Markup Basics.", SAS Institute. <a href="https://www.lexjansen.com/pharmasug/2005/Tutorials/tu12.pdf" target="_blank">https://www.lexjansen.com/pharmasug/2005/Tutorials/tu12.pdf</a>](fig/cynthiaZenderQuote.png){alt="Quote by Cynthia Zender, SAS Institue, saying 'To make markup work, the writer and the interpreter of the marked up content have to agree on the interpretation of the markup symbols.'"}

## XML

In contrast, the main purpose of **XML** (e**X**tensible **M**arkup **L**anguage) is **the transfer and storage of arbitrary data** on the World Wide Web.  XML is software- and hardware-independent. It is considered human-readable and allows for hierarchical (tree-like) structures. Data elements are wrapped in start `<...>` and end `</...>` "tags". XML tags can be customized by the author of the document, its markup is extensible.[^7]

```xml
<example>
    <title>This is the example title</title>
    <description>A simple XML example</description>
    <wordCount>1</wordCount>
</example>
```


## JSON

**JSON** (**J**ava**S**cript **O**bject **N**otation) is **not** a markup language. It is a **lightweight, human-readable, hierarchical format to store and transport data**.[^8] [JSON syntax](https://www.json.org/json-en.html) is inspired by JavaScript object notation.[^9] Like XML, JSON is software- and hardware-independent.

- data elements are defined in key/value pairs
- keys are of data type `string` (in quotes)
- values must be of data type `string`, `number`, `boolean`, `array` or `object` 
- elements are separated by commas
- curly braces hold objects
- square brackets hold arrays
- no comments supported
    
```json
{
    "key":"value",
    "aString":"string",
    "anInteger":5,
    "aFloat":0.5,
    "aBoolean":true,
    "anArray": ["item1", "item2", "item3"],
    "anObject": {
        "key1":"value1",
        "key2":"value2",
        "key3":"value3"
    }
}
```

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: callout 
Data exchange formats such as the **markup language XML** or **JSON** can be read and processed not only by humans but also by computers. Structured (meta)data is key to enable **machine-readability**. 
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: instructor
## Challenge notes

The following challenges 2 & 3 will be processed **consecutively in groups of 5 - 6 learners**.

**Total time:** 35 min

**Implementation:** <br>
Prepare shared notes documents for each group of learners attending the lesson. We have good experiences with copying the challenges into the documents and make space for collaborative working on the tasks. <br>
Try to be present with as many instructors as break-out rooms to moderate the discussions and answer questions.

**Shared notes:** <br>
You can find an example Markdown file for the group handouts <a href="../../../episodes/files/exampleGroupHandout.txt" target="_blank">**HERE**</a>. This document is optimized for use in a Hedgedoc document. 

##### <u>Challenge 2: Identify metadata in README.txt</u>

**Time:** 15 min

**Challenge type:** group activity

**Objective:** <br>
The learners practice the acquired knowledge of metadata identification in README style text formats.

##### <u>Challenge 3: Write JSON metadata record</u>

**Time:** 20 min

**Challenge type:** group activity

**Objective:** <br>
The learners create a structured JSON object literal, experience the difficulties in choosing meaningful key strings and value representations. 

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: challenge
## Challenge 2: Identify metadata in README.txt

<i class='fa fa-pencil fa-2x'></i>
You cannot make sense of the data you got from your collaborators. You ask them for supplemental information and they send you the following **README file** (see below).
<ul>
  <li>Read the README carefully.</li>
  <li>In the group, **discuss**, **decide** and **prioritize** which information in the text are valuable experimental metadata.</li> 
  <li>**Mark up the valuable information.** In markdown you can mark up the respective words with "==". <br> **Example**: `==This text will be highlighted==`</li>
</ul>

You can download the README as TXT file <a href="../../../episodes/files/README_exampleDataObject.txt" target="_blank">**HERE**</a> 


##### <u>README_exampleDataObject.txt</u>
```text
This README file describes the data in trainingObject.csv

The data describes the biomechanical acceleration and screams detected of a test person during the ride of the roller coaster "Flight of the Bat" in Gotham City. 

The data was collected by Bruce Wayne and Selina Kyle (Institute for Vigilance and Nightly Motion -- Justice League) on 2022-02-28 in Gotham City, New Jersey.

The test person (male) is 5'11 tall and weighs 187 lbs.

The test person strapped the recording device (iPhone X) with a running armband to their left upper arm and activated the biomechanical acceleration and scream detection of the application "Physics Toolbox Suite" by Vieyra Software.

- "t" describes the ride time at which measurements were taken upon activating the recording in seconds.
- "ax" describes the biomechanical acceleration of the test person on the x axis in m/s².
- "ay" describes the biomechanical acceleration of the test person on the y axis in m/s².
- "az" describes the biomechanical acceleration of the test person on the z axis in m/s².
- "scr" is a boolean indicating a detected scream of the test person.
```
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: solution
This README describes the data in **trainingObject.csv**


The data describes the **biomechanical acceleration** and **screams detected** of a test person during the ride of the roller coaster **"Flight of the Bat"** in **Gotham City**. 

The data was collected by **Bruce Wayne** and **Selina Kyle** (**Institute for Vigilance and Nightly Motion - Justice League**) on **2022-02-28** in **Gotham City, New Jersey**.


The test person (**male**) is **5'11''** tall and weighs **187 lbs**.


The test person strapped the **recording device (iPhone X)** with a running armband to the **left upper arm** and activated the biomechanical acceleration and scream detection of the application **Physics Toolbox Suite by Vieyra Software**.
During the ride, the test person was instructed to firmly hold on to the safety handles in order to avoid excessive movement of the arm. The test person was seated in **row 10** on the **outer left** (**seat 37**).

"**t**" describes the **ride time** at which measurements were taken upon activating the recording in **seconds**.
"**ax**" describes the **biomechanical acceleration of the test person on the x axis** in **m/s²**.
"**ay**" describes the **biomechanical acceleration of the test person on the y axis** in **m/s²**.
"**az**" describes the **biomechanical acceleration of the test person on the z axis** in **m/s²**.
"**scr**" is a **boolean** indicating a **detected scream of the test person**.
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: challenge
## Challenge 3: Write JSON metadata record

You have manually marked up the relevant information in the README. However, your project requires you to provide metadata in the form of a **machine-readable JSON metadata record**. The project provides you with a simple example JSON object (remember, that curly braces hold objects):

```json
{
  "key":"value",
  "key":"value"
}
``` 

- Based on the information identified in the README; write a well-formed, descriptive JSON object.
- Collaboratively, find suitable keys (aka variable names) to your values.
- You may want to use some [JSON formatter web service](https://jsonformatter.org/) to check and pretty-print your output

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: hint

**Keep in mind**, that values in JSON must be one of the following data types:

- a string `""`
- a number `42`
- a boolean `True`
- null `null`
- an array `[]`
- an object `{}`

**Example:**
```json
{
    "key":"value",
    "aString":"string",
    "anInteger":5,
    "aFloat":0.5,
    "aBoolean":true,
    "anArray": ["item1", "item2", "item3"],
    "anObject": {
        "key1":"value1",
        "key2":"value2",
        "key3":"value3"
    }
}
```
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: solution
This is just one (of many) valid solutions.

```json
{
  "fileName": "trainingObject.csv",
  "abstract": "The data describes the biomechanical acceleration and screams detected of a test person during the ride of the roller coaster \"Flight of the Bat\" in Gotham City.",
  "format": "text/csv",
  "date": "2022-02-28",
  "creator": [
    {
      "creatorName": "Bruce Wayne",
      "creatorAffiliation": "Institute for Vigilance and Nightly Motion - Justice League"
    },
    {
      "creatorName": "Selina Kyle",
      "creatorAffiliation": "Institute for Vigilance and Nightly Motion - Justice League"
    }
  ],
  "experimentalParameters": {
    "testRide": {
      "rideName": "Flight of the Bat",
      "location": "Gotham City, New Jersey",
      "rideType": "roller coaster"
    },
    "testPerson": {
      "sex": "male",
      "height": 180
    },
    "recording": {
      "testDevice": "iPhone X",
      "testDeviceFixture": "left upper arm",
      "testApp": "Physics Toolbox Suite by Vieyra Software"
    }
  },
  "columns": [
    {
      "columnName": "t",
      "columnDescription": "ride time at which measurements were taken upon activating the recording in seconds",
      "dataType": "number",
      "columnUnit": "sec"
    },
    {
      "columnName": "ax",
      "columnDescription": "biomechanical acceleration of the test person on the x axis in m/s²",
      "dataType": "number",
      "columnUnit": "m/s²"
    },
    {
      "columnName": "ay",
      "columnDescription": "biomechanical acceleration of the test person on the y axis in m/s²",
      "dataType": "number",
      "columnUnit": "m/s²"
    },
    {
      "columnName": "az",
      "columnDescription": "biomechanical acceleration of the test person on the z axis in m/s²",
      "dataType": "number",
      "columnUnit": "m/s²"
    },
    {
      "columnName": "scr",
      "columnDescription": "boolean indicating a detected scream of the test person",
      "dataType": "boolean",
      "columnUnit": "1"
    }
  ]
}
```
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: instructor
## Break :coffee:

We recommend a **15 min break** at this point. <br>
You can use this time, to set-up the plenary discussion.
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: instructor
## Discussion notes

**Time:** 20 min

**Implementation:** <br> 
Display the final JSON object literals of the different groups next to each other. Allow for some time, so that the learners can compare the different results and identify similarities and differences. 

**Objective:** <br>
At this point, the learners should experience some form of frustration - the metadata is now structured and machine readable, yet interoperability and reusability haven't been achieved. This frustration is relieved in the next episode "**Enabling technolgy & Schemas**", when schemas and standards are introduced.

**Creator's recommendation:** <br>
While moderating the discussion, pay attention to and highlight the following characteristics of the created JSON object literals:
<ul>
  <li>(if done correctly) all JSON object literals are **valid**, **functional** and **machine readable**</li>
  <li>representation of key strings (e.g. camel case vs. snake case, capitalization)</li>
  <li>structure of the JSON object literal (e.g. nested objects vs. flat structure)</li>
  <li>value representation</li>
</ul>

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: discussion
## Plenary result discussion

- What was easy generating the structured metadata record?
- What was hard? Which points were intensely discussed in the group?
- Which differences do you see between the different JSON metadata records?
- How do you feel after comparing the results?

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: keypoints 

- Markups add information to a text that is separated from the content. 
- `XML` and `JSON` are **lightweight**, **hierarchical** file formats to store and transfer data.
- `XML` and `JSON` are **human readable**, **software** and **hardware independet**

::::::::::::::::::::::::::::::::::::::::::::::::

[^4]: James H. Coombs et al. (November 1987). Markup Systems and the Future of Scholarly Text Processing. Communications of the ACM 30. http://xml.coverpages.org/coombs.html#Note1
[^5]: Cynthia Zender (2005). Markup 101: Markup Basics. SAS Institute. https://www.lexjansen.com/pharmasug/2005/Tutorials/tu12.pdf
[^6]: https://www.iso.org/standard/16387.html
[^7]: "XML Tutorial". (C) 1999-2022. Refsnes Data, W3Schools. https://www.w3schools.com/xml/
[^8]: https://www.ecma-international.org/publications-and-standards/standards/ecma-404/
[^9]: "JSON Introduction". (C) 1999-2022. Refsnes Data, W3Schools. https://www.w3schools.com/js/js_json_intro.asp