page 50131 "Auto Mark"
{
    Caption = 'Auto Mark';
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = "Auto Mark";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
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