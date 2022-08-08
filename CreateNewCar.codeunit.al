codeunit 50100 "Create New Car"
{
    procedure CreateNewCar(Auto: Record Auto)
    begin

    end;

    procedure GetNextCarNo(Auto: Record Auto): Code[10]
    var
        Number: Integer;
    begin

        if Auto.FindLast() then begin
            Evaluate(Number, Auto.No);
            Number := Number + 1;
            exit(Format(Number))
        end;

        exit('1')
    end;
}