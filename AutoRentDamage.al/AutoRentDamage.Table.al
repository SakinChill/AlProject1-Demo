table 50139 "Auto Rent Damage"
{
    DataClassification = ToBeClassified;

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
        field(3; "Data"; Date)
        {
            Caption = 'Data';
        }
        field(4; "Aprasas"; Code[20])
        {
            Caption = 'Aprasas';
        }
    }

    keys
    {
        key(Key1; "Dokumento Nr.", "Eilutes Nr.") { Clustered = true; }
    }

}