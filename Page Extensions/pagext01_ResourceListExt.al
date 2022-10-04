pageextension 50101 "CSD ResourceListExt" extends "Resource List"
{
    layout
    {
        modify(Type)
        {
            Visible = Showtype;
        }
        addafter(Type)
        {
            field("SCD Resource Type";
            Rec."CSD Resource Type")
            {
                ApplicationArea = All;
            }
        }
    }


    trigger OnOpenPage();

    begin
        Showtype := (rec.GetFilter(Type) = ' ');
        ShowMaxField := (rec.GetFilter(Type) =
                format(Rec.Type::Machine));

    end;

    var
        [InDataSet]
        ShowMaxField: Boolean;
        [InDataSet]
        Showtype: Boolean;
}