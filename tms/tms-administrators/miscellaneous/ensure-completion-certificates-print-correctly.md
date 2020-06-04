# How do I ensure my course completion certificates print correctly?

> [!Alert] Please be aware that not all functionality covered in this and linked articles may be available to you.

When you [create a Course Completion Certificate Template](create-completion-certificates.md) in the TMS, it is very important to follow best practices and to preview the certificate in our system to ensure it will print correctly and placeholder text is replaced with actual data. When Word documents are converted to PDF, fonts and images may not render the same as in Word.

## Best Practices for Fonts

Not all fonts are supported by PDF documents. Therefore, fonts may be substituted upon conversion. When this occurs, the resultant text may be cut off, distorted, very large/small or unreadable. It is best to use what is commonly referred to as “base” or “standard” fonts:

- Times (or Times New Roman) in regular, bold, italic, and bold italic
- Helvetica (or Arial) in regular, bold, italic, and bold italic
- Courier (again, same four versions)
- Symbol
- Zapf Dingbats

These are the most likely to not be changed upon conversion.

If you want to use other fonts, be sure to [preview](#certificate-preview-prior-to-use) your certificate and test it in PDF before using it for a class or course assignment.

## Best Practices and Tips for Images

Converting from Word to PDF could result in a few issues: image overlap or grainy, out of focus image.

**Image Overlap or Partial Image**: Transparency may be ignored in the PDF. If this occurs, try resizing or slightly adjust the layout of the images in Word so they do not overlap.

**Grainy, Out of Focus Image**: Word may compress images upon ‘Save’. This will change the resolution of the image and cause it to not render clearly in a PDF certificate. To keep this from occurring in Word:
1. Replace the image in the Word template file with the original image. Do not save.
1. Access **Word Options** (File > Options).
1. Click **Advanced** in the left navigation.
1. Scroll down to **Image Size and Quality**.
1. Ensure your document is listed in the dropdown.
1. Select **Do not compress images in file** and select the default resolution for your images. Higher ppi images render better but make the file larger.
1. Save the file and upload it to the **Course Completion Certificate Template** profile in the TMS.

![](/tms/images/word-options.png)

You should [preview](#certificate-preview-prior-to-use) your certificate after the changes.

## Certificate Preview Prior to Use

It is very important each time you upload a file to your Course Completion Certificate Template profile to preview it after you have save it. This will provide you with a zipped file containing a test Word certificate and PDF certificate. Open these to verify the appearance and accuracy of your certificate in both formats.

To view how your certificate will render:
1. On the **Course Completion Certificate Template** profile page, click **Preview**.
1. Fill out test data for any of the fields your template contains.
1. Click **Preview**.
1. Save the zip file to your computer.
1. In the zip file, open both the **Word** and **PDF**.
1. Verify the fonts are readable, the images rendered correctly, and the data correctly replaced the placeholder text.

If anything is wrong, refer to the sections ([Fonts](#best-practices-for-fonts), [Images](#best-practices-and-tips-for-images), [Data Replacement](#data-replacement-tip)) of this article to troubleshoot them.

## Data Replacement Tip

If the test data you entered did not replace the placeholder text in the test files the Preview tool generated, the actual data will not be present when the certificate is used with a course. To correct this issue, in your template file on your computer, try the following:
1. Delete the entire placeholder value.
1. Type it in again.
1. Save the file
1. Upload the edited file into the **Course Completion Certificate Template** profile in the TMS.
1. Repeat the [preview](#certificate-preview-prior-to-use).

> [!Alert] When you add the completion certificate(s) to the course, please be aware the **Short Name** of the course will be used as the name of the zipped file when the certificates are downloaded to print. As a result, the zipped file and its contents will not be able to be opened if there are any special characters in the **Short Name**.  
