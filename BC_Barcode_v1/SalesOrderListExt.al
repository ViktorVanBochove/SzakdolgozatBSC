pageextension 50106 SalesOrderListExt extends "Sales Order List"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addafter(Reopen)
        {
            action("New with Barcodes")
            {
                ApplicationArea = all;
                Visible = true;
                Image = NewDocument;

                trigger OnAction()
                var
                    Barcode_Page: Page Barcode_SalesOrder;
                    p: Text[20];
                begin
                    Barcode_Page.RunModal();
                end;
            }
        }
        // Test Barcode: 4950344870387
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}