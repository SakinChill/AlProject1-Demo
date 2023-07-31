page 50132 "Auto Model List"
{
    Caption = 'Auto Model List';
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = "Auto Model";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Markes kodas"; Rec."Markes kodas")
                {
                    ToolTip = 'Markes kodas';
                }
                field(Kodas; Rec.Kodas)
                {
                    ToolTip = 'Kodas';
                }
                field(Aprasas; Rec.Aprasas)
                {
                    ToolTip = 'Aprasas';
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