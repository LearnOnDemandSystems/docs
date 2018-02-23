<a href="https://learnondemandsystems.github.io/guides/idl2/markdown-user-guide.html" style="float:right;" title="A full user guide to authoring labs in IDL-flavored markdown.">Markdown User Guide</a>

|                   |                                          |
| ------------------| ---------------------------------------- |
|<font size="3">**Headings**</font> | |
| Heading 1 | `# Heading 1` |
| Heading 2 | `## Heading 2` |
| Heading 3 | `### Heading 3` |
| Heading 4 | `#### Heading 4` |
| Heading 5 | `##### Heading 5` |
| Heading 6 | `###### Heading 6` | 
|<BR>                                      | |
|<font size="3">**Text**</font>| |
| Indent size | `equal to 4 spaces` |
| **bold** | `**bold**` or `__bold__` |
| *Italic* | `*italic*` or `_italic_` |
| ~~Strikethrough~~ | `~~strikethrough~~` |
| Escape character | `\escaped text\` |
| Bullet | `-` |
|<BR>                                      | |
|<font size="3">**Links**</font>| |
| Internal link | `[text to display](#link-location "optional link title")` |
| External link | `[External link](URL "Optional link title")` |
| Relative link | `[text to display](../folder/file.htm "optional link title")` | 
|<BR> | |
|<font size="3">**Page**</font>    |                                          |
| Page break        | `===`                                    |
| Horizonal Line    | `---` or `***` or `___`                  |
| Block quote       | `> text to display in block quote`       |
|<BR> | |
|<font size="3">**Embedded Content**</font>|                                          |
| Image             | `!IMAGE[Text to display](URL)`                               |
| Video             | `!VIDEO[Text to display](URL)` (URLs from YouTube.com auto embed)          |
| Image with link   | `[![image description](URL of image "image description")](URL to open when image is clicked)`    |
| Portal Link       |  `<[Text to display](URL)`     | 
| Image Link        |  `IMAGE[Text to display](URL)`| 
| Video Link        |  `VIDEO[Text to display](URL)`| 
|<BR> | |
 |<font size="3">**Special**</font>|                                          |
| Knowledge         | `> [!KNOWLEDGE] Knowledge blocks help students learn more` |
| Alert             | `> [!ALERT] Alert blocks draw attention to important issues!` |
| Note              | `> [!NOTE]`                              |
| Include           | `!INSTRUCTIONS[](url)`                |
|Reference Instruction Block | `!INSTRUCTIONS[][label]`     |
| Copyable Text     | `++copyable text++`                      |
| Type Text         | `+++Type text+++`                      |
| Replacement Token | `Click the @lab toolbar button or type "@lab." in your idl-md editor window.` |
| Embed YouTube video | `!VIDEO[text to display](url)` (URLs from YouTube.com auto embed)               |
|<BR> | |
 
<font size="3">**Code Blocks**</font>

Inline code block  <code>`code block`</code>   

~~~Fenced_code_block
```PowerShell
get-service | stop-service -whatif
```
~~~
---
<font size="3">**Dialog Windows**</font>

Dialog
```
^[Text to display in lab  instructions][Reference Link]

> [Reference Link]:
> This text will appear in the Dialog popup
```

Instruction Dialog

```
> ^INSTRUCTIONS[text](url)
```

---
<font size="3">**Commands**</font>

**Single Line**

~~~
@[Text to display](`command`)
~~~

**Multi-Line**

<!-- The following code block _must_ be indented instead of wrapped in ~~~ to prevent
     our preprocessor from preprocessing the code. Do not change this formatting. -->

    @[Text to display][multi-line-command-id]

    [multi-line-command-id]:
    ```
    Multi-line
    Command-goes-here
    ```

---
<font size="3">**Reference links**</font>

```Text_lookup
[Reference link]
[Reference link]: URL "Optional link title"
```
```Label_lookup
[Reference link][Name of URL]
[Name of URL]: URL "Optional link title"
```
```Footnote_style
[Reference link][1]
[1]: URL "Optional link title"
```
---
<font size="3">**List Formatting**</font>

Lists **without** checkboxes:       
```Unordered_List
- Item 1
    - Item 1.1
        - Item 1.1.1
        - Item 1.1.2
    - Item 1.2
- Item 2
```
```Ordered_List
1. Item 1
    1. Item 1.1
        1. Item 1.1.1
        1. Item 1.1.2
    1. Item 1.2
1. Item 2
```

Lists **with** checkboxes

```Unordered_List
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

---
<font size="3">**Sample table**</font>

Left aligned text
```
| column 1 | column 2 |
|:---------|:---------|
| data 1   | data 2   |
| data 3   | data 4   |
```

Right aligned text
```
| column 1 | column 2 |
|---------:|---------:|
| data 1   | data 2   |
| data 3   | data 4   |
```

Center aligned text
```
| column 1 | column 2 |
|:--------:|:--------:|
| data 1   | data 2   |
| data 3   | data 4   |
```

