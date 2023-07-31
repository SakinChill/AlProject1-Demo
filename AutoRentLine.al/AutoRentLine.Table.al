table 50138 "Auto Rent Line"
{
    Caption = 'Auto Rent Line';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Dokumento Nr."; Code[20])
        {
            Caption = 'Dokumento Nr.';
        }
        field(2; "Eilutes Nr."; Code[20])
        {
            Caption = 'Eilutes Nr.';
        }
        field(3; "Tipas"; Enum "Auto Rent Line - Enum")
        {
            Caption = 'Tipas';

        }
        field(4; "Nr."; Code[20])
        {
            Caption = 'Nr.';
            TableRelation =
                if ("Tipas" = const(Items)) Item
            else
            if ("Tipas" = const(Resources)) Resource;

        }
        field(5; "Aprasas"; Code[20])
        {
            Caption = 'Aprasas';
            trigger OnLookup()
            var
                ItemRec: Record Item;
                ResourceRec: Record Resource;
            begin
                if Rec."Tipas" = Rec."Tipas"::Items then begin
                    ItemRec.SETRANGE("No.", Rec."Nr.");
                    if ItemRec.FINDFIRST then
                        Rec."Aprasas" := ItemRec."Description"
                    else
                        Rec."Aprasas" := '';
                end
                else
                    if Rec."Tipas" = Rec."Tipas"::Resources then begin
                        ResourceRec.SETRANGE("No.", Rec."Nr.");
                        if ResourceRec.FINDFIRST then
                            Rec."Aprasas" := ResourceRec."Name"
                        else
                            Rec."Aprasas" := '';
                    end
                    else begin
                        Rec."Aprasas" := '';
                    end;
            end;
        }
        field(6; "Kiekis"; Integer)
        {
            Caption = 'Kiekis';
        }
        field(7; "Kaina"; Integer)
        {
            Caption = 'Kaina';
            trigger OnLookup()
            var
                ItemRec: Record Item;
                ResourceRec: Record Resource;
            begin
                if Rec."Tipas" = Rec."Tipas"::Items then begin
                    ItemRec.SETRANGE("No.", Rec."Nr.");
                    if ItemRec.FINDFIRST then
                        Rec."Kaina" := ItemRec."Unit Price"
                end
                else
                    if Rec."Tipas" = Rec."Tipas"::Resources then begin
                        ResourceRec.SETRANGE("No.", Rec."Nr.");
                        if ResourceRec.FINDFIRST then
                            Rec."Kaina" := ResourceRec."Unit Price"
                    end
            end;

        }
        field(8; "Suma"; Decimal)
        {
            Caption = 'Suma';
            trigger OnLookup()
            var
                ItemRec: Record Item;
                ResourceRec: Record Resource;
            begin
                if Rec."Tipas" = Rec."Tipas"::Items then begin
                    ItemRec.SETRANGE("No.", Rec."Nr.");
                    if ItemRec.FINDFIRST then
                        Rec."Kaina" := ItemRec."Unit Price";
                    Rec."Suma" := Rec."Kiekis" * Rec."Kaina";
                end
                else
                    if Rec."Tipas" = Rec."Tipas"::Resources then begin
                        ResourceRec.SETRANGE("No.", Rec."Nr.");
                        if ResourceRec.FINDFIRST then
                            Rec."Kaina" := ResourceRec."Unit Price";
                        Rec."Suma" := Rec."Kiekis" * Rec."Kaina";
                    end
            end;
        }
    }

    keys
    {
        key(PK; "Dokumento Nr.", "Eilutes Nr.") { Clustered = true; }
    }

}
