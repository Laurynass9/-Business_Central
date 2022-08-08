table 50100 "Auto Setup"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
            DataClassification = CustomerContent;
        }
        field(10; "Car No Series"; Code[20])
        {
            Caption = 'Car No Series';
            DataClassification = CustomerContent;
        }
        field(20; "Rent Card Series"; Code[20])
        {
            Caption = 'Rent Card Series';
            DataClassification = CustomerContent;
        }
        field(30; "Attachment Location"; Code[20])
        {
            Caption = 'Attachment Location';
            DataClassification = CustomerContent;
            TableRelation = Location;
        }
    }

    keys
    {
        key(Key1; "Primary Key") { }
    }

    trigger OnInsert()
    begin
        InitDefaultValues();
    end;

    procedure InsertIfNoExists()
    var
    begin
        Reset();
        if not Get() then begin
            Init();
            Insert(true);
        end;
    end;

    local procedure InitDefaultValues()
    begin

    end;
}