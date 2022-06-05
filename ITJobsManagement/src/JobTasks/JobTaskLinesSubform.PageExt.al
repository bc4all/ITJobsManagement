pageextension 66667 "MNB Job Task Lines Subform" extends "Job Task Lines Subform"
{
    layout
    {
        addlast(Control1)
        {
            field("MNB Qty. (Estimated)"; Rec."MNB Qty. (Estimated)")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the estimated quantity for the job task.';
            }
            field("MNB Qty. (Budget)"; Rec."MNB Qty. (Budget)")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the budgeted quantity for the job task.';
            }
            field("MNB Qty (Billable)"; Rec."MNB Qty (Billable)")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies  how much quantity is billed for the job task.';
            }
            field("MNB Task Status"; Rec."MNB Task Status")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the current status of the job task.';
            }
        }
    }
    actions
    {
        addlast(processing)
        {
            action(MNBJobTaskCard)
            {
                Caption = 'Card';
                ApplicationArea = All;
                ToolTip = 'Open the job task card';
                Scope = Repeater;
                RunObject = page "Job Task Card";
                RunPageOnRec = true;
                Image = Card;
            }
        }
    }
}
