table 50141 "Auto Contracts Issued"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Nr."; Code[20])
        {
            Caption = 'Nr.';
        }
        field(2; "Kliento Nr."; Code[20])
        {
            Caption = 'Kliento Nr.';

        }
        field(3; "Vairuotojo pazymejimas"; Code[40])
        {
            Caption = 'Vairuotojo pazymejimas';

        }
        field(4; "Automobilio Nr."; Code[10])
        {
            Caption = 'Automobilio Nr.';

        }
        field(5; "Rezervuota nuo data"; DateTime)
        {
            Caption = 'Rezervuota nuo data';

        }
        field(6; "Rezervuota iki data"; DateTime)
        {
            Caption = 'Rezervuota iki data';

        }
        field(7; "Suma"; Decimal)
        {
            Caption = 'Suma';

        }
        field(8; "Busena"; Enum AutoRentHeaderEnum)
        {
            Caption = 'Busena';
            Editable = false;

        }
    }

    keys
    {
        key(Key1; "Nr.") { Clustered = true; }
    }

}