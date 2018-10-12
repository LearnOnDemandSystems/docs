# GetEvaluationResponses

The **GetEvaluationResponses** command returns evaluation responses.

## Parameters

|Name|Type|Required|Note|
|--- |--- |--- |--- |
|id|Integer|Yes|The unique identifier of the evaluation.|
|takenAfter|Long|No|The date/time (in Unix epoch time) that the evaluation response is after.|
|takenBefore|Long|No|The date/time (in Unix epoch time) that the evaluation response is after.|
|classId|Integer|No|The unique identifier of the class the evaluation was taken in.|
|eventId|Integer|No|The unique identifier of the event the evaluation was taken in.|

## Response

|Name|Type|Required|Note|
|--- |--- |--- |--- |
|Responses|Array of EvaluationAnswerResponse|No|See the EvaluationAnswerResponse Type below|

## EvaluationAnswerResponse

|Name|Type|Required|Note|
|--- |--- |--- |--- |
|Number|String|No|The lab number.|
|Name|String|No|The lab name.|
|Tag|String|Yes|The tag associated with the lab instance.|
|Start|Long|No|The start time of the lab instance (in Unix epoch time).|
|End|Long|No|The end time of the lab instance (in Unix epoch time).|
|QuestionTypeName|String|No|The name of the evaluation question type.|
|QuestionText|String|No|The text of the evaluation question.|
|Label|String|Yes|The label of the evaluation question.|
|A1DText|String|Yes|The text of the 1D answer option.|
|A1DWeight|Integer|Yes|The associated weight of the 1D answer option.|
|A2DText|String|Yes|The text of the 2D answer option.|
|A2DWeight|Integer|Yes|The associated weight of the 2D answer option.|
|TextAnswer|String|Yes|The manually entered answer to the evaluation question.|

## Example Usage

Imagine… You want the evaluation responses for an evaluation with the id of 12345

```
https://labondemand.com/api/v3/GetEvaluationResponses/?id=12345
```

## Example Response

```
{
	"Responses": [{
		"Number": "Sample0101",
		"Name": "Sample Lab 0101",
		"Tag": null,
		"Start": 1333267200,
		"End": 1333299600,
		"QuestionText": "Multiple Choice, Multiple Answers",
        "Label": "",
		"A1DText": "Answer 2",
		"A1DWeight": 0,
		"A2DText": null,
		"A2DWeight": null,
		"TextAnswer": null
	},
	{
		"Number": "Sample0101",
		"Name": "Sample Lab 0101",
		"Tag": null,
		"Start": 1333267200,
		"End": 1333299600,
		"QuestionText": "Matrix, One Answer Per Row",
        "Label": "",
		"A1DText": "Row 1",
		"A1DWeight": 0,
		"A2DText": "Column 2",
		"A2DWeight": 0,
		"TextAnswer": null
	},
	{
		"Number": "Sample0101",
		"Name": "Sample Lab 0101",
		"Tag": null,
		"Start": 1333267200,
		"End": 1333299600,
		"QuestionText": "Matrix, One Answer Per Row",
        "Label": "",
		"A1DText": "Row 2",
		"A1DWeight": 0,
		"A2DText": "Column 2",
		"A2DWeight": 0,
		"TextAnswer": null
	},
	{
		"Number": "Sample0101",
		"Name": "Sample Lab 0101",
		"Tag": null,
		"Start": 1333267200,
		"End": 1333299600,
		"QuestionText": "Matrix, One Answer Per Row",
        "Label": "",
		"A1DText": "Row 3",
		"A1DWeight": 0,
		"A2DText": "Column 2",
		"A2DWeight": 0,
		"TextAnswer": null
	},
	{
		"Number": "Sample0101",
		"Name": "Sample Lab 0101",
		"Tag": null,
		"Start": 1333267200,
		"End": 1333299600,
		"QuestionText": "Matrix, Multiple Answers Per Row",
        "Label": "",
		"A1DText": "Row 1",
		"A1DWeight": 0,
		"A2DText": "Column 1",
		"A2DWeight": 0,
		"TextAnswer": null
	},
	{
		"Number": "Sample0101",
		"Name": "Sample Lab 0101",
		"Tag": null,
		"Start": 1333267200,
		"End": 1333299600,
		"QuestionText": "Matrix, Multiple Answers Per Row",
        "Label": "",
		"A1DText": "Row 3",
		"A1DWeight": 0,
		"A2DText": "Column 3",
		"A2DWeight": 0,
		"TextAnswer": null
	},
	{
		"Number": "Sample0101",
		"Name": "Sample Lab 0101",
		"Tag": null,
		"Start": 1333267200,
		"End": 1333299600,
		"QuestionText": "Single Textbox",
        "Label": "",
		"A1DText": null,
		"A1DWeight": null,
		"A2DText": null,
		"A2DWeight": null,
		"TextAnswer": "Just answer 2"
	},
	{
		"Number": "Sample0101",
		"Name": "Sample Lab 0101",
		"Tag": null,
		"Start": 1333267200,
		"End": 1333299600,
		"QuestionText": "Multiple Textboxs",
        "Label": "",
		"A1DText": "Textbox 1",
		"A1DWeight": 0,
		"A2DText": null,
		"A2DWeight": null,
		"TextAnswer": "Textboxes 2 and 3 are blank."
	},
	{
		"Number": "Sample0101",
		"Name": "Sample Lab 0101",
		"Tag": null,
		"Start": 1333267200,
		"End": 1333299600,
		"QuestionText": "Multiple Textboxs",
        "Label": "",
		"A1DText": "Textbox 2",
		"A1DWeight": 0,
		"A2DText": null,
		"A2DWeight": null,
		"TextAnswer": "This is answer 2"
	},
	{
		"Number": "Sample0101",
		"Name": "Sample Lab 0101",
		"Tag": null,
		"Start": 1333267200,
		"End": 1333299600,
		"QuestionText": "Multiple Textboxs",
        "Label": "",
		"A1DText": "Textbox 1",
		"A1DWeight": 0,
		"A2DText": null,
		"A2DWeight": null,
		"TextAnswer": "This is answer 1"
	},
	{
		"Number": "Sample0101",
		"Name": "Sample Lab 0101",
		"Tag": null,
		"Start": 1333267200,
		"End": 1333299600,
		"QuestionText": "Single Textbox",
        "Label": "",
		"A1DText": null,
		"A1DWeight": null,
		"A2DText": null,
		"A2DWeight": null,
		"TextAnswer": "I answered 1 and 2"
	},
	{
		"Number": "Sample0101",
		"Name": "Sample Lab 0101",
		"Tag": null,
		"Start": 1333267200,
		"End": 1333299600,
		"QuestionText": "Matrix, Multiple Answers Per Row",
        "Label": "",
		"A1DText": "Row 3",
		"A1DWeight": 0,
		"A2DText": "Column 3",
		"A2DWeight": 0,
		"TextAnswer": null
	},
	{
		"Number": "Sample0101",
		"Name": "Sample Lab 0101",
		"Tag": null,
		"Start": 1333267200,
		"End": 1333299600,
		"QuestionText": "Matrix, Multiple Answers Per Row",
        "Label": "",
		"A1DText": "Row 3",
		"A1DWeight": 0,
		"A2DText": "Column 1",
		"A2DWeight": 0,
		"TextAnswer": null
	},
	{
		"Number": "Sample0101",
		"Name": "Sample Lab 0101",
		"Tag": null,
		"Start": 1333267200,
		"End": 1333299600,
        "Label": "",
		"QuestionText": "Matrix, Multiple Answers Per Row",
		"A1DText": "Row 2",
		"A1DWeight": 0,
		"A2DText": "Column 3",
		"A2DWeight": 0,
		"TextAnswer": null
	}],
	"Error": null,
	"Status": 1
}
```

