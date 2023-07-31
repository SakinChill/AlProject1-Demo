codeunit 50140 Transfer
{
    procedure Copy();
    var
        AutoReservation: Record "Auto Reservation";
        AutoReservationValid: Record "Auto Reservation Valid";
        Today: DateTime;
    begin
        Today := CURRENTDATETIME;

        AutoReservation.RESET;
        AutoReservationValid.DELETEALL;

        AutoReservation.SetFilter("Rezervuota nuo data laikas", '>%1', Today);
        if AutoReservation.FINDSET() then begin
            repeat
                AutoReservationValid.INIT;
                AutoReservationValid."Automobilio Nr." := AutoReservation."Automobilio Nr.";
                AutoReservationValid."Eilutes Nr." := AutoReservation."Eilutes Nr.";
                AutoReservationValid."Kliento Nr." := AutoReservation."Kliento Nr.";
                AutoReservationValid."Rezervuota nuo data laikas" := AutoReservation."Rezervuota nuo data laikas";
                AutoReservationValid."Rezervuota iki data laikas" := AutoReservation."Rezervuota iki data laikas";
                AutoReservationValid.INSERT;
            until AutoReservation.Next = 0;
        end;
    end;

}
