table 50108 "New Auto Mark"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; Mark; Code[20])
        {
            Caption = 'Mark';
            DataClassification = CustomerContent;
        }
        field(10; Description; Text[100])
        {
            Caption = 'Description';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(Key1; Mark)
        {
            Clustered = true;
        }
    }

}