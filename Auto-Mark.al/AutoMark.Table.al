table 50131 "Auto Mark"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Kodas"; Code[20])
        {
            Caption = 'Kodas';
        }
        field(2; "Aprasas"; Code[50])
        {
            Caption = 'Aprasas';
        }
    }

    keys
    {
        key(Key1; Kodas) { Clustered = true; }
    }


}