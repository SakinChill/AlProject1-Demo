codeunit 50130 "Auto Rent Header - Isduota"
{
    TableNo = "Auto Rent Header";

    trigger OnRun()
    begin
        OnBeforeOpenContract(Rec);
        Rec."Busena" := Rec."Busena"::Isduota;
        Rec.Modify(true);
        OnAfterOpenContract(Rec);
    end;

    procedure OpenContract(var AutoRentHeader: Record "Auto Rent Header")
    begin
        OnBeforeOpenContract(AutoRentHeader);
        AutoRentHeader."Busena" := AutoRentHeader."Busena"::Atidaryta;
        AutoRentHeader.Modify(true);

        OnAfterOpenContract(AutoRentHeader);
    end;


    [IntegrationEvent(false, false)]
    local procedure OnBeforeReleaseContract(var AutoRentHeader: Record "Auto Rent Header")
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnAfterReleaseContract(var "Auto Rent Header": Record "Auto Rent Header")
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeOpenContract(var "Auto Rent Header": Record "Auto Rent Header")
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnAfterOpenContract(var "Auto Rent Header": Record "Auto Rent Header")
    begin
    end;
}