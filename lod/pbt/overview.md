# **Learn on Demand Systems Scoring Options**

The Lab on Demand platform supports the ability to score users either in an exam/quiz format or within a hands-on lab. The options for what can be scored are plentiful and can be mixed and matched within a single scenario. These options include Windows and Linux VM configurations, cloud subscription configurations, multiple choice questions, and short answer questions with either precise or flexible answers. There are a few distinct methods of scoring that are implemented on the platform in very similar ways, yet have vastly different user experiences.

# Scoring Formats

### Traditional Exams/Quizzes

This format presents a user with a series of multiple choice or short answer questions that they are required to answer. 

In this format, users complete the exam/quiz then submit it at the end for scoring and are presented with a grade.

### Activity Based Assessments

This format engages the user directly and allows them to either validate skills they already have or have obtained throughout a course. These may take on traditional question/answer format, but excel in hands-on learning scenarios where they evaluate the user's environment in an automated fashion and encourage a try, fail, learn, repeat mentality by giving users an opportunity to attempt a goal, quickly determine success or failure, and try again if necessary. While a try, fail, learn model may be used with Activity Based Assessments, they may also permit only a single attempt without retries and be scored based upon that outcome.

In this format, while a user progresses through a course or hands-on lab they are presented a challenge or question, given an opportunity to complete or answer it, and then they manually trigger that specific item and are immediately provided feedback.

### Performance Based Testing

This format, similar to Activity Based Assessments, engages the user directly and allows for skills validation. This can be used in scenarios as small ensuring users learned some of the key topics within a course, or scenarios as large as a technical certification exams. While Activity Based Assessments are best used for user engagement in learning by providing valuable feeback, Performance Based Testing excels in validating retention after learning.

In this format, a user is expected to complete a series of tasks and then, similar to Traditional Exams/Quizzes, submit everything at the end for scoring to be presented with a grade. Unlike Activity Based Assessments, users do not receive verbose feedback for every item as they progress.

# Configuring Items

Within the Lab on Demand platform, all of the above scoring formats are configured in very similar ways. While traditional items have pre-defined structures, hands-on items that are scored in an automated fashion are designed by the author using scripting languages - such as PowerShell and Bash - to evaluate the user's environment. All of these items are designed within the [Lab on Demand Activity Editor](https://docs.learnondemandsystems.com/lod/activities.md).

# Scoring Items Best Practices

- Know the user experience you desire and select a format that meets that experience.

- Don't be afraid to mix and match item types! Sometimes within hands-on Activity Based Assessments and Performance Based Testing, traditional question-style items are still useful.

- Maintain a development environment separate from your production environment.

- Design scripts to be only as complex as they need to be. Simpler designs are easier to replicate the format across multiple items and much easier to modify if/when necessary.

- Design output/feedback that's useful for the format being implemented. See below for examples:
    - Activity Based Assessment Script and Output

# Scoring Script Structure {#script}
