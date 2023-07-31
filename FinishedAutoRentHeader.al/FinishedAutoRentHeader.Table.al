table 50140 "Finished Auto Rent Header"
{
    Caption = 'Finished Auto Rent Header';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Nr."; Code[20])
        {
            Caption = 'Nr.';
            Editable = false;
        }
        field(2; "Kliento Nr."; Code[50])
        {
            Caption = 'Kliento Nr.';
            Editable = false;

        }
        field(3; "Vairuotojo pazymejimas"; Code[20])
        {
            Caption = 'Vairuotojo pazymejimas';
            Editable = false;
        }
        field(4; "Automobilio Nr."; Code[10])
        {
            Caption = 'Automobilio Nr.';
            Editable = false;
        }
        field(5; "Rezervuota nuo data"; DateTime)
        {
            Caption = 'Rezervuota nuo data';
            Editable = false;
        }
        field(6; "Rezervuota iki data"; DateTime)
        {
            Caption = 'Rezervuota iki data';
            Editable = false;
        }
        field(7; "Suma"; Decimal)
        {
            Caption = 'Suma';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Nr.") { Clustered = true; }
    }
}