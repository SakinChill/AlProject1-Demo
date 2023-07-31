page 50142 "Finished Auto Rent Header Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = None;
    SourceTable = "Finished Auto Rent Header";

    layout
    {
        area(Content)
        {
            group(GroupName)
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
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {


            }
        }
    }

}