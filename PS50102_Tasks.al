page 50102 "Homework Tasks"
{
    Caption = 'Homework Tasks';
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            group(Tasks)
            {
                field("Text to reverse"; inputText)
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
            action(FirstTask)
            {
                Caption = 'Reverse text';
                ApplicationArea = All;

                trigger OnAction()
                var
                    FirstTask: Codeunit "Tasks Functions";
                begin
                    FirstTask.ReverseText(inputText);
                end;
            }

            action(SecondTask)
            {
                Caption = 'Find the largest and smallest numbers';
                ApplicationArea = All;

                trigger OnAction()
                var
                    SecondTask: Codeunit "Tasks Functions";
                begin
                    SecondTask.FindMaxMinNum();
                end;
            }

            action(ThirdTask)
            {
                Caption = 'Find repeating numbers';
                ApplicationArea = All;

                trigger OnAction()
                var
                    ThirdTask: Codeunit "Tasks Functions";
                begin
                    ThirdTask.FindRepeatingNum();
                end;
            }

            action(FourthTask)
            {
                Caption = 'Find Vowels and Consonants';
                ApplicationArea = All;

                trigger OnAction()
                var
                    FourthTask: Codeunit "Tasks Functions";
                begin
                    FourthTask.FindVowelsAndConsonants();
                end;
            }

        }
    }

    var
        myInt: Integer;
        inputText: Text;
}