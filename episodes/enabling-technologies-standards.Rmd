---
title: "Enabling Technologies & Standards"
teaching: 35
exercises: 70
output:
  html_document:
    df_print: paged
---

![](fig/timBernersLee.png){alt="Quote by Tim Berners-Lee saying 'The original idea of the web was that it should be a collaborative space where you can communicate through sharing information.'"}
<br>

:::::::::::::::::::::::::::::::::::::: questions 

- What are the benefits of creating / using a metadata schema / standard?
- How do you find a suitable metadata standard or terminology for your research field online?

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: objectives

- Understand, read and write XML / JSON schema.
- Find research field specific metadata standards and terminologies.

::::::::::::::::::::::::::::::::::::::::::::::::


## The Web is not the internet

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: instructor
## Lecture: A brief history of the World Wide Web

**Slide set**: <a href="../files/slideSet/BriefWebHistory_CarpentriesIncubator_ScientificMetadata.pdf" target="_blank" download>BriefWebHistory.pdf</a>

**Time estimate**: 10 min

1. Before we dive deeper into the topic of metadata and how we can make it more accessible, we would like to travel a few decades back to the beginnings of the World Wide Web.
2. After three decades, browsing the internet, catching up with friends and family on social media, online shopping and streaming the latest shows, we tend to forget that the World Wide Web was actually created by and for the scientific community. 
3.When the researchers Tim Berners-Lee and Robert Cailliau - both working at the CERN research centre - proposed their idea of the World Wide Web, they intended to meet the demand for automated information-sharing between **scientists in universities and institutes around the world**. So the World Wide Web was, from its beginning, meant to facilitate scientific data exchange.
4. And even long before the World Wide Web, the scientific community developed protocols that enabled the digital sharing of data, such as hypertext in the 1960s, the Transmission Control Protocol/Internet Protocol (TCP/IP) in the 1970s and Mail Transfer Protocols in the 1980s.
5. Based on these early protocols, the building blocks of todays World Wide Web were developed. HTML is still the standard markup language for documents designed to be interpreted by and displayed in web browsers. The HyperText Transfer Protocol, which is an application layer protocol to ensure client server communication on the Web. And URIs, Uniform Resource Identifiers, which uniquely identify resources on the web and ensure their accessibility and retrievability.
6. We will come back to this technology later in this lesson in more detail.
7. A crucial element for the broad implementation of the World Wide Web was the creation of a web browser to interpret and display HTML documents that is compatible across various operating systems. This actually achieved Nicola Pellow in 1990, who, at this time, was an undergraduate intern at CERN (<i>little feminist side note</i> :wink:).
8. Within the scientific community, the World Wide Web was an immediate success. Already in 1991, the arXiv preprint repository switched from email dissemination of manuscripts to HTTP. The picture on the right gives an insight how scientific article were distributed before the World Wide Web. You couldn't simply click on any article that you found on Google Scholar and download it - provided it isn't hidden behind a pay wall - and decide later, whether it was helpful or not. You needed to exactly know, which article you want to study, contact the archiving repository, wait for an actual human being to retrieve the article, scan it and send it back to you. (<i>To reactivate the learners, you can ask them at this point, who has a folder on their drive for "unread articles" or "articles to read".</i>). The first German institute to connect a web server to the Web, was the "Deutsches Elektronen-Synchrotron DESY. (<i>Well, the lesson was created within the Helmholtz Association in Germany, which makes this a nice Fun Fact for the original audience.</i>). 
9. Today the web hosts so many repositories - for research articles and data, global, local, research field overarching or specific - that it becomes hard to find the right repository for the resource you want to retrieve or upload. Needless to say that you can find several repositories for repositories online. To sum it up, the World Wide Web was originally created to share data between scientists and scientific institutions and it succeeded so well, that today it is barely imaginable to conduct research without the web.

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

In 1989 researchers Tim Berners-Lee and Robert Cailliau started their HyperText project called the WWW (**W**orld-**W**ide **W**eb, short Web) at the CERN research center in Geneva, Switzerland. The Web was developed to "meet the demand for automated information-sharing between scientists in universities and institutes around the world".[^10]

The WWW is a service on the application layer of the internet protocol stack TCP/IP (**T**ransmission **C**ontrol **P**rotocol/**I**nternet **P**rotocol) -- invented by Vint Cerf and Robert (Bob) Elliot Kahn in the 1970s.

The World Wide Web main building blocks are:
- HTML markup language with "hyperlinks"
- HTTP (**H**yper**T**ext **T**ransfer **P**rotocol)
- URI (**U**niform **R**esource **I**dentifier)

HTML applies the ideas of HyperText and HyperMedia -- terms coined by <a href="https://www.youtube.com/user/TheTedNelson/videos" target="_blank">Ted Nelson</a> in the 1960s:

<br>

> "a combination of natural language text with the computer's capacity for interactive branching, or dynamic display ... "\
> - <cite><a href="https://ieeexplore.ieee.org/document/1663693" target="_blank">Ted Nelson</a></cite>

<br>

HTTP is a simple protocol that sets communication rules for client and server software on the World Wide Web. For URI see chapter [(Web) Location & Identifiers](web-location-identifiers.html){target="_blank"}.

In 1992 Deutsches Elektronen-Synchrotron DESY in Hamburg connected a web server to the WWW. An even earlier adopter was the **arXiv preprint repository**. They switched from email to HTTP for manuscript dissemination in 1991.[^11]

So-called **web repositories** store and publish (scholarly) digital objects -- like paper publications and research data -- and their **metadata records**. This way, they aim to improve the persistent **findability and accessibility of research output.** Repositories in turn are indexed for findability in registry services like <a href="https://www.re3data.org/" target="_blank">https://www.re3data.org/</a> and <a href="https://v2.sherpa.ac.uk/opendoar/" target="_blank">https://v2.sherpa.ac.uk/opendoar/</a>.

## Metadata Schemas
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: callout 
**A metadata schema is a template** which exemplifies the metadata elements expected and how they should be structured.
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: instructor
## Lecture: Metadata schemas

**Slide set**: <a href="../files/slideSet/MetadataSchemas_CarpentriesIncubator_ScientificMetadata.pdf" target="_blank" download>MetadataSchemas.pdf</a>

**Time estimate**: 10 min

1. Even though the World Wide Web has provided the means of sharing information with individuals and broad communities easily, we have experienced yesterday and in our daily live as researchers, that simply sharing data does not guarantee the reusability of these information. And we have all experienced the yearning for guidelines on how these information should be provided. So we will now introduce you to metadata schemas. (<i>You can also show a slide with the JSON object literal results from day 1 at this point or learner quotes from the result discussion of Challenge 3.</i>)
2. With a metadata schema, it is possible to express expectations on how a metadata record should be structured and even enforce this structure.
3. An example for enforced - or validated - data submission we are probably all familiar with, is the classic customer information form, that you need to fill, when you are placing an order in an online shop. 
4. We know these asterisks, that tell us, that these data entries are required. Some entries only allow string values, like the name, or specific formats, like e-mail addresses and will throw an error as soon as you diverge from the expected data type or format. Or you have a fixed subset of values, which you can pick from a drop-down list.
5. If you press submit, the data in this form will be validated and, if it passes this validation, stored or used in other applications. Which means, that it will be stored and transmitted in a lightweight data format, such as JSON.
6. The titles of the fields, specify the keys - or properties of the JSON object...
7. which are assigned their respective values.
8. For metadata records in general, these conventions or constrains can be set by metadata schemas. These schemas are defined in the same data format as the expected metadata record, such as XML or JSON. Again, this allows for parsing and automated validation.
9. This means, XML schemas are written in XML and JSON schema is written in JSON. So far, we have written JSON object literals and we will be further focusing on JSON...
10. so we will take a deeper look on JSON Schema.
11. On the right, you see a simple JSON schema, which follows the JSON schema conventions. This is indicated by the "$schema"-key. The `$`-sign in JSON indicates to a reference and we can give the schema-specifications as URL. We will tackle the topic of referencing in metadata records later in this lesson.
12. The schema specifies keys - or properties - that require to enter a data value. In this case...
13. The superhero property is required and expects an entry of data type: string.
14. A second property is defined: power. However, power is not listed in the required properties, so it is optional.
15. Coming back to the data types: This schema describes a JSON **object** in which the superhero-value should be a **string** and the power-value needs to be of data type **integer**. And for the human reader, some meaningful descriptions are added to describe the individual properties.
16. So based on this example schema, the object on top would be valid. A string-value is assigned to the required property. The bottom object, however, does not conform with the schema and would throw an error, as the value data type is not a string. **It is important to know, that schema validation only checks for syntactical validity. In this case, it only checks, whether the object contains the required property:value pair and whether the value conforms with the expected data type. To prevent nonsensical values, a meaningful property description can be of great help."
17. <i>(allow for some time for questions)</i>
18v. Before we write a JSON schema for our roller coaster experiment data, let's get back to the customer information form and design a JSON schema, that enforces the data entries for this form together.

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: instructor
# Guided confrontation: Live coding a JSON schema

The concept of a schema can be overwhelming for learners with little to no prior knowledge. To prepare the learners for Challenge 4, we recommend to include an **interactive live coding session**. The following instructions and suggestions are based on the narrative we follow in our course set-up.

**Time**: 8 min

**Instructor material**: <br>
<ul>
  <li><a href="../files/customerInformationForm.png" target="_blank" download>customerInformationForm.png</a></li> 
  <li><a href="../files/customerInformationForm_schemaSolution.json" target="_blank" download>customerInformationForm_schemaSolution.json</a></li>
</ul>

**Creators recommendation**: <br>
<ul>  
  <li>Introduce a customer information form as an example for data validation / enforcement in your lecture (see also: */include teaching script anchor/*).</li>
  <li>Open the image of the customer information form and an empty JSON file in **split-screen view**.</li>
</ul>
<a href="../../docs/files/liveCodingScreenshot.png" target="popup" onclick="window.open('../docs/files/liveCodingScreenshot.png,'popup','width=1200'); return false;" onMouseOver="document.liveCoding.src='../../docs/files/CLICKliveCodingScreenshot.png';" onMouseOut="document.liveCoding.src='../../docs/files/liveCodingScreenshot.png';"><span>
<img src="files/liveCodingScreenshot.png" alt="Screenshot of the recommended live coding session." width="800" name="liveCoding"/></span></a>
<ul>
  <li>For live coding, we recommend using an **IDE** with **JSON syntax highlighting** (e.g. VS Code)</li>
</ul>

**Narrative / Teaching script**: <br>
<ul>
  <li>*start off with 2 indentations*</li>
  <li>demonstrate specifying the first property in the form `"Full Name"` by entering a meaningful `"description"` and `"type":"string"`</li>
  <li> encourage the learners to shout out the values (and keys), that specify the subsequent form properties.</li>
  <li> highlight the following aspects: </li>
    <ul>
      <li>`"Country/Region"`: to restrict a value to a fixed set of values, the keyword `"enum"` is used. Fixed values are specified in an `array` of unique elements.</li>
      <li>`"Number of super powers"`: introduce `"type":"number"`</li>
      <li>`"E-mail"`: introduce the `"format"`-keyword. `"format":"email"` validates against the correct formatting of an e-mail address (`someString` - `@-sign` - `domain name`). However, it does check, whether the e-mail address exists.</li>
      <li>`"Date of birth"`: specify `date`-format.</li>
    </ul>
  <li> **The specified keywords represent the `"properties"` of the `customerInformation`-object**</li>
  <li> the `"properties"`-key of a JSON schema object takes a value of data type `object` -> *enclose the specified field-objects in curly brackets*</li>
  <li> collaboratively define the JSON schema keys `"title"`, `"description"`, and `"type"`</li>
  <li> highlight, that a JSON schema is a **JSON object literal** -> *enclose the schema-object in curly brackets*</li>
  <li> Finally, draw the learners attention to the **mandatory** fields in the customer information form and introduce the `"required"`-keyword</li>
</ul>


::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

**XML Schemas (.xsd)** are written in XML and used to describe & syntactically validate the structure of XML documents or (meta)data records.[^12]

The <a href="https://json-schema.org/" target="_blank">**JSON Schema vocabulary**</a> is used to describe & syntactically validate the structure of JSON (meta)data records. We will focus on **JSON Schema** in our next hands-on task. Each JSON schema is a JSON object literal by itself.[^13] 
    
A simple JSON schema could look like the one below. It declares:
<ul>
  <li>JSON Schema version with `$schema`</li>
  <li>a list (an array) of required (i. e. mandatory) properties</li>
  <li>one required property (i.e. ``"superhero"``)</li>
  <li>one optional property (i.e. ``"power"``)</li>
  <li>data type constraints for record values (e.g. ``"type": "integer"``)</li>
</ul>
    
There are also some `descriptions` added for the human reader.

```json
{
  "$schema": "https://json-schema.org/draft/2020-12/schema",
  "description": "In real life you would add a meaningful description here.",
  "type": "object",
  "required": [
    "superhero"
  ],
  "properties": {
    "superhero": {
      "description": "A mandatory string property.",
      "type": "string"
    },
    "power": {
      "description": "An optional numeric property.",
      "type": "integer"
    }
  }
}

```
A JSON instance is syntactically valid, if it conforms to the definition described by the JSON schema. Note, that the JSON Schema `required` keyword holds a list of keys that must be present for a JSON object to be considered a valid instance of this schema.

```json
{
  "superhero": "I am just a string"
}
```

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: callout 
The most challenging part of schema development can be to **have everyone agree on the same expectations.**
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: instructor
## Lecture: Challenge introduction

**Slide set**: <a href="../files/slideSet/ChallengeIntroduction_4_5_CarpentriesIncubator_ScientificMetadata.pdf" target="_blank" download>Challenge4and5.pdf</a>

**Time estimate**: 5 min

1. Let's briefly recap on the most important characteristics of a JSON schema.
  - each of the properties in the schema are described in objects.
  - the data type of a property is specified by the key `type`.
  - if you want to further specify the format of a data entry, use the key `format`.
  - mandatory data entries are given by the key `required` in an array.
  - for controlled lists, you specify the given values in an array and the key `enum`.
2. The complete specifications for JSON schema can be found on json-schema.org.
3. If you develop a schema, that is supposed to be used by a group of people, the most challenging part can be to have everyone agree on the same expectations.
3. <i>(Allow for some time for questions.)</i>
4. We will now head back to our roller coaster data. In your collaboration you spend some time in discussing your expectations on the metadata, that is necessary to record with the data. But finally you have created an example JSON object, basically the ideal metadata record for the experiment within your collaboration. To enforce this metadata structure, you want to write a JSON schema. As this can get very lengthy...
5. you agree to distribute the schema definition amongst the collaborators.
6. We will now head back to the breakout rooms in groups and work on Challenge 4 and 5. In challenge 4 you will discuss and develop an excerpt of the roller coaster JSON schema.
7. And in Challenge 5 you will be introduced to an online tool, with which you can put your work invested into the schema into use.
8. (<i>Specify the time, when the learners are expected to be back in the lecture setting.</i>)

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: instructor
## Challenge: JSON schema / Form input & validation with JSON schema

The following challenges 4 & 5 will be processed **consecutively in groups of 5 - 6 learners**.
We made the experience, that changing the group composition for these tasks benefits the overall collaborative atmosphere. 

**Total time:** 30 min

**Implementation:** <br>
In accordance with challenges 2 & 3, we recommend using a pre-structured shared notes document with the gorups.

**Shared notes:** <br>
You can find an example Markdown file for the group handouts <a href="../files/exampleGroupHandout.txt" target="_blank">**HERE**</a>. This document is optimized for use in a Hedgedoc document. 

##### <u>Challenge 4: JSON Schema</u>

**Time:** 20 min

**Challenge type:** group activity, production

**Objective:** <br>
By writing a short excerpt of a JSON schema, the learner get familiar with the schema syntax, gain the ability to read and understand a schema, and get to know some important JSON schema keywords. By writing the schema in a group set-up, the learner experience the discussion process as a crucial part of schema development.

##### <u>Challenge 5: Form input & validation with JSON schema</u>

**Time:** 10 min

**Challenge type:** group activity **OR** individual exploration

**Objective:** <br>
By downloading and inspecting the final JSON schema, the learners comprehend the complexity a metadata schema can acquire. With the implementation of the schema in the UI of the react-jsonschema-form playground, the learners bring the developed schema into use, get to know a software tool, they can benefit from, and experience relieve of the frustration after Challenge 3.

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: challenge
## Challenge 4: JSON Schema
    
After a couple of researchers upload their JSON metadata records to the project repository it becomes obvious that well-formed JSON metadata describing similar experiments can still be expressed in myriad ways.

Your collaboration decides to develop a metadata schema to standardize metadata records across the project. Consensus is encoded in a JSON Schema.

**Now its your task to help with the subschema for experimental conditions!**

In the following **code block** you see valid JSON metadata that describes experimental conditions as agreed on in the project.
<br>

```json
{
  "experimentalConditions": {
    "ride": {
      "rideType": "roller coaster",
      "rideName": "Flight of the Bat",
      "location": "Gotham City, New Jersey"
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
  }
}
```

In the following code block you see the JSON schema draft for the experimental conditions. Your collaborators already modelled constraints and valid values for `ride` and `testPerson`.<br>

**Discuss and add constraints to `recording` property.**

- `testDevice`, `testDeviceFixture` and `testApp` are **mandatory properties** for the **`recording`** object
- **`testDevice`** value must be one of:
    - `iPhone X`
    - `iPhone 6`
    - `iPhone 6s`
    - `other`
    
- **`testApp`** value must be one of:
    - `Physics Toolbox Suite by Vieyra Software`
    - `Bunny Rollercoaster Physics App`
    
- **`testDeviceFixture`** value must be one of:
    - `left upper arm`
    - `right upper arm`
    - `mouth fixture device`
    - `other`
<br>

```json
{
  "experimentalConditions": {
    "description": "A summary of the experimental conditions. Include sufficient detail to facilitate search and discovery.",
    "type": "object",
    "required": [
      "recording",
      "ride",
      "testPerson"
      ],
    "properties": {
    
      "recording": {
      /* Insert your schema here and delete this comment */
        },
      
      "ride": {
        "description": "Properties of the ride.",
        "type": "object",
        "required": [
          "rideType",
          "rideName"
        ],
        "properties": {
          "rideType": {
            "description": "Ride type.",
            "type": "string",
            "enum": [
              "roller coaster",
              "water slide",
              "bob sled"
            ]
          },
          "rideName": {
            "description": "Official name of the ride.",
            "type": "string",
            "minLength": 3
          },
          "location": {
            "description": "City and State in which ride is located.",
            "type": "string",
            "minLength": 10
          }
        }
      }
    },
    "testPerson": {
      "description": "Properties of person carrying the test device.",
      "type": "object",
      "required": [
        "height",
        "sex"
      ],
      "properties": {
        "height": {
          "description": "Height of test person in cm (SI unit of length).",
          "type": "number",
          "minimum": 120,
          "exclusiveMaximum": 220
        },
        "sex": {
          "description": "Sex of test person.",
          "type": "string",
          "enum": [
            "female",
            "male",
            "non-binary",
            "not disclosed"
          ]
        }
      }
    }
  }
}
```

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: solution
```json
{
    "experimentalConditions": {
        "description": "A summary of the resource. Include sufficient detail to facilitate search and discovery.",
        "type": "object",
        "required": [
            "recording",
            "testObject"
            "testPerson"
            ],
        "properties": {
            
            */ add your schema here /*
            "recording": {
                "description": "",
                "type": "object",
                "required":[
                    "testApp",
                    "testDevice",
                    "testDeviceFixture"
                    ],
                "properties": {
                    "testApp": {
                        "description": "Test app used.",
                        "type": "string",
                        "enum": [
                            "Physics Toolbox Suite by Vieyra Software",
                            "Bunny Rollercoaster Physics App"
                            ]
                        },
                    "testAppVersion": {
                        "description": "Version of test app (free text input). Full semantic versioning input preferred: Major.minor.bugfix",
                        "type": "string",
                        "minLength": 1
                        },
                    "testDevice": {
                        "description": "Test device used.",
                        "type": "string",
                        "enum": [
                            "iPhone X",
                            "iPhone 6",
                            "iPhone 6s",
                            "other"
                            ]
                        },
                    "testDeviceFixture": {
                        "description": "Test device fixture.",
                        "type": "string",
                        "enum": [
                            "left upper arm",
                            "right upper arm",
                            "mouth fixture device",
                            "other"
                            ]
                        }
                    }   
                },
                
            */ this part was prepared by your collaborators /*
            "testObject": {
                "description": "A free text abstract of the experimental setup.",
                "type": "object",
                "required": [
                    "rideType",
                    "rideName"
                    ],
                "properties": {
                
                    "rideType": {
                        "description": "Specification of ride type of the tested object",
                        "type":"string",
                        "enum": [
                            "roller coaster",
                            "water slide",
                            "bob sled"
                            ]
                        },
                        
                    "rideName": {
                        "description": "Official name of the ride.",
                        "type": "string",
                        "minLength": 1
                        },
                        
                    "location": {
                        "description": "City and State in which the ride is located",
                        "type": "string"
                    }
                },
                
            "testPerson": {
                "description": "Information about the subject carrying the test device.",
                "type": "object",
                "required": [
                    "height",
                    "sex"
                    ],
                "properties": {
                
                    "height": {
                        "description": "The height of the test person in cm (SI unit of length).",
                        "type": "number",
                        "minimum": 120,
                        "exclusiveMaximum": 220
                        },
                        
                    "sex": {
                        "description": "The sex of the test person.",
                        "type": "string",
                        "enum": [
                            "female",
                            "male",
                            "not disclosed"
                            ]
                        }
                    }
                }
        }
```
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: challenge
## TASK 5: Form input & validation with JSON schema

**Congratulations, you finished your metadata schema!
Now, collecting interoperable metadata will be a lot easier in your collaboration.**

We must admit: writing a valid JSON metadata record for each and every experiment that you perform is tedious and time consuming. But now that you have a JSON Schema at hand, things will get a lot easier! The project sets up a user-friendly HTML form interface for the input of JSON metadata.

**Let's try this**:
<ul>
  <li>Download the full JSON schema here: <a href="files/exampleDataObject_schema.json" target="_blank" download>exampleDataObject_Schema.json</a></li>
  <li>Inspect the JSON schema briefly</li>
  <li>In your browser go to <a href="https://rjsf-team.github.io/react-jsonschema-form/" target="_blank">react-jsonschema-form playground</a>.</li> 
  <li>Delete sample content in `JSONschema` and `formData`</li>
  <li>Copy and paste the full schema into the `JSONschema` box</li>
  <li>Check again if Chuck Norris properties reappeared in `formData` results; he can be tough :smile:</li>
  <li>Inspect the form interface thoroughly.</li>
  <li>**Optional:** Copy the final JSON object literal in `formData` in a separate text document and save the file as `exampleDataObject.json`</li> 
</ul>  
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: hint
## Good to know
Note that the JSON Schema used for this demo **lacks the recommended `$schema` keyword**: this is because the playground will reject the keyword.
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: instructor
## Discussion: Challenge reflection

**Time:** 10 min

**Implementation:** <br>
<ul>
  <li>share the [react-jsonschema-form playground](https://rjsf-team.github.io/react-jsonschema-form/){target="_blank"} pre-filled with the final schema and metadata values in your browser **OR**</li>
  <li>share the final **JSON schema** on your screen **OR**</li>
  <li>display the final **JSON metadata records** (`exampleDataObject.json`) of each group next to each other</li>
</ul>

**Objective:** <br>
The learners are aware of the advantages of a metadata schema and metadata record validation, pay attention to interface interpretations in the proposed tool and feel relieve of the frustration experienced after challenge 3 based on the metadata record harmonization.

**Leading questions:**<br>
<ul>
  <li>How does the browser display lists of pre-defined values (specified as `enum` in the schema)?</li>
  <li>How are `arrays` and `objects` interpreted in the form interface?</li>
  <li>What happens if you enter an invalid value (e.g. try to enter a string for the test persons `height`)</li>
  <li>What happens if you enter a nonsense value (e.g. try to enter a nonsense string for `rideName`)</li>
  <li>How does the web service respond if you click on submit without filling all the "required" fields?</li>
</ul>

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: discussion
## Plenary result discussion

<ul>
  <li>How does the browser display lists of pre-defined values (specified as `enum` in the schema)?</li>
  <li>How are `arrays` and `objects` interpreted in the form interface?</li>
  <li>What happens if you enter an invalid value (e.g. try to enter a string for the test persons `height`)</li>
  <li>What happens if you enter a nonsense value (e.g. try to enter a nonsense string for `rideName`)</li>
  <li>How does the web service respond if you click on submit without filling all the "required" fields?</li>
</ul>
    
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: instructor
## Lecture: Summary - Annotating the example data

**Slide set**: <a href="../files/slideSet/SummaryExampleDataAnnotation_CarpentriesIncubator_ScientificMetadata.pdf" target="_blank" download>SummaryExampleDataAnnotation.pdf</a>

**Time estimate**: 5 min

(<i>Challenge 5 concludes the work with the example dataset. At this point we like to give a brief summary about the metadata annotation process</i>)

1. Let's have a last look on our roller coaster data.
2. Yesterday morning, we started with a cryptic dataset, that was simply not understandable without further information. We were even guessing the meaning of the chosen variable names...
3. after putting the dataset in context, we did not only know, how to read the data...
4. but also who recorded the data, the test object and when it was recorded...
5. and which conditions applied to this particular experiment.
6. By structuring our metadata records as JSON objects...
7. we made the information not only findable but also accessible to machines. As we put some effort into developing a schema for the metadata records, we can make sure, that experiments in the same study and collaboration, are recorded and annotated in the same way, which increases its reusability...
8. and ensures, that metadata records can be validated.
9. (<i>If you like, recommend some tools that support and facilitate metadata annotation and validation.</i>)

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: instructor
## :coffee: Break :coffee:

We recommend a **15 min break** at this point.
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

## Metadata Standards

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: callout 
A well **established metadata schema** can become a standard.
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: instructor
## Lecture: Metadata standards

**Slide set**: <a href="../files/slideSet/MetadataStandards_CarpentriesIncubator_ScientificMetadata.pdf" target="_blank" download>MetadataStandards.pdf</a>

**Time estimate**: 4 min

1. We have been discussing metadata schemas to enforce, harmonize and validate metadata records. But you might have heard the term metadata standards. So where is the difference?
2. Basically, a metadata standard is a metadata schema. And a schema can become a standard, when it is well established, endorsed and widely accepted by its user community.
3. One of the best known, generic and widely used metadata standard for online resources, is the Dublin Core. The Dublin Core was developed by a consortium of researchers, librarians and web technologists in 1995 during a meetin in Dublin, Ohio, and was born by the need for a unified description of resources on the web. The design of the Dublin Core was inspired by the library cards as they are still used to catalog book resources in physical libraries.
4. When we are talking about online resources, we talk any information entity that can be retrieved from the web, such as websites, metadata and data files, images, videos and so on. In the scientific context, "resource" can also refer to experimental data, protocols, or software code. Have you published anything under your name online. Guess what: in terms of the world wide web, you are a resource, too!
5. To enhance the identification and findability of these resources, the Dublin Core Initiative have specified a set of 15 metadata elements to describe any type of resource on the Web. These core elements hold information on the creators, format and type, and detailed descriptions of the resource.
6. Remember the first challenge we approached yesterday. When looking up metadata elements in the head-elements of websites...
7. some properties were given as `dc:`, such as - in this example - `dc:creator`, directly stating, that this entry conforms with the `creator` element of the `Dublin Core` metadata standard.
8. The Dublin Core is just one of many implemented and endorsed metadata standards. On the general online resource description, Facebooks Open Graph and schema.org became industry metadata standards. But, you guessed it, there are multiple community specific and scientific metadata standards, that describe scientific resources in more detail.

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

Researchers, librarians and web technologists drafted the **Dublin Core** -- a set of 15 library-card-catalog-like metadata elements for the web -- in 1995 at a meeting in Dublin, Ohio (USA).[^14]

Dublin Core and its extensions are widely used and referenced today. The <a href="https://www.dublincore.org/about/" target="_blank">Dublin Core Metadata Initiative (DCMI)</a> states to work openly, with a paid-membership model.

The 15 generic Dublin Core metadata elements have been formally standardized for cross-domain resource description in e.g. **ISO 15836-1:2017**[^15]

![](fig/dublinCoreElements.png){alt="Depiction of the 15 Dublin Core Elements: Creator, Contributor, Publisher, Title, Date, Language, Format, Subject, Description, Identifier, Relation, Source, Type, Coverage, Rights"}

Many scholarly repositories expose a standardized **application programming interface (API)** for the harvesting of Dublin Core metadata as specified in <a href="http://www.openarchives.org/OAI/2.0/openarchivesprotocol.htm#dublincore" target="_blank"> http://www.openarchives.org/OAI/2.0/openarchivesprotocol.htm#dublincore</a>. 

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: instructor
## Lecture: Challenge introduction

**Slide set**: <a href="../files/slideSet/Challenge6_CarpentriesIncubator_ScientificMetadata.pdf" target="_blank" download>Challenge6.pdf</a>

**Time estimate**: 1 min

- In the next challenge, we will introduce you to some online metadata standard registries: FAIRsharing.org, the RDA Metadata Directory and the RDA Metadata Standards Catalog. Head over to one or more of these registries and make yourself familiar with their navigation and content. Look specificly for metadata standards, that are associated for your field of research and inspect the information that is provided on the standards. 

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: instructor
## Challenge: Metadata standards

**Time:** 25 min

**Challenge type:** individual exploration, guided confrontation

**Objective:** <br>
The learners are aware of metadata standard registries and know how to navigate them.

**Creator's recommendation:** <br>
After giving the challenge instructions, allow for some time for the learners to explore the registries (ca. 15 min). Start a screen share of one on the metadata registries and navigate to a metadata standard of your liking. Talking points could be:
<ul>
  <li>different representations of metadata standards (JSON / XML schema, RDF, SKOS, OWL)</li>
  <li>granularity of representation (e.g. high level standard vs. application specific standard)</li>
  <li>terms, properties, specifications</li>
  <li>accompanying journal publications</li>
</ul>

**Transition to "(Web) Locations & Identifiers":**
During the discussion, ask the group of learners, whether someone encountered a `404 Error` while exploring a metadata standard. If you are working with a heterogeneous group in regard of their scientific background, chances are high, that at least one of the learners made this experience (-> it is not unusual that research field specific metadata standard development was concluded and the maintenance of the web representation was terminated with the end of the funding period.)

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: challenge
## Challenge 6: Domain specific metadata standards

1. Open one of these metadata standard registries in your preferred browser: <br> [FAIRsharing.org](https://fairsharing.org/search?fairsharingRegistry=Standard){target="_blank"}<br>
[RDA Metadata Standards Catalog](https://rdamsc.bath.ac.uk/){target="_blank"}<br>
[DCC List of Metadata Standards](https://www.dcc.ac.uk/guidance/standards/metadata/list){target="_blank"}
3. Search for a metadata schema, standard or vocabulary **relevant to your research domain**.
4. Inspect the **information provided**.

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


::::::::::::::::::::::::::::::::::::: keypoints 

- The WWW was developed in from and for the **scientific community** to connect researchers worldwide and enable **sharing information**
- Metadata schemas serve as **template** and **validation matrix** for metadata records 
- JSON schemas are **JSON object literals**
- Well-established metadata schemas have the potential to become a (community) **standard**

::::::::::::::::::::::::::::::::::::::::::::::::

[^10]: https://home.cern/science/computing/birth-web
[^11]: https://ar5iv.labs.arxiv.org/html/1709.07020
[^12]: "XML Schema Tutorial". (C) 1999-2022. Refsnes Data, W3Schools. https: //www.w3schools.com/xml/schema_intro.asp
[^13]: "Understanding JSON Schema. The basics", © Copyright 2013-2016 Michael Droettboom, Space Telescope Science Institute; Last updated on Feb 07, 2022. https://json-schema.org/understanding-json-schema/basics.html
[^14]: https://www.dublincore.org/resources/metadata-basics/
[^15]: https://www.iso.org/standard/71339.html
