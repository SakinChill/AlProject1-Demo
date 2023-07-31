table 50142 "Auto Reservation Valid"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Automobilio Nr."; Code[20])
        {
            Caption = 'Automobilio Nr.';
        }

        field(2; "Eilutes Nr."; Code[20])
        {
            Caption = 'Eilutes Nr.';
        }

        field(3; "Kliento Nr."; Code[20])
        {
            Caption = 'Kliento Nr.';
        }

        field(4; "Rezervuota nuo data laikas"; DateTime)
        {
            Caption = 'Rezervuota nuo data laikas';
        }

        field(5; "Rezervuota iki data laikas"; DateTime)
        {
            Caption = 'Rezervuota iki data laikas';

        }
    }

    keys
    {
        key(Key1; "Automobilio Nr.", "Eilutes Nr.") { Clustered = true; }
    }

}
