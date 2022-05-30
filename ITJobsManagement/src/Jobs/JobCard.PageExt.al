pageextension 66668 "MNB Job Card" extends "Job Card"
{
    actions
    {
        addlast(navigation)
        {
            action(MNBJobTasks)
            {
                ApplicationArea = All;
                Caption = 'Job Tasks';
                ToolTip = 'Opens the list with job tasks.';
                Image = TaskList;
                RunObject = page "Job Task List";
                RunPageLink = "Job No." = field("No.");
                RunPageMode = Edit;
                Promoted = true;
                PromotedCategory = Process;
            }
        }
    }
}
