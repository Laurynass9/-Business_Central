table 50109 "New Auto Model"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Mark Code"; Code[20])
        {
            Caption = 'Mark Code';
            DataClassification = CustomerContent;
        }
        field(10; Model; Code[20])
        {
            Caption = 'Model';
            DataClassification = CustomerContent;
        }
        field(20; Description; Text[30])
        {
            Caption = 'Description';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(Key1; "Mark Code", Model)
        {
            Clustered = true;
        }
    }

}