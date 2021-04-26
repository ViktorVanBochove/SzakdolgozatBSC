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
                //SL: Record "Sales Line";
                begin
                    //Message('onaftervalidate lefutott1');
                    Rec.Quantity := 1;
                    Rec.Validate(Quantity);

                    //Rec.Modify();
                    //CalcLineAmount();

                    // SL.Init();
                    // SL."Document No." := '101002';
                    // SL.Description := 'Valami';
                    // SL.Insert();
                    //Rec.Insert(false);
                    //Commit();
                    //Message('onaftervalidate lefutott2');

                end;
            }
        }
    }

}
