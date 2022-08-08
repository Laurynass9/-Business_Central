page 50113 "Finished Auto Rent Header List"
{
    Caption = 'Auto Rent Header';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Auto Rent Header";
    CardPageId = "Auto Rent Header Card";


    layout
    {
        area(Content)
        {
            repeater(GroupName)
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