page 50134 "Auto Damage List"
{
    Caption = 'Auto Damage List';
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = "Auto Damage";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Automobilio Nr."; Rec."Automobilio Nr.")
                {
                    ToolTip = 'Automobilio Nr.';
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
                field("Statusas"; Rec."Statusas")
                {
                    ToolTip = 'Statusas';
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

                trigger OnAction();
                begin

                end;
            }
        }
    }
}