page 50145 "Auto Contracts Issued List"
{
    Caption = 'Auto Contracts Issued List';
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = "Auto Contracts Issued";

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
            action(TransferIssuedContracts)
            {
                Caption = 'Transfer Issued Contracts';
                ToolTip = 'Transfer Issued Contracts';

                trigger OnAction()
                var
                    Auto: Codeunit AutoRentHeaderTransfer;
                begin
                    Auto.TransferIssuedContracts();
                end;
            }
        }
    }




}