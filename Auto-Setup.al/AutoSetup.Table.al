table 50130 "Auto Setup"
{
    Caption = 'Auto Setup';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Pirminis raktas"; Code[10])
        {
            Caption = 'Pirminis raktas';
        }
        field(2; "Automobiliu numeriu serija"; Code[20])
        {
            Caption = 'Automobiliu numeriu serija';
            TableRelation = "No. Series";
        }
        field(3; "Nuomos korteles serija"; Code[20])
        {
            Caption = 'Nuomos korteles serija';
            TableRelation = "No. Series";
        }
        field(4; "Priedu vieta"; Code[10])
        {
            Caption = 'Priedu vieta';
            TableRelation = Location;
        }
    }

    keys
    {
        key(PK; "Pirminis raktas") { Clustered = true; }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Pirminis raktas") { }
        fieldgroup(Brick; "Pirminis raktas") { }
    }

    trigger OnInsert()
    begin
        InitDefaultValues();
    end;

    procedure InsertIfNotExists()
    begin
        Reset();
        if not Get() then begin
            Init();
            Insert(true);
        end;
    end;

    local procedure InitDefaultValues()
    begin
    end;
}
