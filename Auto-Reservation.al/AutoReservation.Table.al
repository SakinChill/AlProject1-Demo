table 50133 "Auto Reservation"
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

        field(3; "Kliento Nr."; Code[20])
        {
            Caption = 'Kliento Nr.';
            TableRelation = Customer;

        }

        field(4; "Rezervuota nuo data laikas"; DateTime)
        {
            Caption = 'Rezervuota nuo data laikas';
            trigger OnValidate()
            var
                ReservationAvailable: Boolean;
            begin
                ReservationAvailable := CheckReservationAvailability(Rec);
                if NOT ReservationAvailable then begin
                    Rec."Rezervuota nuo data laikas" := 0DT;
                    Rec."Rezervuota iki data laikas" := 0DT;
                end;
            end;
        }

        field(5; "Rezervuota iki data laikas"; DateTime)
        {
            Caption = 'Rezervuota iki data laikas';
            trigger OnValidate()
            var
                ReservationAvailable: Boolean;
            begin
                ReservationAvailable := CheckReservationAvailability(Rec);
                if NOT ReservationAvailable then begin
                    Rec."Rezervuota nuo data laikas" := 0DT;
                    Rec."Rezervuota iki data laikas" := 0DT;
                end;
            end;

        }
    }

    keys
    {
        key(Key1; "Automobilio Nr.", "Eilutes Nr.") { Clustered = true; }
    }





    procedure CheckReservationAvailability(var Reservation: Record "Auto Reservation"): Boolean;
    var
        TempReservation: Record "Auto Reservation";
    begin
        TempReservation.SETRANGE("Automobilio Nr.", Reservation."Automobilio Nr.");
        TempReservation.SETRANGE("Rezervuota nuo data laikas", Reservation."Rezervuota nuo data laikas", Reservation."Rezervuota iki data laikas");
        TempReservation.SETRANGE("Rezervuota iki data laikas", Reservation."Rezervuota nuo data laikas", Reservation."Rezervuota iki data laikas");

        if TempReservation.FINDSET then begin
            ERROR('The selected car is already reserved for the specified dates.');
            EXIT(false);
        end;

        EXIT(true);
    end;


}
