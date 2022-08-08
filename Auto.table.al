table 50103 Auto
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; No; Code[10])
        {
            Caption = 'No.';
            DataClassification = CustomerContent;
            //Editable = false;
        }
        field(10; "Auto Name"; Text[30])
        {
            Caption = 'Auto Name';
            DataClassification = CustomerContent;
        }
        field(20; "Auto Mark"; Code[20])
        {
            Caption = 'Auto Mark';
            DataClassification = CustomerContent;
            TableRelation = "Auto Mark";
        }
        field(30; "Auto Model"; Code[20])
        {
            Caption = 'Auto Model';
            DataClassification = CustomerContent;
            TableRelation = "Auto Model";
        }
        field(40; "Date Of Manufacture"; Date)
        {
            Caption = 'Date Of Manufacture';
            DataClassification = CustomerContent;
        }
        field(50; "Insurance End Date"; Date)
        {
            Caption = 'Insurance End Date';
            DataClassification = CustomerContent;
        }
        field(60; "Technical Service Up To"; Date)
        {
            Caption = 'Technical Service Up To';
            DataClassification = CustomerContent;
        }
        field(70; "Location Code"; Code[20])
        {
            Caption = 'Location Code';
            DataClassification = CustomerContent;
            TableRelation = Location;
        }
        field(80; "Rental Service"; Code[20])
        {
            Caption = 'Rental Service';
            DataClassification = CustomerContent;
            TableRelation = Resource;
        }
        field(90; "Rental Price"; Code[20])
        {
            Caption = 'Rental Price';
            DataClassification = CustomerContent;
        }
        field(100; "Rent Price"; Decimal)
        {
            Caption = 'Rental Price';
            //DataClassification = CustomerContent;
            FieldClass = FlowField;
            CalcFormula = sum("Detailed Cust. Ledg. Entry"."Amount (LCY)"
            where("Customer No." = field(No),
            "Initial Entry Global Dim. 1" = field("Auto Model")));
        }
    }

    keys
    {
        key(Key1; No) { }
    }

    trigger OnInsert()
    var
        AutoSetup: Record "Auto Setup";
        NoSeriesManagement: Codeunit NoSeriesManagement;
    //CreateNewCar: Codeunit "Create New Car";
    begin
        if No = '' then begin
            AutoSetup.get();
            AutoSetup.testfield("Car No Series");
            No := NoSeriesManagement.GetNextNo(AutoSetup."Car No Series", WorkDate(), true);
        end;
        //CreateNewCar.GetNextCarNo(Rec);
    end;
}