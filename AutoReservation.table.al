table 50104 "Auto Reservation"
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

            trigger OnValidate()
            begin
                CheckDates();
            end;
        }
        field(40; "Reservation End Date"; Date)
        {
            Caption = 'Reservation End Date';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                CheckDates();
            end;
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

    local procedure CheckDates()
    var
        DataError: Label '%1 (%3) must be earlier than %2 (%4)';
    begin
        if ("Reservation Start Date" = 0D) or ("Reservation End Date" = 0D) then
            exit;

        if "Reservation Start Date" > "Reservation End Date" then
            Error(DataError,
            FieldCaption("Reservation Start Date"),
            FieldCaption("Reservation End Date"),
            "Reservation Start Date",
            "Reservation End Date");
    end;

}