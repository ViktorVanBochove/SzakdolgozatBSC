pageextension 50105 PageExtension50000 extends "Sales Order Subform"
{
    layout
    {
        addbefore(Type)
        {
            field("Cross-Reference No.08270"; Rec."Cross-Reference No.")
            {
                ApplicationArea = All;
                trigger OnValidate()
                var
                    myInt: Integer;
                begin
                    Rec.Quantity := 1;
                    Rec.Validate(Quantity);
                end;
            }
        }
    }

}
