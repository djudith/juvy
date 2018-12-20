$(function () {
    if (localStorage.getItem("user_type") == 1) {
        location.href = "admin.html"
    } else {
        isLoggedIn();
    }
    // localStorage.setItem('welcome', 1)
    if (localStorage.getItem('welcome') == 1) {
        setTimeout(() => {
            // $('#new_memberModal').modal('open');
        }, 1000);
        localStorage.removeItem('welcome')
    }
    // localStorage.setItem('new_member', 1)
    if (localStorage.getItem('new_member') == 1) {
        setTimeout(() => {
            $('.tap-target').tapTarget('open');
        }, 500);
        localStorage.removeItem('new_member')
    }


})