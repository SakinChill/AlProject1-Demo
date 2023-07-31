table 50136 "Auto Rent Header"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Nr."; Code[20])
        {
            Caption = 'Nr.';
            trigger OnValidate()
            begin
                CheckStatusReleased();
            end;
        }
        field(2; "Kliento Nr."; Code[20])
        {
            Caption = 'Kliento Nr.';
            TableRelation = Customer;

            trigger OnValidate()
            var
                CustLedgerEntry: Record "Cust. Ledger Entry";
                TotalAmount: Decimal;
                CustomerRec: Record Customer;
            begin
                CheckStatusReleased();

                CustLedgerEntry.SETRANGE("Customer No.", Rec."Kliento Nr.");
                TotalAmount := 0;
                WHILE CustLedgerEntry.FINDSET DO BEGIN
                    TotalAmount += CustLedgerEntry."Remaining Amount";
                END;
                IF TotalAmount < 0 THEN
                    ERROR('Customer has outstanding loans and cannot proceed.');


                if CustomerRec.Get(Rec."Kliento Nr.") then
                    CustomerRec.TestField(Blocked, CustomerRec.Blocked::" ");
            end;

        }
        field(3; "Vairuotojo pazymejimas"; Code[40])
        {
            Caption = 'Vairuotojo pazymejimas';
            trigger OnValidate()
            begin
                CheckStatusReleased();
            end;
        }
        field(4; "Automobilio Nr."; Code[10])
        {
            Caption = 'Automobilio Nr.';
            TableRelation = "Auto Reservation";
            trigger OnValidate()
            begin
                CheckStatusReleased();
            end;
        }
        field(5; "Rezervuota nuo data"; DateTime)
        {
            Caption = 'Rezervuota nuo data';
            trigger OnValidate()
            begin
                CheckStatusReleased();

                if CheckReservationNuoAvailability(Rec) = false then begin
                    Error('No reservation found for the selected automobile number and "Rezervuota nuo data".');
                end;
            end;
        }
        field(6; "Rezervuota iki data"; DateTime)
        {
            Caption = 'Rezervuota iki data';
            trigger OnValidate()
            begin
                CheckStatusReleased();

                if CheckReservationIkiAvailability(Rec) = false then begin
                    Error('No reservation found for the selected automobile number and "Rezervuota iki data".');
                end;
            end;
        }
        field(7; "Suma"; Decimal)
        {
            Caption = 'Suma';
            trigger OnValidate()
            var
                AutoRec: Record "Auto";
            begin
                if "Automobilio Nr." <> '' then begin
                    if AutoRec.Get("Automobilio Nr.") then
                        "Suma" := AutoRec."Nuomos kaina"
                    else
                        "Suma" := 0;
                end
                else
                    "Suma" := 0;
            end;

        }
        field(8; "Busena"; Enum AutoRentHeaderEnum)
        {
            Caption = 'Busena';
            Editable = false;
            trigger OnValidate()
            begin
                CheckStatusReleased();
            end;
        }
        field(92; Picture; MediaSet)
        {
            Caption = 'Picture';
        }
    }

    keys
    {
        key(Key1; "Nr.") { Clustered = true; }
    }



    trigger OnInsert()
    var
        AutoSetup: Record "Auto Setup";
        NoSeriesManagement: Codeunit NoSeriesManagement;
    begin
        if "Nr." = '' then begin
            AutoSetup.Get();
            AutoSetup.TestField("Nuomos korteles serija");
            "Nr." := NoSeriesManagement.GetNextNo(AutoSetup."Nuomos korteles serija", WorkDate(), true);
        end;
    end;

    local procedure CheckReservationNuoAvailability(var AutoRentHeader: Record "Auto Rent Header"): Boolean;
    var
        Reservation: Record "Auto Reservation";
    begin
        if AutoRentHeader."Automobilio Nr." <> '' then begin
            Reservation.SETRANGE("Automobilio Nr.", AutoRentHeader."Automobilio Nr.");
            Reservation.SETRANGE("Rezervuota nuo data laikas", AutoRentHeader."Rezervuota nuo data");
            exit(Reservation.FINDSET);
        end
        else
            exit(false);
    end;

    local procedure CheckReservationIkiAvailability(var AutoRentHeader: Record "Auto Rent Header"): Boolean;
    var
        Reservation: Record "Auto Reservation";
    begin
        if AutoRentHeader."Automobilio Nr." <> '' then begin
            Reservation.SETRANGE("Automobilio Nr.", AutoRentHeader."Automobilio Nr.");
            Reservation.SETRANGE("Rezervuota iki data laikas", AutoRentHeader."Rezervuota iki data");
            exit(Reservation.FINDSET);
        end
        else
            exit(false);
    end;

    local procedure CheckStatusReleased()
    begin
        if Rec."Busena" = Rec."Busena"::Isduota then
            Error('Rent Isduota');
    end;



}



