page 50133 "Auto Reservation List"
{
    Caption = 'Auto Reservation List';
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = "Auto Reservation";

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
}