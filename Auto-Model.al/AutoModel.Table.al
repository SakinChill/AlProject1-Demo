table 50132 "Auto Model"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Markes kodas"; Code[20])
        {
            Caption = 'Markes kodas';
            TableRelation = "Auto Mark";

        }
        field(2; "Kodas"; Code[20])
        {
            Caption = 'Kodas';
        }
        field(3; "Aprasas"; Code[50])
        {
            Caption = 'Aprasas';
        }
    }

    keys
    {
        key(Key1; "Kodas", "Markes kodas") { Clustered = true; }
    }



}