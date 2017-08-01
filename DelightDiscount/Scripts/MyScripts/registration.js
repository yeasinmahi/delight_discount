$(function() {
    $("#mainForm").validate({
        rules: {
            ctl00$MainContent$cidText: {
                required: true,
                minlength: 7,
                maxlength: 7
            },
            ctl00$MainContent$userNameText: "required",
            //ctl00$MainContent$installmentAmount: "required",
            //ctl00$MainContent$dateTextBox: "required",
            //ctl00$MainContent$loanPurpose: "required",
        },
        messages: {
            ctl00$MainContent$cidText: {
                required: "CID can not be empty",
               
                minlength: "Length Must Be 7 Digit",
                maxlength: "Length Can Not More Than 7 Digit"
            },
            //ctl00$MainContent$loanAmount: "Enter Loan Amount",
            //ctl00$MainContent$installmentAmount: "Insallment Amount Is Required",
            //ctl00$MainContent$dateTextBox: "Select a Date",
            //ctl00$MainContent$loanPurpose: "Enter Loan Purpose",
        }
    });
});