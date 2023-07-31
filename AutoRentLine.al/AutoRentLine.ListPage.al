page 50139 "Auto Rent Line ListPart"
{
    Caption = 'Auto Rent Line ListPart';
    PageType = List;
    SourceTable = "Auto Rent Line";
    UsageCategory = Lists;
    ApplicationArea = All;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Dokumento Nr."; Rec."Dokumento Nr.")
                {
                    ToolTip = 'Dokumento Nr.';
                }
                field("Eilutes Nr."; Rec."Eilutes Nr.")
                {
                    ToolTip = 'Eilutes Nr.';
                }
                field("Tipas"; Rec."Tipas")
                {
                    ToolTip = 'Tipas';
                }
                field("Nr."; Rec."Nr.")
                {
                    ToolTip = 'Nr.';
                }
                field("Aprasas"; Rec."Aprasas")
                {
                    ToolTip = 'Aprasas';
                }
                field("Kiekis"; Rec."Kiekis")
                {
                    ToolTip = 'Kiekis';
                }
                field("Kaina"; Rec."Kaina")
                {
                    ToolTip = 'Kaina';
                }
                field("Suma"; Rec."Suma")
                {
                    ToolTip = 'Suma';
                }
            }
        }
    }
}