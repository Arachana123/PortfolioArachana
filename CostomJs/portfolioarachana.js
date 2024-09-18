$(document).ready(function () {
    $("#submit").click(function () {
        Save();
    });
});
function Save() {
    if (confirm('Do you want to Save Detail?') == true) {
        var obj = {};
        obj.ID = $('#hdfid').val();
        obj.Name = $('#txtname').val();
        obj.Email = $('#txtemail').val();
        obj.Message = $('#txtmessage').val();

        if (obj.Name == "") {
            alertify.error("Please Enter Name");
            $('#txtname').focus();
            return false;
        }
       else if (obj.Email != "") {
            var emailFilter = /^.+@.+\..{2,3}$/
            if (!(emailFilter.test(obj.Email))) {
                alertify.error("Please Enter Valid Email Address");
                TabContactActive();
                $('#txtEmail').focus();
                return false;
            }
        }
        if (obj.IsPassword == "1") {
            if (obj.Password == "") {
                alertify.error("Please Enter Password");
                TabOtherActive();
                $('#txtPassword').focus();
                return false;
            }
        }
        if (obj.IsBookingSMS == "1") {
            if (obj.BookingSMS == "") {
                alertify.error("Please Enter Booking SMS No.");
                TabOtherActive();
                $('#txtBookingSMS').focus();
                return false;
            }
        }
        if (obj.IsResultSMS == "1") {
            if (obj.ResultSMS == "") {
                alertify.error("Please Enter Result SMS No.");
                TabOtherActive();
                $('#txtResultSMS').focus();
                return false;
            }
        }
        if (obj.IsDayReminder == "1") {
            if (obj.DayReminder == "") {
                alertify.error("Please Enter Day Reminder No.");
                TabOtherActive();
                $('#txtDayReminder').focus();
                return false;
            }
        }
        if (obj.IsBirthday == "1") {
            if (obj.Birthday == "") {
                alertify.error("Please Enter BirthDay");
                TabOtherActive();
                $('#txtBirthday').focus();
                return false;
            }
        }
        if (obj.IsAnniversary == "1") {
            if (obj.Anniversary == "") {
                alertify.error("Please Enter Anniversary");
                TabOtherActive();
                $('#txtAnniversary').focus();
                return false;
            }
        }
        if (!Page_ClientValidate("phone1")) {
            alertify.error("Please Enter Valid Phone No. 1");
            TabContactActive();
            $('#txtPhoneNo1').focus();
            return false;
        }
        if (!Page_ClientValidate("phone2")) {
            alertify.error("Please Enter Valid Phone No. 2");
            TabContactActive();
            $('#txtPhoneNo2').focus();
            return false;
        }
        if (!Page_ClientValidate("mobile1")) {
            alertify.error("Please Enter Valid Mobile No. 1");
            TabContactActive();
            $('#txtMobileNo1').focus();
            return false;
        }
        if (!Page_ClientValidate("mobile2")) {
            alertify.error("Please Enter Valid Mobile No. 2");
            TabContactActive();
            $('#txtMobileNo2').focus();
            return false;
        }
        if (!Page_ClientValidate("email")) {
            alertify.error("Please Enter Valid Email Id");
            TabContactActive();
            $('#txtEmail').focus();
            return false;
        }
        if (!Page_ClientValidate("bookingsmsno")) {
            alertify.error("Please Enter Valid Booking SMS No.");
            TabOtherActive();
            $('#txtBookingSMS').focus();
            return false;
        }
        if (!Page_ClientValidate("resultsmsno")) {
            alertify.error("Please Enter Valid Result SMS No.");
            TabOtherActive();
            $('#txtResultSMS').focus();
            return false;
        }
        if (!Page_ClientValidate("dayreminderno")) {
            alertify.error("Please Enter Valid Day Reminder No.");
            TabOtherActive();
            $('#txtDayReminder').focus();
            return false;
        }
        if ($('#txtPhoneNo2').val() != "" && $('#txtPhoneNo1').val() != "") {
            if ($('#txtPhoneNo2').val() == $('#txtPhoneNo1').val()) {
                alertify.error("Phone No. 1 and 2 Can not be Same.");
                return false;
            }
        }
        if ($('#txtMobileNo2').val() != "" && $('#txtMobileNo1').val() != "") {
            if ($('#txtMobileNo2').val() == $('#txtMobileNo1').val()) {
                alertify.error("Mobile No. 1 and 2 Can not be Same.");
                return false;
            }
        }
    }
}
