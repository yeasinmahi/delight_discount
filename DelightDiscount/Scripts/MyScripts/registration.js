$(document).ready(function() {
    $("#MainContent_joinDateText").datepicker({
        autoclose: true,
        todayHighlight: true,
        format: "dd/mm/yyyy"
    });
});
$('#MainContent_saveButton').click(function () {
    $("#mainForm").validate({
        
        rules: {
            ctl00$MainContent$cidText: {
                required: true,
                minlength: 7,
                maxlength: 7
            },
            ctl00$MainContent$userNameText: "required",
            ctl00$MainContent$nameText: "required",
            ctl00$MainContent$mobileText: "required",
            ctl00$MainContent$emailText: {
                required: true,
                email: true
            }, 
            ctl00$MainContent$nomineeNameText: "required",
            //ctl00$MainContent$relationText: "required",
            ctl00$MainContent$nomineePhoneText: "required",
            ctl00$MainContent$referenceCidText: "required",
            ctl00$MainContent$placementDropDownList: "required",
            ctl00$MainContent$joinDateText: "required",
},
        messages: {
            ctl00$MainContent$cidText: {
                required: "CID can not be empty",
               
                minlength: "Length Must Be 7 Digit",
                maxlength: "Length Can Not More Than 7 Digit"
            },
            ctl00$MainContent$userNameText: "Enter Your UserName",
            ctl00$MainContent$nameText: "Enter Your Name",
            ctl00$MainContent$mobileText: "Phone Number Required",
            ctl00$MainContent$emailText: {
                required: "Email Required",
                email: "Enter valid email."
            }, 
            ctl00$MainContent$nomineeNameText: "Nominee name Required",
            //ctl00$MainContent$relationText: "required",
            ctl00$MainContent$nomineePhoneText: "Nominee Phone Required",
            ctl00$MainContent$referenceCidText: "Reference CID Required",
            ctl00$MainContent$placementDropDownList: "Select Placement CID",
            ctl00$MainContent$joinDateText: "Enter Joining Date",
            //ctl00$MainContent$installmentAmount: "Insallment Amount Is Required",
            //ctl00$MainContent$dateTextBox: "Select a Date",
            //ctl00$MainContent$loanPurpose: "Enter Loan Purpose",
        }
    });
});