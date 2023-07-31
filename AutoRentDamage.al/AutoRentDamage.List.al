page 50140 "Auto Rent Damage List"
{
    Caption = 'Auto Rent Damage List';
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = "Auto Rent Damage";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Dokumento Nr."; Rec."Dokumento Nr.")
                {
                    ToolTip = 'Dokumento Nr.';
                }
                field("Eilutes Nr."; Rec."Eilutes Nr.")
                {
                    ToolTip = 'Eilutes Nr.';
                }
                field("Data"; Rec."Data")
                {
                    ToolTip = 'Data';
                }
                field("Aprasas"; Rec."Aprasas")
                {
                    ToolTip = 'Aprasas';
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