function ValidateUser() {
    var userName = $.trim($('#txtUsername').val()).toLowerCase();
    var pswd = $.trim($('#txtPassword').val()).toLowerCase();

  if ((userName == '' || pswd == '') || userName == 'u1' && pswd == 'p1')
        return true;
    else {
        alert('Enter Valid User Name and Password');
        return false;
    }
}