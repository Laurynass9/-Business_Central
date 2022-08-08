page 50100 "Auto Setup Card"
{
    Caption = 'Auto Setup';
    PageType = Card;
    SourceTable = "Auto Setup";
    UsageCategory = Administration;
    ApplicationArea = All;
    PromotedActionCategories = 'Setup,Process', Comment = 'LTH=Nustatymai,Vykdymas';

    InsertAllowed = false;
    DeleteAllowed = false;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                Caption = 'General';
                field("Car No Series"; Rec."Car No Series")
                {
                    Caption = 'Car No Series';
                    ApplicationArea = All;
                }
                field("Rent Card Series"; Rec."Rent Card Series")
                {
                    Caption = 'Rent Card Series';
                    ApplicationArea = All;
                }
                field("Attachment Location"; Rec."Attachment Location")
                {
                    Caption = 'Attachment Location';
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
    begin
        Rec.InsertIfNoExists();
    end;
}