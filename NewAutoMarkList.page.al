page 50110 "New Auto Mark List"
{
    Caption = 'New Auto Mark';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Auto Mark";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                Caption = 'General';
                field(Mark; Rec.Mark)
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
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
            group(group1)
            {
                action(Models)
                {
                    ApplicationArea = All;
                    Caption = 'Models';
                    ToolTip = 'Models';
                    Image = CurrencyExchangeRates;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                    RunObject = page "New Auto Model List";
                    RunPageLink = "Mark Code" = field(Mark);
                    RunPageView = sorting("Mark Code");
                }
            }
        }
    }
}