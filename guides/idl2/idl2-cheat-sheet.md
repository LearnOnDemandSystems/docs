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
| Escape character | `\escaped character` |
| Bullet | `-` |
|<BR>                                      | |
|<font size="3">**Links**</font>| |
| Internal link | `[text to display on link](#heading-to-link-to "optional link title")` (must be all lower-case, alphanumeric and separated by hyphens) |
| External link | `[External link](URL "Optional link title")` |
| Relative link | `[text to display](../folder/file.htm "optional link title")` | 
| Help Link     | `help[help text here](https://URL.com)`                                        |
| Hint Link     | `hint[hint text here](https://URL.com)`                                        |
| Knowledge Link | `knowledge[knowledge text here](https://URL.com)`                                       |
|<BR> | |
|<font size="3">**Link Behavior Prefixes**: </font>    |
|Add a behavior prefix to control the way the link opens ||
|Open in portal window | `<` before the link  |
|Open in a dialog | `^` before the link  |
|Open in new window | no special characters before the link  |
|<BR> | |
|<font size="3">**Page**</font>    |                                          |
| Page break        | `===`                                    |
| Horizontal Line    | `---` or `***` or `___`                  |
| Block quote       | `> text to display in block quote`       |
|<BR> | |
|<font size="3">**Embedded Content**</font>|                                          |
| Image             | `![text to display](URL)`                               |
| Video             | `!video[text to display](URL)` (URLs from YouTube.com auto embed)          |
| Audio             | `!audio[text to display](URL)`           |
| Image with link   | `[![image description](URL of image "image description")](URL to open when image is clicked)`    |
| Portal Link       |  `<[text to display](URL)`     | 
| Image Link        |  `image[text to display](URL)`| 
| Video Link        |  `video[text to display](URL)`| 
| Image Dimensions  | `![](image url){heightXwidth}` or `{height}` (width will be calculated automatically) |
|<BR> | |
 |<font size="3">**Special**</font>|                                          |
| Knowledge Block        | `>[!knowledge] Knowledge blocks help students learn more` |
| Alert Block            | `>[!alert] Alert blocks draw attention to important issues!` | 
| Note Block             | `>[!note]`                              |
| Help Block             | `>[!help]`                              |
| Hint Block             | `>[!hint]`                              |
| Include           | `!instructions[](url)`                |
| Copyable Text     | `++copyable text++`                      |
| Type Text         | `+++Type text+++`                      |
| Copyable and Type Text         | `++++Copyable and Type text++++`|
| Replacement Token | `click the @ lab toolbar button ` |
| Embed YouTube video | `!video[text to display](url)` (URLs from YouTube.com auto embed)               |
| Sections |`:::sectionName(variableName-variableValue)`
|| `section text or markdown elements`
||`:::`
|<BR> | |

---

<font size="3">**Variables**</font>

Define the variable 

<pre><code title="Copy to clipboard" class="prettyprint prettyprinted" style=""><span class="lit">&commat;lab</span><span class="pun">.</span><span class="typ">TextBox</span><span class="pun">(</span><span class="pln">name</span><span class="pun">)</span></code></pre>

Callback the variable

<pre><code title="Copy to clipboard" class="prettyprint prettyprinted" style=""><span class="lit">&commat;lab</span><span class="pun">.</span><span class="typ">Variable</span><span class="pun">(</span><span class="pln">name</span><span class="pun">)</span></code></pre>

---

<font size="3">**Inline Code**</font>

Inline code  <code>`code`</code>   

<font size="3">**Code Blocks**</font>

~~~Fenced_code_block
```PowerShell
get-service | stop-service -whatif
```
~~~

<font size="3">**Code Block Modifiers**</font>

No code highlighting, copyable

    ```PowerShell-nocolor
    Code Block
    ```

No tab on code block, code highlighted, copyable

    ```PowerShell-notab
    Code Block
    ```

No code highlighting, no tab, not copyable

    ```PowerShell-nocode
    Code Block
    ```

Code highlighted, not copyable

    ```PowerShell-nocopy
    Code Block
    ```

Code_highlighted, copyable, multi line command wraps to the next line

    ```PowerShell-wrap
    Code Block
    ```
  

 Code_highlighted, copyable, line numbers added to each line

    ```PowerShell-linenums
    Code Block
    ```

---
<font size="3">**Reference Instruction Block**</font>
 
<!-- The following code block _must_ be indented instead of wrapped in ~~~ to prevent
     our preprocessor from preprocessing the code. Do not change this formatting. -->
     
<pre><code title="Copy to clipboard" class="prettyprint prettyprinted" style="">&#33;INSTRUCTIONS[][reference label]<span class="pln">

</span><span class="pun">&gt; [reference label]:</span><span class="pln">
</span><span class="pun">&gt; These instructions are injected in the statement above.</span></code></pre>


 
---
<font size="3">**Dialog Windows**</font>

Dialog
```
^[text to display in lab  instructions][Reference Link]

> [Reference Link]:
> This text will appear in the Dialog popup
```

Instruction Dialog

```
> ^INSTRUCTIONS[text](url)
```

---
<font size="3">**Commands** (requires Integration Services to be installed on the VM)</font>

Single Line

~~~
@[text to display](`command`)
~~~

Multi-Line

<!-- The following code block _must_ be indented instead of wrapped in ~~~ to prevent
     our preprocessor from preprocessing the code. Do not change this formatting. -->

    @[text to display][multi-line-command-id]

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
<font size="3">**Tasks**</font>

```Unordered_Task_List
- [] Item 1
- [] Item 2
- [] Item 3
- [] Item 4
- [] Item 5
```

```Ordered_Task_List
1. [] Item 1
1. [] Item 2
1. [] Item 3
1. [] Item 4
1. [] Item 5
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

