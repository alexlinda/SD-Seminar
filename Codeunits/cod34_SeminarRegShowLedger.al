codeunit 50134 "CSD SeminarRegShowLedger"
// CSD1.00 - 2018-01-01 - D. E. Veloper
// Chapter 7 - Lab 2-10
{
    TableNo = "CSD Seminar Register";

    trigger OnRun();
    begin
        SeminarLedgerEntry.SETRANGE("Entry No.", rec."From Entry No.", rec."To Entry No.");
        page.Run(Page::"CSD Seminar Ledger Entries", SeminarLedgerEntry);
    end;

    var
        SeminarLedgerEntry: Record "CSD Seminar Ledger Entry";
}
