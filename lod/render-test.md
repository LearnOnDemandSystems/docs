# Heading 1 

## Heading 2 

### Heading 3 

#### Heading 4 

##### Heading 5 

###### Heading 6 




**bold** 

*Italic* 

~~Strikethrough~~ 

\ **escaped character**

- bullet

[Link to bottom of page](#bottom)

[Google](https://google.com)

Relative link | [create a user](create-user.md)

Help Link     | HELP[help text here](https://google.com)      

Hint Link     | HINT[hint text here](https://www.learnondemandsystems.com/) 

Knowledge Link | KNOWLEDGE[knowledge text here](https://www.learnondemandsystems.com/)                                       

Add a behavior prefix to control the way the link opens 

  

<[Open in portal window](https://www.learnondemandsystems.com)    



^[Open in a dialog](https://www.learnondemandsystems.com)      



[Open in new window ](https://www.learnondemandsystems.com)      

                                       
Page break         ===  

Horizonal Line     ---

or 

*** 

or

___ 

> text to display in block quote       
                                         
Image             | !IMAGE[Text to display](URL)`                               

Video             | !VIDEO[Text to display](URL)` (URLs from YouTube.com auto embed)       

Image with link   | [![image description](URL of image "image description")](URL to open when image is clicked)`    

Portal Link       |  <[Text to display](URL)      

Image Link        |  IMAGE[Text to display](URL) 

Video Link        |  VIDEO[Text to display](URL)

Image Dimensions  | {heightXwidth}` or `{height}` (width will be calculated automatically) 
                                       
Knowledge Block        | >[!KNOWLEDGE] Knowledge blocks help students learn more

Alert Block            |>[!ALERT] Alert blocks draw attention to important issues! 

Note Block             |>[!NOTE]     

Help Block             | >[!HELP]                              

Hint Block             |>[!HINT]       

Include           | !INSTRUCTIONS[](url)   

Copyable Text     | ++copyable text++ 

Type Text         | +++Type text+++    

Replacement Token | Click the @ lab toolbar button  

Embed YouTube video | !VIDEO[text to display](url)` (URLs from YouTube.com auto embed)               
     
`

**Commands** (requires Integration Services to be installed on the VM)</font>

Single Line


@[Text to display](`command`)



@[Text to display][multi-line-command-id]

[multi-line-command-id]:
```
Multi-line
Command-goes-here
```


Text_lookup
[Reference link]
[Reference link]: URL "Optional link title"

Label_lookup
[Reference link][Name of URL]
[Name of URL]: URL "Optional link title"

Footnote_style
[Reference link][1]
[1]: URL "Optional link title"

---


Lists **without** checkboxes:       
Unordered_List
- Item 1
    - Item 1.1
        - Item 1.1.1
        - Item 1.1.2
    - Item 1.2
- Item 2

Ordered_List
1. Item 1
    1. Item 1.1
        1. Item 1.1.1
        1. Item 1.1.2
    1. Item 1.2
1. Item 2


Lists **with** checkboxes

Unordered_List
- [] Item 1
    - [] Item 1.1
        - [] Item 1.1.1
        - [] Item 1.1.2
    - [] Item 1.2
- [] Item 2
```

```Ordered_List
1. [] Item 1
    1. [] Item 1.1
        1. [] Item 1.1.1
        1. [] Item 1.1.2
    1. [] Item 1.2
1. [] Item 2
```

Left aligned text

| column 1 | column 2 |
|:---------|:---------|
| data 1   | data 2   |
| data 3   | data 4   |


Right aligned text

| column 1 | column 2 |
|---------:|---------:|
| data 1   | data 2   |
| data 3   | data 4   |


Center aligned text

| column 1 | column 2 |
|:--------:|:--------:|
| data 1   | data 2   |
| data 3   | data 4   |


## Bottom
