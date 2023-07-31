page 50143 "Auto Reservation Valid List"
{
    Caption = 'Auto Reservation Valid List';
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = "Auto Reservation Valid";

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
                field("Kliento Nr."; Rec."Kliento Nr.")
                {
                    ToolTip = 'Kliento Nr.';
                }
                field("Rezervuota nuo data laikas"; Rec."Rezervuota nuo data laikas")
                {
                    ToolTip = 'Rezervuota nuo data laikas';
                }
                field("Rezervuota iki data laikas"; Rec."Rezervuota iki data laikas")
                {
                    ToolTip = 'Rezervuota iki data laikas';
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


    trigger OnOpenPage()
    var
        Autoo: Codeunit Transfer;
    begin
        Autoo.Copy();
    end;


}