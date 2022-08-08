table 50106 "Auto Damage"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Auto No"; Code[10])
        {
            Caption = 'Auto No.';
            DataClassification = CustomerContent;
        }
        field(10; "Line No"; Code[10])
        {
            Caption = 'Line No.';
            DataClassification = CustomerContent;
        }
        field(20; Date; Date)
        {
            Caption = 'Date';
            DataClassification = CustomerContent;
        }
        field(30; "Description"; Text[30])
        {
            Caption = 'Reservation Start Date';
            DataClassification = CustomerContent;
        }
        field(40; "Status"; Code[20])
        {
            Caption = 'Status';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(Key1; "Auto No")
        {
            Clustered = true;
        }
        key(Key2; "Line No") { }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}