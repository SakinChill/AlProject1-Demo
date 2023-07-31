page 50141 "Finished Auto Rent Header List"
{
    Caption = 'Finished Auto Rent Header List';
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = "Finished Auto Rent Header";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Nr."; Rec."Nr.")
                {
                    ToolTip = 'Nr.';
                }
                field("Kliento Nr."; Rec."Kliento Nr.")
                {
                    ToolTip = 'Kliento Nr.';
                }
                field("Vairuotojo pazymejimas"; Rec."Vairuotojo pazymejimas")
                {
                    ToolTip = 'Vairuotojo pazymejimas';
                }
                field("Automobilio Nr."; Rec."Automobilio Nr.")
                {
                    ToolTip = 'Automobilio Nr.';
                }
                field("Rezervuota nuo data"; Rec."Rezervuota nuo data")
                {
                    ToolTip = 'Rezervuota nuo data';
                }
                field("Rezervuota iki data"; Rec."Rezervuota iki data")
                {
                    ToolTip = 'Rezervuota iki data';
                }
                field("Suma"; Rec."Suma")
                {
                    ToolTip = 'Suma';
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