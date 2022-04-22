# MSA 2022 HTML and CSS workshop

Welcome to the HTML and CSS workshop. There are two parts to this workshop:

- [HTML](./README.md#html)
- [CSS](./README.md#css)

## HTML
HyperText Markup Language(HTML) is what the internet is fundamentally made out of. Each web page is made up of HTML elements.

* Start by opening up the `msa.html` file (double click the file and select the browser of your choice when prompted)

![](images/2022-04-14-11-09-06.png)

  * In this file, you will notice a few things. The `<!DOCTYPE html>` is at the top of each HTML file, and specifies that the file is HTML
  * `<head></head>` is the header of the HTML file. Each HTML element is represented with an _opening_ and _closing_ tag. This is because HTML elements can **contain** other HTML elements.
  * `<head></head>` contains the title of the page, and other metadata style info, such as related files, etc.
  * `<body></body>` contains the actual content of the page.
* We will start by adding some HTML to the page:
  - [x] Create an additonal list item in the list called List Item Three
  - [x] Add a row to the table
  - [x] Create a new block element containing some text about yourself :)
  - [x] Create an editable text field

## CSS
Cascading Style Sheets (CSS) is how we _style_ HTML. It is how we make HTML look pretty, without the need to inline the styling on every element.

* Take a look at the `msa.html` file.
  * In the top of this file, you will notice that there is a link to `styles.css`.
  * This reference is what lets the css styles be applied to the page.
* Open up `styles.css`
  * You will notice that there is a single bit of styling in this file which changes the **body** element of the html page.
  * CSS uses _selectors_ to define what elements the styling will target. This lets us target multiple different elements, and allows us to be quite specific about what we can change.
* Let's make some styling changes:
    - [x] Change the background colour to purple for the document
    - [x] Change the text colour to white for the document
    - [x] Add Some Selectors
      - [x] Make the list have a different background colour
      - [x] Reference the button using an ID selector and make the button green
      - [x] Reference the table using a class selector and make the table background colour red
    - [x] Center the button to the middle of the page