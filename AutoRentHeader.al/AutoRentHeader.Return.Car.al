codeunit 50132 ReturnCar
{
    procedure ReturnCarContract();
    var
        AutoRentHeader: Record "Auto Rent Header";
        FinishedAutoRentHeader: Record "Finished Auto Rent Header";
        AutoDamage: Record "Auto Damage";
    begin
        if AutoRentHeader.FindSet() then begin
            repeat
                FinishedAutoRentHeader.INIT;
                FinishedAutoRentHeader."Nr." := AutoRentHeader."Nr.";
                FinishedAutoRentHeader."Kliento Nr." := AutoRentHeader."Kliento Nr.";
                FinishedAutoRentHeader."Vairuotojo pazymejimas" := AutoRentHeader."Vairuotojo pazymejimas";
                FinishedAutoRentHeader."Automobilio Nr." := AutoRentHeader."Automobilio Nr.";
                FinishedAutoRentHeader."Rezervuota nuo data" := AutoRentHeader."Rezervuota nuo data";
                FinishedAutoRentHeader."Rezervuota iki data" := AutoRentHeader."Rezervuota iki data";
                FinishedAutoRentHeader."Suma" := AutoRentHeader."Suma";
                FinishedAutoRentHeader.INSERT;
            until AutoRentHeader.NEXT = 0;
        end;
    end;
}

