---
title: '(Web) Location & Identifiers'
teaching: 35
---

![**Bugeja, M., Dimitrova, D.** (2010) in "_Vanishing Act: The Erosion of Online Footnotes and Implications for Scholarship in the Digital Age_." Litwin Books. <a href="https://dr.lib.iastate.edu/handle/20.500.12876/96527" target="_blank">https://dr.lib.iastate.edu/handle/20.500.12876/96527</a>](fig/dimitrovaBugejaQuote.png){alt="Quote from the Book Vanishing Act: The Erosion of Online Footnotes and Implications for Schlolarship in the Digital Age by Daniela Dimitrova and Michael Bugeja, saying 'Vanishing online footnotes undermine the building blocks of research, and their disappearance raises concerns about the reliability and replicability of scholarship.'"}
<br>

:::::::::::::::::::::::::::::::::::::: questions 

- What are PIDs?
- What are the differences between URL, URI and PID?
- Which PIDs are connected to the research context?

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: objectives

- Explain differences between URL, URI and PID(s)
- Name examples of PIDs relevant for the research context.

::::::::::::::::::::::::::::::::::::::::::::::::

## The Web of today

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: instructor
## Creator's recommendation

Conduct a **live poll** (e.g. in Zoom, Mentimeter, Ahaslides) with the learners to reactivate the audience and transition to the topic of (Persistent) Identifiers.

![](files/exampleAhaslidesPid.png){alt="Live poll example asking for the audience familiarity of the terms DOI, ORCID, ROR, URN, PURL, and IRI."}
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

Built for human understanding: even though web documents are made with computers, computers can NOT understand the content of these documents. **They can't read, see relationships or make decisions like humans can.**

Most search engines are based on keywords:
<ul>
  <li>results are high recall and low precision</li>
  <li>results are highly sensitive to vocabulary</li>
  <li>results are single human-readable web pages</li>
  <li>**results do not support logical reasoning and query answering**</li>
</ul>

The World Wide Web is a hypermedia system. It contains:

**Resources**
A web resource is any identifiable resource present on or connected to the World Wide Web.
A resource can be anything that has identity.

**Links**
(Web identifiers) between these resources.

## Web Identifiers

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: callout
## Unique Identifiers

etwas generelles über unique identifiers
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
<br>
<span>
<img src="fig/uriUrnUrl.png" alt="" height="300px" style="float:right;" alt="Relationship between URI, URN and URL. URN and URL are seperated entities but both are a subtype of URI."/>

The **Uniform Resource Identifier (URI)** is a string of characters formulated to uniquely identify a resource, (most commonly on the Web) and enable interaction with it via common protocols such as HTTP.

A **Uniform Resource Name (URN)** is a type of URI. It is a standard, persistent and unique identifier for digital resources on the Internet. To link to the resource from the URN, a **resolver service is required.**

The **Uniform Resource Locator (URL)** is a string of characters used to access the information or resource by **using the address of the resource location** via communication protocols such as HTTP. </span>
<br><br>


:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: callout 

## How links rot

![URL Example](fig/urlSyntax.png){alt="Examplary representation of the URL syntax: protocol specification, host adress, file path and query parameters."}

The **URL** specifies the exact location of a retrievable resource on the web (host & path) as well as the communication protocol (e.g. HTTP) necessary for the local browser to address the host server.
If you open a link on the web operated under the HTTP protocol, the browser sends a **GET request** to the host server, specifying the path to the requested resource. The host server then follows this path and responds with the resource information, if retrievable.

A resource might **not be retrievable** by the host server, if:
<ul>
  <li> the location was misspelled.</li>
  <li> the file path on the host server changed.</li>
  <li> the resource was deleted.</li>
  <li> the resource was migrated to a different server.</li>
</ul>

Each of these events will result in the **404 error** response. To avoid these broken or rotten links, assigning a **Persistent Identifier (PID)** to the resource resolves the issue.

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

A **Persistent Identifier (PID)** is a long-lasting reference to digital objects such as websites, articles, datasets, persons or organizations. PIDs are **globally unique** and **persistent over time**. Assigning a PID to a digital resource ensures its permanent indentifiability, accessibility, and referenciability.[^16] <br><br>

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: callout
## PID services

A **PID service** operate as a persistent look-up service that redirects GET requests for digital resources to the latest URL of this resource.<br>
**The host of the digital resource is responsible to update the resource's location with the PID service after the location changed.** <br><br>

**Frequently used PIDs in the scientific context are:**
<ul>
  <li>Digital Object Identifier ([DOI](https://www.doi.org/index.html))</li>
  <li>Persistent Uniform Resource Locator (PURL, e.g. [PIDA](https://purls.helmholtz-metadaten.de/))</li>
  <li>International Standard Book Number ([ISBN](https://www.isbn-international.org/content/what-isbn))</li>
  <li>[ORCID iD](https://orcid.org/0000-0002-1825-0097)</li>
  <li>Research Organization Registry([ROR](https://ror.org/))</li>
</ul>

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

### Persistent identifiers and metadata


### The Semantic Web
**The term “Semantic Web” refers to [W3C’s](https://www.w3.org/standards/semanticweb/) vision of a Web of Linked Data.**

It provides a way for machines to be able to process and understand the data that they were only to display on the traditional Web. It is a vision for the future Web (a web of meaning — semantics); originally defined by Tim Berners-Lee. The Semantic Web is not a separate Web, but an extension of the current one. In the Semantic Web, metadata are invisible as people read the page, but they're clearly visible to computers.

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: callout 
The goal of a Semantic Web is to **make computers perform more of the tedious work involved in finding, sharing and combining information on the Web efficiently.**
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: keypoints 

- Use `.md` files for episodes when you want static content
- Use `.Rmd` files for episodes when you need to generate output
- Run `sandpaper::check_lesson()` to identify any issues with your lesson
- Run `sandpaper::build_lesson()` to preview your lesson locally

::::::::::::::::::::::::::::::::::::::::::::::::

[^16]: John Kunze (2018). "Ten persistent myths about persistent identifiers". https://escholarship.org/uc/item/73m910w8
