table 50107 "Auto Rent Header"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; No; Code[10])
        {
            Caption = 'No.';
            DataClassification = CustomerContent;
        }
        field(10; "Client No"; Code[20])
        {
            Caption = 'Client No.';
            DataClassification = CustomerContent;
        }
        field(20; "Driver License"; Media)
        {
            Caption = 'Driver License';
            DataClassification = CustomerContent;
        }
        field(30; Date; Date)
        {
            Caption = 'Date';
            DataClassification = CustomerContent;
        }
        field(40; "Auto No"; Code[20])
        {
            Caption = 'Auto No';
            DataClassification = CustomerContent;
        }
        field(50; "Reservation Start Date"; Date)
        {
            Caption = 'Reservation Start Date';
            DataClassification = CustomerContent;
        }
        field(60; "Reservation End Date"; Date)
        {
            Caption = 'Reservation End Date';
            DataClassification = CustomerContent;
        }
        field(70; Sum; Code[20])
        {
            Caption = 'Sum';
            DataClassification = CustomerContent;
        }
        field(80; "Status"; Code[20])
        {
            Caption = 'Status';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(Key1; No) { }
    }

}