page 50112 "Finished Auto Rent Header Card"
{
    PageType = Card;
    UsageCategory = None;
    SourceTable = "Auto Rent Header";

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                Caption = 'General';
                field(No; Rec.No)
                {
                    ApplicationArea = All;
                }
                field("Client No"; Rec."Client No")
                {
                    ApplicationArea = All;
                }
                field("Driver License"; Rec."Driver License")
                {
                    ApplicationArea = All;
                }
                field(Date; Rec.Date)
                {
                    ApplicationArea = All;
                }
                field("Auto No"; Rec."Auto No")
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
                field(Sum; Rec.Sum)
                {
                    ApplicationArea = All;
                }

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}