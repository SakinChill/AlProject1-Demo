table 50135 "Auto Damage"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Automobilio Nr."; Code[20])
        {
            Caption = 'Automobilio Nr.';
            TableRelation = "Auto";
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
        field(5; "Statusas"; Enum "AutoDamageEnum")
        {
            Caption = 'Statusas';
        }

    }

    keys
    {
        key(Key1; "Automobilio Nr.", "Eilutes Nr.") { Clustered = true; }

    }
}