tableextension 66667 "Job Task" extends "Job Task"
{
    fields
    {
        field(66666; "MNB Qty. (Estimated)"; Decimal)
        {
            Caption = 'Qty. (Estimated)';
            DataClassification = CustomerContent;
            BlankZero = true;
        }
        field(66667; "MNB Qty. (Budget)"; Decimal)
        {
            Caption = 'Qty. (Budget)';
            FieldClass = FlowField;
            CalcFormula = sum("Job Planning Line"."Quantity (Base)" where("Job No." = field("Job No."), "Job Task No." = field("Job Task No."), "Line Type" = filter(Budget | "Both Budget and Billable"), Type = const(Resource)));
            Editable = false;
        }
        field(66668; "MNB Qty (Billable)"; Decimal)
        {
            Caption = 'Qty (Billable)';
            FieldClass = FlowField;
            CalcFormula = sum("Job Planning Line"."Quantity (Base)" where("Job No." = field("Job No."), "Job Task No." = field("Job Task No."), "Line Type" = filter(Billable | "Both Budget and Billable"), Type = const(Resource)));
            Editable = false;
        }
        field(66669; "MNB Task Status"; Enum "MNB Job Task Status")
        {
            Caption = 'Task Status';
            DataClassification = CustomerContent;
        }
        field(66670; "MNB Detailed Description"; Text[1024])
        {
            Caption = 'Detailed Description';
            DataClassification = CustomerContent;
        }
    }
}
