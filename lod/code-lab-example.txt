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
