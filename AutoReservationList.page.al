page 50105 "Auto Reservation List"
{
    Caption = 'Auto Reservation';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Auto Reservation";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                Caption = 'General';
                field("Auto No"; Rec."Auto No")
                {
                    ApplicationArea = All;
                }
                field("Line No"; Rec."Line No")
                {
                    ApplicationArea = All;
                }
                field("Client No"; Rec."Client No")
                {
                    ApplicationArea = All;
                }
                field("Reservation Start Date"; Rec."Reservation Start Date")
                {
                    ApplicationArea = All;
                }
                field("Reservation End Date"; Rec."Reservation End Date")
                {
                    ApplicationArea = All;
                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}