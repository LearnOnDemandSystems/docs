~~~Markdown
# Introduction to Markdown (idl-md) Authoring

Hi @lab.UserFirstName!

If your name looks funny in here, just wait, we'll revisit the @lab syntax later.

When you create instructions for your lab, you simply type the text into the idl-md editor. As you type it in, you can see the rendered version of your text in real-time.

It is a good idea to use headings to identify specific sections in your instructions.

## Add emphasis to draw attention to key words or phrases

You can emphasize key words or phrases in your instructions by making it **bold**, using _italics_ or ~striking it through~.

> [!KNOWLEDGE] Did you know? Knowledge blocks help students learn more.
>
> They will automatically display the first four lines of text, with the rest of the content fading out with a  _show more_ link displayed at the bottom if they are longer than four lines.
>
> This allows students to decide if they want to read further on a subject or not.

> [!ALERT] When you really want to make sure a student notices something in your lab, alert them!

###### There are six levels of headings available in Markdown

Realistically, most people only use the first four.

---

Another way you can separate thoughts/ideas from one another on the same page is using line breaks. Three consecutive dashes on an isolated line by itself does the trick.

===

## Integrating multimedia into a lab is a great technique to re-inforce learning

Screenshots or inline images encourage students by pointing them in the right direction. They can be embedded inline, like this:

!IMAGE[](https://raw.githubusercontent.com/LearnOnDemandSystems/docs/master/lod/quick-starts/cloud-slice/images/diamond.jpg)

They can also be hidden behind a link that opens in a new window, like this:

IMAGE[Click here to see ...](https://raw.githubusercontent.com/LearnOnDemandSystems/docs/master/lod/quick-starts/cloud-slice/images/diamond.jpg)

Integrating videos is just as easy. Here's one that talks about PowerShell:

!VIDEO[](https://www.youtube.com/watch?v=f25-cj8mriQ&t=130s)

[Here's a useful tip!]("Exclamation marks applied immediately before multimedia (IMAGE/VIDEO) links tell Lab on Demand that you want the content to be embedded inline, in the current location.")

You can also include normal hyperlinks whereever you like, such as [this one](https://learnondemandsystems.com).

===

## Tracking progress with tasks

When students need to perform a series of activities, you can use tasks to track their progress.

1. [ ] The first thing you need to decide is whether you want ordered tasks or unordered tasks.

1. [ ] To convert ordered tasks into unordered tasks, simply replace your **1.** numbering with hyphens (-).

1. [ ] Try it now, by replacing each of the "1."'s in this list with hyphens, and watch what happens to the rendered output.

1. [ ] By using tasks, students can check off activities as they complete them. At the same time, Lab on Demand can determine how far long each student is according to the number of activities they have marked as completed.

1. [ ] Students don't have to check each one either. Try checking only the 3rd task in this list, and notice what happens.

===

When teaching students about programming, code blocks are essential. They can be rendered inline, like this: `Get-Service | Stop-Service -Whatif`. They can also be rendered across multiple lines, like this:

```PowerShell
$service = Get-Service wuauserv
Stop-Service $service -WhatIf
```

In both cases, students can simply click on the code block to copy its contents in their entirety.

===

Markdown supports **ordered lists**.

1. One Fish
    1. Horton
    1. A who
1. Two Fish
1. Red Fish

> [!ALERT] Notice how the list items are all numbered with **1.**, instead of **1.**,**2.**,**3.**? When the instructions are rendered, sequential numbering is automatically applied to ordered list items. This makes manipulation of items in a list very easy. Try adding an item in the middle of this list with using **1.** for the number and notice how the rendered preview automatically adjusts the numbering for you. As a best practice, you should always number your ordered list items with **1.**.

**Unordered Lists** can be created using dashes (-) as well.

- There can be only one.
- It takes two.
- Everything happens in three's.

Markdown also supports tables. These are very convenient when you want users to fill out a form with specific values.

|Field Name|Field Value|
|--|--|
|First Name|++@lab.UserFirstName++|
|Last Name|++@lab.UserLastName++|
|Email Address|++@lab.UserEmailAddress++|

The double-plus enclosure surrounding the field values allows students to copy them by left clicking on them. Give it a try!

===

## Conclusion

This concludes the introduction to idl-md. Hopefully this has given you a good idea of the types of content you can include in your lab instructions. We covered many of the supported options, but not all.

To learn more, while you are in the instruction editor, the question mark (?) button at the top will open an idl-md cheat sheet. If you want more details than that, you can click on the **Learn More** button in the bottom right corner. Don't do that right now though, because if you're finished experimenting with idl-md, it's time to go back to the Quick Start guide.
~~~
