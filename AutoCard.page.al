page 50103 "Auto Card"
{
    PageType = Card;
    UsageCategory = None;
    SourceTable = Auto;

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
                field("Auto Name"; Rec."Auto Name")
                {
                    ApplicationArea = All;
                }
                field("Auto Mark"; Rec."Auto Mark")
                {
                    ApplicationArea = All;
                }
                field("Auto Model"; Rec."Auto Model")
                {
                    ApplicationArea = All;
                }
                field("Date Of Manufacture"; Rec."Date Of Manufacture")
                {
                    ApplicationArea = All;
                }
                field("Insurance End Date"; Rec."Insurance End Date")
                {
                    ApplicationArea = All;
                }
                field("Technical Service Up To"; Rec."Technical Service Up To")
                {
                    ApplicationArea = All;
                }
                field("Location Code"; Rec."Location Code")
                {
                    ApplicationArea = All;
                }
                field("Rental Service"; Rec."Rental Service")
                {
                    ApplicationArea = All;
                }
                field("Rental Price"; Rec."Rental Price")
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

    trigger OnOpenPage()
    var
        CreateNewCar: Codeunit "Create New Car";
    begin
        CreateNewCar.GetNextCarNo(Rec);
    end;
}