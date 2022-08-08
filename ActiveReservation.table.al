table 50105 "Actives Reservation"
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
        field(20; "Client No"; Code[20])
        {
            Caption = 'Client No.';
            DataClassification = CustomerContent;
            TableRelation = Customer;
        }
        field(30; "Reservation Start Date"; Date)
        {
            Caption = 'Reservation Start Date';
            DataClassification = CustomerContent;
        }
        field(40; "Reservation End Date"; Date)
        {
            Caption = 'Reservation End Date';
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