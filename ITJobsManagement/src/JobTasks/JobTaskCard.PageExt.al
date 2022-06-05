pageextension 66669 "MNB Job Task Card" extends "Job Task Card"
{
    layout
    {
        addlast(content)
        {
            group(MNBJobTaskDetails)
            {
                Caption = 'Details';
                field("MNB Detailed Description"; Rec."MNB Detailed Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the detailed description of the job task.';
                    MultiLine = true;
                }
            }
            part(MNBJobPlanningLines; "MNB Job Planning Lines - Task")
            {
                Caption = 'Lines';
                ApplicationArea = All;
                SubPageLink = "Job No." = field("Job No."), "Job Task No." = field("Job Task No.");
                UpdatePropagation = Both;
            }
        }
    }
}
