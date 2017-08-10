﻿$(document).ready(function() {
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
            
        }
    });
});

$("#checkButton").click(function () {
    
    var refId = $("#MainContent_referenceCidText").val();
    $.ajax({
        type: 'POST',
        contentType: 'application/json; charset=utf-8',
        url: "RegistrationUI.aspx/CheckRefId",
        dataType: 'json',
        data: JSON.stringify({ refId: refId }),
        async: false,
        success: function (response) {
            if (response.d.length > 0) {
                alert("Success");
            } 
            //$("#MainContent_messageLabel").addClass('label-success');
        },
        error: function () {
            alert("Invalid DDID Card!");
        }
    });

   
        //$.ajax({
        //    type: 'POST',
        //    contentType: 'application/json; charset=utf-8',
        //    url: "RegistrationUI.aspx/CheckRefId",
        //    dataType: 'json',
        //    data: JSON.stringify({ refId: generateDisCard }),
        //    async: false,
        //    success: function (data) {
        //        if (data.d.length > 0) {
        //            $("#MainContent_invoiceNumverDropDownList").append('<option value="' + data.d[0].value + '">' + data.d[0].value + '</option>');
        //            $("#MainContent_invoiceNumverDropDownList").val(data.d[0].display);
        //            //for (var i = 0; i < data.d.length; i++) {
        //            //    if ($(optionLength[j]).val() == data.d[0].VarTrfId) {
        //            //        exists = true;
        //            //        j = optionLength.length;
        //            //    }
        //            //}

        //            //if (parseInt(optionLength) > 1) {
        //            //    if (exists) {
        //            //        $("#MainContent_invoiceNumverDropDownList").val(data.d[0].VarTrfId);
        //            //    }
        //            //    else {
        //            //        $("#MainContent_invoiceNumverDropDownList").append('<option value="' + data.d[0].VarTrfId + '">' + data.d[0].VarTrfId + '</option>');
        //            //        $("#MainContent_invoiceNumverDropDownList").val(data.d[0].VarTrfId);
        //            //    }
        //            //} else {
        //            //    $("#MainContent_invoiceNumverDropDownList").append('<option value="' + data.d[0].VarTrfId + '">' + data.d[0].VarTrfId + '</option>');
        //            //    $("#MainContent_invoiceNumverDropDownList").val(data.d[0].VarTrfId);
        //            //}
        //        }

        //    },
        //    error: function () {
        //        alert("Error Found");
        //    }
        //});
    //}
    
});