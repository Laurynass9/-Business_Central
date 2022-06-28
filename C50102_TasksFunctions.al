codeunit 50102 "Tasks Functions"
{
    trigger OnRun()
    begin

    end;

    procedure ReverseText(textVar: Text)
    var
        resultVar: Text;
        Length, Count1 : Integer;
    begin
        resultVar := '';
        Length := StrLen(textVar);
        for Count1 := Length downto 1 do
            resultVar := resultVar + textVar[Count1];

        Message(resultVar);
    end;

    procedure FindMaxMinNum()
    var
        resultVar: Text;
        Maximum, Minimum, Count1 : Integer;
    begin
        for Count1 := 1 to 100 do
            ArrayOfNumbers[Count1] := Random(100);

        Minimum := ArrayOfNumbers[1];
        Maximum := ArrayOfNumbers[1];
        for Count1 := 2 to 100 do begin
            if (ArrayOfNumbers[Count1] < Minimum) then
                Minimum := ArrayOfNumbers[Count1];
            if (ArrayOfNumbers[Count1] > Maximum) then
                Maximum := ArrayOfNumbers[Count1];
        end;
        resultVar := Format(Maximum) + ' ' + Format(Minimum);
        Message(resultVar);
    end;

    procedure FindRepeatingNum()
    var
        resultVar: Text;
        Count1, Count2 : Integer;
    begin
        resultVar := '';
        for Count1 := 1 to 100 do
            ArrayOfNumbers[Count1] := Random(100);

        for Count1 := 1 to 100 do
            ArrayOfNumRep[Count1] := 0;

        for Count1 := 1 to 100 do
            for Count2 := Count1 + 1 to 100 do begin
                if (ArrayOfNumbers[Count1] = ArrayOfNumbers[Count2]) then
                    ArrayOfNumRep[ArrayOfNumbers[Count1]] += 1;
            end;

        for Count1 := 1 to 100 do
            if (ArrayOfNumRep[Count1] > 0) then
                resultVar := resultVar + ' ' + Format(Count1);

        Message(resultVar);
    end;

    procedure FindVowelsAndConsonants()
    var
        resultVar, Text1 : Text;
        Length, Vowels, Consonants, Count1 : Integer;
    begin
        Text1 := 'Programuotojo ar tiesiog bet kokio IT specialisto profesija taps vis labiau įprasta.';
        Text1 := LowerCase(Text1);
        Length := StrLen(Text1);
        Vowels := 0;
        Consonants := 0;
        for Count1 := 1 to Length do begin
            case Text1[Count1] of
                'a', 'ą', 'e', 'ę', 'ė', 'i', 'į', 'y', 'o', 'u', 'ų', 'ū':
                    Vowels += 1;
                'b', 'č', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'r', 's', 'š', 't', 'v', 'z', 'ž':
                    Consonants += 1;
            end;
        end;

        resultVar := 'Balsės: ' + Format(Vowels) + ' priebalsės: ' + Format(Consonants);
        Message(resultVar);
    end;

    var
        myInt: Integer;
        ArrayOfNumbers: Array[100] of Integer;
        ArrayOfNumRep: array[100] of Integer;
}