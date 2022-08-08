page 50107 "Auto Damage List"
{
    Caption = 'Auto Damage';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Auto Damage";

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
                field(Date; Rec.Date)
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field(Status; Rec.Status)
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