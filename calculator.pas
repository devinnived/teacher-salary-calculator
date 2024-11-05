program ExcellenceSchoolOfMathsAndScience;

type
    teacher = record
        name: string;
        salary: integer;
        allowance: integer;
        deducations: integer;
        isFullTime: boolean;
    end;

const
    numberOfTeachers = 3;

var
    teachers: array [1..numberOfTeachers] of teacher;
    numberOfPartTimeTeachers: integer = 0;
    index: integer;
    fullTimeStatus: string;

begin
    for index := 1 to numberOfTeachers do
    begin
        writeln('------------------------------------------------');

        writeln('Please enter the teacher''s name:');
        readln(teachers[index].name);

        writeln('Please enter the teacher''s basic salary:');
        readln(teachers[index].salary);

        writeln('Please enter the teacher''s total allowance:');
        readln(teachers[index].allowance);

        writeln('Please enter the teacher''s total deductions:');
        readln(teachers[index].deducations);

        writeln('Is the teacher a full time staff? Type Yes or No.');
        readln(fullTimeStatus);

        if(fullTimeStatus = 'Yes') then
            teachers[index].isFullTime := true
        else
            teachers[index].isFullTime := false;
    end;

    writeln('****************************************************');

    for index := 1 to numberOfTeachers do
    begin
        if(teachers[index].isFullTime) then
            writeln('Teacher''s name: ', teachers[index].name, '. Teacher''s net salary: ', (teachers[index].salary + teachers[index].allowance) - teachers[index].deducations)
        else
            numberOfPartTimeTeachers := numberOfPartTimeTeachers + 1;
    end;

    writeln('The number of part time teachers are ', numberOfPartTimeTeachers);
end.