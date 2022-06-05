page 66667 "MNB Job Planning Lines - Task"
{
    Caption = 'Job Planning Lines';
    PageType = ListPart;
    SourceTable = "Job Planning Line";
    AutoSplitKey = true;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Line Type"; Rec."Line Type")
                {
                    ToolTip = 'Specifies the type of planning line.';
                    ApplicationArea = All;
                }
                field("Planned Delivery Date"; Rec."Planned Delivery Date")
                {
                    ToolTip = 'Specifies the date that is planned to deliver the item connected to the job planning line. For a resource, the planned delivery date is the date that the resource performs services with respect to the job.';
                    ApplicationArea = All;
                }
                field("Type"; Rec."Type")
                {
                    ToolTip = 'Specifies the type of account to which the planning line relates.';
                    ApplicationArea = All;
                }
                field("Work Type Code"; Rec."Work Type Code")
                {
                    ToolTip = 'Specifies which work type the resource applies to. Prices are updated based on this entry.';
                    ApplicationArea = All;
                }
                field(Quantity; Rec.Quantity)
                {
                    ToolTip = 'Specifies the number of units of the resource, item, or general ledger account that should be specified on the planning line. If you later change the No., the quantity you have entered remains on the line.';
                    ApplicationArea = All;
                }
                field("Unit Cost (LCY)"; Rec."Unit Cost (LCY)")
                {
                    ToolTip = 'Specifies the cost, in LCY, of one unit of the item or resource on the line.';
                    ApplicationArea = All;
                }
                field("Unit Price (LCY)"; Rec."Unit Price (LCY)")
                {
                    ToolTip = 'Specifies the price, in LCY, of one unit of the item or resource. You can enter a price manually or have it entered according to the Price/Profit Calculation field on the related card.';
                    ApplicationArea = All;
                }
                field("Total Cost (LCY)"; Rec."Total Cost (LCY)")
                {
                    ToolTip = 'Specifies the total cost for the planning line. The amount is in the local currency.';
                    ApplicationArea = All;
                }
                field("Total Price (LCY)"; Rec."Total Price (LCY)")
                {
                    ToolTip = 'Specifies the total price on the planning line. The total price is in the local currency.';
                    ApplicationArea = All;
                }
                field("MNB Paid"; Rec."MNB Paid")
                {
                    ToolTip = 'Specifies if the line has been paid to contractor.';
                    ApplicationArea = All;
                }
            }
        }
    }
}
