page 50130 "Auto Setup Card"
{
    Caption = 'Auto Setup Card';
    PageType = Card;
    UsageCategory = Administration;
    ApplicationArea = All;
    SourceTable = "Auto Setup";
    InsertAllowed = false;
    DeleteAllowed = false;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field("Pirminis raktas"; Rec."Pirminis raktas")
                {
                    ToolTip = 'Pirminis raktas';
                }
                field("Automobiliu numeriu serija"; Rec."Automobiliu numeriu serija")
                {
                    ToolTip = 'Automobiliu numeriu serija';
                }
                field("Nuomos korteles serija"; Rec."Nuomos korteles serija")
                {
                    ToolTip = 'Nuomos korteles serija';
                }
                field("Priedu vieta"; Rec."Priedu vieta")
                {
                    ToolTip = 'Priedu vieta';
                }
            }
        }
    }

    trigger OnOpenPage()
    begin
        Rec.InsertIfNotExists();
    end;

}