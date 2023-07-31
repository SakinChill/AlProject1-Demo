codeunit 50131 AutoRentHeaderTransfer
{
    procedure TransferIssuedContracts();
    var
        AutoRentHeader: Record "Auto Rent Header";
        AutoContractsIssued: Record "Auto Contracts Issued";
    begin
        AutoRentHeader.SETRANGE("Busena", AutoRentHeader."Busena"::Isduota);
        if AutoRentHeader.FindSet() then begin
            repeat
                AutoContractsIssued.INIT;
                AutoContractsIssued."Nr." := AutoRentHeader."Nr.";
                AutoContractsIssued."Kliento Nr." := AutoRentHeader."Kliento Nr.";
                AutoContractsIssued."Vairuotojo pazymejimas" := AutoRentHeader."Vairuotojo pazymejimas";
                AutoContractsIssued."Automobilio Nr." := AutoRentHeader."Automobilio Nr.";
                AutoContractsIssued."Rezervuota nuo data" := AutoRentHeader."Rezervuota nuo data";
                AutoContractsIssued."Rezervuota iki data" := AutoRentHeader."Rezervuota iki data";
                AutoContractsIssued."Suma" := AutoRentHeader."Suma";
                AutoContractsIssued."Busena" := AutoRentHeader."Busena";
                AutoContractsIssued.INSERT;
            until AutoRentHeader.NEXT = 0;
        end;
    end;
}


