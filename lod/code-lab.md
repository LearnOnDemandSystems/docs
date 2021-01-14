---
title: "Code Labs"
description: "Code Lab Authoring explained. Glossary of terms and walkthrough for creating your first code lab."
isPublished: false
---

# Code Lab Glossary of Terms

Code Lab - A new lab platform type with a code editor ui in the lab client (monaco) and a backend service calling docker containers to run code.

Code Container - A language specific docker image with a compiler and run time where the written code is compiled and evaluated.

## Code Lab Dialog

The </> button in Edit Instructions of your lab profile.

Code Tests - To test the student's code submission. Inputs are passed in on the command line, and the output of the program is compared to the expected output. If they match, the test passes. Each test is a separate run of the program.

Code Languages - Configuration and templates that are unique for each programming language. Each set is functionally the same, but translated to a different language.

## Code Language Dialog
	
Code Language - A specific programming language - a code lab can have multiple languages, each language has pieces which need to be defined by the lab author.

Template - Presented to the student when the lab is launched. Usually a blank function, the student writes code inside this empty function template.

Program Wrapper - Wraps the students code, must contain the string #CODE# which is replaced by the student's code submission. Hides implementation details used to execute the function as part of a full program in the backend LOD service. Contains library includes, passing command line arguments to the student's function, and printing output back to console for testing.

Test Command String - A command to run the created program. String.Format is used to replace arguments with test inputs. {0} is input 1, {1} is input 2, etc. The program is executed once per test.

Compilation Command - For compiled languages only, this command is ran to compile source code into an executable.

Project Wrapper - Extra project information, this is the .csproj for C# programs.

# Building your first code lab

## Running the default lab

1. Create a new lab and enable the "Code Lab Fabric" checkbox. This enables the Code Fabric button in the lab profile's Edit Instructions and the code editor in the lab client. Save the new profile.

2. Click Edit Instructions. Click the Code Fabric button "</>" at the top. This dialog contains all the code fabric specific configuration.

3. Click Add Code Language to add the first language to your lab. We will start with c, compiled using gcc:10.2.0. The dialog will contain working default templates for a very simple program that takes a single integer input and adds 1 to it. Look over these fields to get an idea of how your lab will work. 
   - If you want to run the default template, close the Add Code Language dialog now. Add a new test with working values like "TEST1, 1, 2". Click Save and launch your lab. Hit "Submit Code" and your function will be evaluated, you should get a successful test run.
   - Please note that this default setup has a completed function "MyFunction" in the Template field. When you create your lab MyFunction will be empty, and the code inside will be written by the student.

## Building your lab

1. Now we will start writing our lab. This example will be a Leap Year Calculator which outputs how many leap years have occured since the given input year. Go to the menu in your running lab and hit Edit Instructions then hit the Code Fabric button "</>"

2. Edit the language definition by clicking the pencil next to "Language c".
   - First the Template. This is an empty function the student will see when they first launch their lab.
    > int NumLeapYearsSince(int year)
    > {
    > 
    > }
   - Next the Program Wrapper. The student doesn't see this code. This hides LOD implementation details which turn a bare function into a working program. Most importantly note the string #CODE# which is replaced by the student's code submission when it's time to compile.
    
   - This lab uses the time.h library, so we include it here. We also need to convert command line arguments into integers to pass into the students function, and then print the result of the function with printf. This is used to run tests.    
    > #include <stdio.h>
    > #include <stdlib.h>
    > #include <time.h>
    > 
    > int NumLeapYearsSince(int year);
    > 
    > int main(int argc, char *argv[] ) {
    >    printf("%d\n", NumLeapYearsSince(atoi(argv[1])));
    > }
    > 
    > #CODE#  
   - We don't need to change any advanced options for this lab, but if you wanted a function that accepted multiple inputs you would need to change the Test Command String. The test command uses String.Format to run tests. IE a test with 2 inputs would be "./myapp {0} {1}"
   - Click Close to return to the previous dialog.

3. Create your tests. Test Name is for diplay purposes. You can have a variable number of inputs and one output. The output is compared to what the program outputs to the command line after execution.

| Test Name | Input 1 | Output |
| ----------- | ----------- | ----------- |
| TEST1 | 2000 | 6 |
| TEST2 | 1600 | 103 |
| TEST3 | 2020 | 1 |

4. Write your instructions. If you have instructions that are specific to one language, you can use the codeLanguage variable like ":::sectionName(codeLanguage=c)" - this section will only be shown when the specified language is selected. This example has copyable lines that the student can paste into the code editor where they want.
   - The second page has typetext which when clicked will replace everything in the code editor with a completed, working version of the code.
<details>
  <summary>Example Leap Year Instructions - Click to expand!</summary>
  
~~~text 
#Coding Challenge: Leap Years

Your challenge is to write a function in the language of your choice (c, csharp, go, java, php, python) that calculates the number of leap years that have occurred since a given year. 

Examine the NumLeapYearsSince function template.  It contains a template for a function named <i>NumLeapYearsSince</i>. The function accepts a year as a parameter and returns an integer. It needs to be updated to return the number of leap years that have occurred between the input year and the current year. 

The algorithm to determine if a given year is a leap year:

1. If the year is evenly divisible by 4, go to step 2. Otherwise, go to step 5.
1. If the year is evenly divisible by 100, go to step 3. Otherwise, go to step 4.
1. If the year is evenly divisible by 400, go to step 4. Otherwise, go to step 5.
1. The year is a leap year 
1. The year is not a leap year

:::sectionName(codeLanguage=c)
> [!HINT]
> You can get the current year in c with #include <time.h\>
>
> ++time_t t = time(NULL);++
>
> ++struct tm tm = *localtime(&t);++
>
> ++int currentYear = tm.tm_year + 1900;++
:::
:::sectionName(codeLanguage=csharp)
> [!HINT]
> You can get the current year in C# using 
>
> ++DateTime.UtcNow.Year++
:::
:::sectionName(codeLanguage=go)
> [!HINT]
> You can get the current year in go with import ("time")
>
> ++time.Now().Year()++
:::
:::sectionName(codeLanguage=java)
> [!HINT]
> You can get the current year in go with import java.util.Calendar;
>
> ++Calendar.getInstance().get(Calendar.YEAR);++
:::
:::sectionName(codeLanguage=php)
> [!HINT]
> You can get the current year in php using 
>
> ++date("Y");++
:::
:::sectionName(codeLanguage=python)
> [!HINT]
> You can get the current year in go with import datetime
>
> ++currentYear = datetime.datetime.now().year++
:::

Run and test your algorithm at any time by clicking the Submit Code button below the editor.

Complete your work in the code editor to the left.

===

#Test your work

How many leap years have occurred since 2000?

How many leap years have occurred since 1600?

Is 2020 a leap year?

##Need Some Help?

:::sectionName(codeLanguage=c)
[C] Solution

    int NumLeapYearsSince(int year)
    {
        int numLeapYears = 0;
        time_t t = time(NULL);
        struct tm tm = *localtime(&t);
        int currentYear = tm.tm_year + 1900;
        for (int y = year; y <= currentYear; y++)
        {
            if ((y % 4 == 0 && y % 100 != 0) || (y % 400 == 0)) 
            {
                numLeapYears += 1;
            }
        }   
        return numLeapYears;
    }
:::
:::sectionName(codeLanguage=csharp)
[C#] Solution

    int NumLeapYearsSince(int year)
    {
        var numLeapYears = 0;
        var currentYear = DateTime.UtcNow.Year;
        for (var y = year; y <= currentYear; y++)
        {
            if ((y % 4 == 0 && y % 100 != 0) || (y % 400 == 0))
            {
                numLeapYears += 1;
            }
        }   
        return numLeapYears;
    }
:::
:::sectionName(codeLanguage=go)
[Go] Solution

    func NumLeapYearsSince(year int) int {
        numLeapYears := 0
        currentYear := time.Now().Year()
        for y := year; y <= currentYear; y++ {
            if ((y % 4 == 0 && y % 100 != 0) || (y % 400 == 0)) {
                numLeapYears += 1
            }
        }   
        return numLeapYears
    }
:::
:::sectionName(codeLanguage=java)
[Java] Solution

    int NumLeapYearsSince(int year)
    {
        int numLeapYears = 0;
        int currentYear = Calendar.getInstance().get(Calendar.YEAR);
        for (var y = year; y <= currentYear; y++)
        {
            if ((y % 4 == 0 && y % 100 != 0) || (y % 400 == 0))
            {
                numLeapYears += 1;
            }
        }   
        return numLeapYears;
    }
:::
:::sectionName(codeLanguage=php)
[PHP] Solution

    <?php
    function NumLeapYearsSince($year) {
        $numLeapYears = 0;
        $currentYear = date("Y");
        for ($y = $year; $y <= $currentYear; $y++)
        {
            if( (0 == $y % 4) and (0 != $y % 100) or (0 == $y % 400) )  
            {
                $numLeapYears += 1;
            }
        }   
        return $numLeapYears;
    }
    ?>
:::
:::sectionName(codeLanguage=python)
[Python 3] Solution

    def NumLeapYearsSince(year):
        start = year

        import datetime
        currentYear = datetime.datetime.now().year

        numLeapYears = 0

        while(start <= currentYear):  
            if start % 100 == 0 and start % 400 == 0:
                numLeapYears += 1
                start += 1
            if start % 4 == 0 and start % 100 != 0:
                numLeapYears += 1
                start += 1
            else:
                start += 1

        return numLeapYears
:::
~~~
</details>

5. Return to your running lab and refresh. You will now see your instructions and empty function. You can submit the code now and observe failed tests and a compilation error - your function has no return value. Go to the second page of instructions and insert the solution. Submit Code and you will see the results of the tests you created before. Success! 

Congratulations, you've created your first code lab!
