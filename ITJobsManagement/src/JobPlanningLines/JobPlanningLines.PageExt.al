pageextension 66666 "MNB Job Planning Lines" extends "Job Planning Lines"
{
    layout
    {
        addlast(Control1)
        {
            field("MNB Paid"; Rec."MNB Paid")
            {
                ToolTip = 'Specifies if the line has been paid to contractor.';
                ApplicationArea = All;
            }
        }
    }
}
