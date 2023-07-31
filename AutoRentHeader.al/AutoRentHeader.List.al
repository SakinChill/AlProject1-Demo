page 50137 "Auto Rent Header List"
{
    Caption = 'Auto Rent Header List';
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = "Auto Rent Header";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Nr."; Rec."Nr.")
                {
                    ToolTip = 'Nr.';
                    Editable = Rec."Busena" = Rec."Busena"::Atidaryta;
                }
                field("Kliento Nr."; Rec."Kliento Nr.")
                {
                    ToolTip = 'Kliento Nr.';
                    Editable = Rec."Busena" = Rec."Busena"::Atidaryta;
                }
                field("Vairuotojo pazymejimas"; Rec."Vairuotojo pazymejimas")
                {
                    ToolTip = 'Vairuotojo pazymejimas';
                    Editable = Rec."Busena" = Rec."Busena"::Atidaryta;
                }
                field("Automobilio Nr."; Rec."Automobilio Nr.")
                {
                    ToolTip = 'Automobilio Nr.';
                    Editable = Rec."Busena" = Rec."Busena"::Atidaryta;
                }
                field("Rezervuota nuo data"; Rec."Rezervuota nuo data")
                {
                    ToolTip = 'Rezervuota nuo data';
                    Editable = Rec."Busena" = Rec."Busena"::Atidaryta;
                }
                field("Rezervuota iki data"; Rec."Rezervuota iki data")
                {
                    ToolTip = 'Rezervuota iki data';
                    Editable = Rec."Busena" = Rec."Busena"::Atidaryta;
                }
                field("Suma"; Rec."Suma")
                {
                    ToolTip = 'Suma';
                    Editable = Rec."Busena" = Rec."Busena"::Atidaryta;
                }
                field("Busena"; Rec."Busena")
                {
                    ToolTip = 'Busena';
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
            action(RentIsduota)
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
            action(ReturnCar)
            {
                Caption = 'ReturnCar';
                ToolTip = 'ReturnCar';

                trigger OnAction()
                var

                begin

                end;
            }
        }
    }
    trigger OnAfterGetCurrRecord()
    begin
        CurrPage.Editable := Rec."Busena" = Rec."Busena"::Atidaryta;
    end;




}