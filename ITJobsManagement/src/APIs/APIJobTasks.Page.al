page 66666 "API - Job Tasks"
{
    PageType = API;
    APIPublisher = 'bc4AllCom';
    APIGroup = 'jobs';
    APIVersion = 'v2.0';
    EntityCaption = 'Project Tasks';
    EntityName = 'projectTask';
    EntitySetName = 'projectTasks';
    SourceTable = "Job Task";
    ODataKeyFields = SystemId;
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(id; Rec.SystemId)
                {
                    Caption = 'Id';
                    Editable = false;
                }
                field(jobNo; Rec."Job No.") { }
                field(jobTaskNo; Rec."Job Task No.") { }
                field(jobTaskType; Rec."Job Task Type") { }
                field(description; Rec.Description) { }
                field(taskStatus; Rec."MNB Task Status") { }
            }
        }
    }
}