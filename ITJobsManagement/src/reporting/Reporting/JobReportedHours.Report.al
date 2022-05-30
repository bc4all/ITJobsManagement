report 66666 "MNB Job - Reported Hours"
{
    ApplicationArea = All;
    Caption = 'Job - Reported Hours';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = Excel;
    ExcelLayout = './layouts/JobReportedHours.xlsx';
    dataset
    {
        dataitem(JobPlanningLine; "Job Planning Line")
        {
            RequestFilterFields = "No.", "Planning Date";

            column(Planning_Date; "Planning Date")
            { }
            column(JobNo; "Job No.")
            {
            }
            column(JobTaskNo; "Job Task No.")
            {
            }
            column(LineType; "Line Type")
            {
            }
            column(No; "No.")
            {
            }
            column(WorkTypeCode; "Work Type Code")
            {
            }
            column(Quantity; Quantity)
            {
            }
            column(UnitCost; "Unit Cost")
            {
            }
            column(UnitPrice; "Unit Price")
            {
            }
            column(TotalCost; "Total Cost")
            {
            }
            column(TotalPrice; "Total Price")
            {
            }
            column(MNB_Paid; "MNB Paid") { }
        }
    }
}
