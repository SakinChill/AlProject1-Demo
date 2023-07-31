page 50138 "Auto Rent Header Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Auto Rent Header";

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
                field("Busena"; Rec."Busena")
                {
                    ToolTip = 'Busena';
                }
            }
        }
    }


    actions
    {
        area(Processing)
        {
            action(IsduotaRent)
            {
                Caption = 'Isduota';
                ToolTip = 'Isduota';

                trigger OnAction()
                begin
                    Codeunit.Run(Codeunit::"Auto Rent Header - Isduota", Rec)
                end;
            }
            action(RentAtidaryta)
            {
                Caption = 'Atidaryta';
                ToolTip = 'Atidaryta';

                trigger OnAction()
                var
                    AutoRentHeaderIsduota: Codeunit "Auto Rent Header - Isduota";
                begin
                    AutoRentHeaderIsduota.OpenContract(Rec);
                end;
            }
        }

    }

}