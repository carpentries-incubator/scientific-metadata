---
title: 'Data & Metadata'
teaching: 50
exercises: 15
---

![Pomerantz, J. (2015). Metadata. Cambridge, MA: MIT Press.](fig/jeffreyPomerantzQuote.png){alt="Quote by Monya Baker saying 'Data is stuff. It is raw, unprocessed, possibly even untouched by human hands, unviewed by human eyes,, un-thought-about by human minds.'"}
<br>

:::::::::::::::::::::::::::::::::::::: questions 

- What is data and what is metadata?
- How is metadata classified?
- Where can I find (meta)data in every day examples?
- What are worst and good enough practices of metadata handling in the scientific context?

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: objectives

- Recognize and describe examples of (meta)data
- Name best and worst practice situations in research (meta)data handling
- Getting familiar with the example data set

::::::::::::::::::::::::::::::::::::::::::::::::


## Data -- Information -- Knowledge -- Wisdom
The question “What is data?” seems trivial at first, but if we look at the definition, it is apparent that the question is not that easy to answer. In information science, we distinguish between Glyphs (or symbols), data, information, knowledge and wisdom. **GLYPHS** are the smallest unit of data representation. Glyphs represent the symbols of which data can be composed.

To cite the information scientist Jeffrey Pomerantz, “**DATA** is stuff. It is raw, unprocessed, possibly even untouched by human hands, unviewed by human eyes, un-thought-about by human minds”[^1]. In other words, data is potential information, that requires processing and context to extract the information held within. 

Accordingly, **INFORMATION** is processed, human-consumable data. If this information is internalized by a human being, it is called **KNOWLEDGE**. This knowledge can be applied in a broader context by the human being. Applied knowledge is called **WISDOM**.
The key to reaching wisdom from data is processing and contextualizing data to extract information. To achieve this goal we often need to add a description to the data: **metadata**.

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: callout
## Information pyramid

![](fig/informationPyramid.png){alt='Information pyramid from glyphs to wisdom highlighting the data fracture. Text reads: Data is potential information and needs to be processed and contextualized to make it accessible for the human audience.'}
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: instructor

The transition between "Data -- Information -- Knowledge -- Wisdom" and 
"Metadata" is used to have a first look at the example data set, revealing 
subject, variables and data types.
\\see also teaching script\\

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

## Metadata

::::::::::::::::::::::::::::::::::::::: callout
Metadata is **a statement** about a potentially informative object.
:::::::::::::::::::::::::::::::::::::::::::::::

Metadata is **(semi-)structured data** that provides information about characteristics of other (more complex) data objects (e.g. files or documents). Regarding research data, metadata gives the observer the necessary context to interpret the data and derive information from it. Although metadata is data itself, it can only exist in connection with a data object that is described by the metadata record (e.g. the meta-information in a book about said book). Metadata can be found inside of a data object (e.g. in a book, in a data record) or as a separate object (e.g. library catalogue, separate file).

[National Information Standards Organization](https://groups.niso.org/higherlogic/ws/public/download/17446/Understanding%20Metadata.pdf) (NISO, 2004, from "Big Data, Little Data, No Data", Christine L. Borgman, 2015): "_Metadata is structured information that describes, explains, locates, or otherwise makes it easier to retrieve, use or manage an information resource_".

## Types of metadata
**Descriptive metadata** provides information about the intellectual content of a (digital) object (e.g. title, author, date of publication, subject, description, unique identifier). [^2]

**Administrative metadata** provides information to support the management of a resource (e.g. technical information regarding the file's creation and format, version, information about copyright, licence and intellectual property rights). [^2]

**Structural metadata** specifies the relationships between components of a (digital) object and between different (digital) objects (e.g. chapters in a book). [^2]

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: instructor
## Challenge notes

**Time:** 15 min 

**Challenge type:** guided confrontation, individual investigation, discussion

**Objective:** <br>
The learners experience a real world example of functional metadata applications and practice their acquired knowledge on metadata types.

**Implementation:** <br>
We recommend using a pre-structured, collaborative document 
(whiteboard or notepad) to collect the participants' results.
Allow for some time for the learners to navigate the websites and explore the metadata in the source code individually (ca. 8 min). Open the source code of one website in the browser and share the screen. Talking points for the guided confrontation can be: 
<ul>
  <li>different types of targets (e.g. `twitter:`, `robots:`)</li>
  <li>different contexts (e.g. `dc:`, `og:`); don't go to deep in this topic and just teaser the existence of metadata standards and references</li>
  <li>**Fun fact:** *The Guardian* regularly uses a comment in the `head` of their html documents to advertise IT jobs :grin: </li>
</ul>

**White board:** <a href="../../../episodes/files/exampleChallenge1Whiteboard.pdf">example set-up</a>

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: challenge 
## Challenge 1: Real world metadata
1. Open one of these web pages in your preferred browser: <br> 
[<i class='fa fa-external-link-square'></i> Science Journal](https://www.science.org/)<br> 
[<i class='fa fa-external-link-square'></i> The Guardian](https://www.theguardian.com/international)<br> 
[<i class='fa fa-external-link-square'></i> German Federal Government](https://www.bundesregierung.de/breg-en). <br>
2. Open **one of the articles** linked on the main page.
3. Inspect the **web page source code**.


| Browser            | Shortcut to Source Code |
| ------------------ | ----------------------- |
| Firefox            | Ctrl + u                |
| Chrome             | Ctrl + u                |
| Safari             | Option + Command + u    |
| Opera              | Ctrl + u                |
| Edge               | Ctrl + u                |
| Internet Explorer  | Ctrl + u                |

4. Look for [**meta tags**](https://www.w3schools.com/tags/tag_meta.asp) in the HTML source code **`<head>`** element. 
5. Assign some **`<meta>`** tags to one of the categories **descriptive**, **administrative**, **structural** 
:::::::::::::::::::::::::::::::::::::::::::::::


## Metadata records
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: instructor

This section represents the introduction into **scientific** metadata. It kicks off with the most common metadata records, that can be found in a reseach context: **handwritten notes** and **Readme style documents**.

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

**Handwritten (lab) notes**
Handwritten (lab) notes are still a common practice in many scientific disciplines. These notes are easy to take during data generation. The greatest disadvantage, however, is the physical separation from the data itself and the difficulty to find, store and share these information. Often, handwritten lab notes do not follow a predictable structure and, hence, are hard to interpret and sometimes even hard to read.

**Readme style text documents**
Recording your metadata (additionally) in a digital readme style text document comes with one great advantage: the metadata can be associated and stored directly with the experimental data. Readme style metadata best practices include:[^3]

<ul>
  <li>creating one readme file for each data file, whenever possible.</li>
  <li>naming the readme in a way that it is easily associated with the data file(s) it describes.</li>
  <li>writing the readme document as a plain text file for interoperability.</li>
  <li>formatting multiple readme files identically.</li>
  <li>where possible follow established conventions for scientific vocabulary (i.e. from glossaries or resources such as the [IUPAC Gold book](https://goldbook.iupac.org/))</li>
</ul>

We strongly recommend to use [**this template**](https://cornell.app.box.com/v/ReadmeTemplate) for readme style metadata documents.

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: instructor
# Guided confrontation: Metadata in scientific publications

We recommend to include an interactive exercise at this point to further focus on metadata in the scientific context.

**Time:** 10 min

**Type:** guided confrontation, collaboration

**Objective:** <br>
The learners apply their acquired knowledge about metadata identification and types on a familiar work situation.

**Implementation:** <br>
<ul>
  <li>select a scientific journal publication of your liking (could be related to the research field of the learners, if the group is homogeneous in this regard.)</li>
  <li>share the journal on your screen</li>
  <li>with the whole group of learners, find the "hidden" metadata in the publication and sort the findings into the metadata types (descriptive, administrative, structural)</li>
</ul>

**Creator's recommendation**: <br>
Use a white board application to display the journal publication. This allows for simultaneous highlighting / annotation of the findings and thus gives a visual response and documentation of the discussion. 
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: instructor
## Break :coffee:

We recommend a **15 min break** at this point.
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


::::::::::::::::::::::::::::::::::::: keypoints 

- **Data** is potential information.
- Borders between **data** and **metadata** are fluid and depend on the context.
- **Scientific meta information** is often recorded in handwritten (lab) notes, README style records, or the like, limiting its accessibility to humans and computers.

::::::::::::::::::::::::::::::::::::::::::::::::

[^1]: Pomerantz, J. (2015). Metadata. Cambridge, MA: MIT Press.
[^2]:Zhang, A. B., Gourley, D. (2008). "Metadata strategy" in Creating Digital Collections. Sawston, UK: Woodhead Publishing.
[^3]: Chadwick, I. (2016). "Research Data Management: guide to writing "readme" type metadata." The Open University. https://www.open.ac.uk/library-research-support/sites/www.open.ac.uk.library-research-support/files/files/RDM-Guidelines-for-creating-readme-style-metadata.pdf