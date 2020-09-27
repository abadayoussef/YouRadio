let toggle = false;
function formToggle() {
    toggle = !toggle;
    let signIn = document.getElementById("signIn");
    let login = document.getElementById("login");

    if (toggle) {
        signIn.style.display = "none";
        login.style.display = "block";
    } else {
        signIn.style.display = "block";
        login.style.display = "none";
    }
}

let signInForm = document.getElementById("signIn");
signInForm.onsubmit = submitForm;

function submitForm(e) {
    e.preventDefault();
    const fields = ['username', 'email', 'password', 'rePassword', 'country'];
    let request = new XMLHttpRequest();
    request.open("POST", "/signIn");
    request.setRequestHeader("Content-type", "application/json"); 

    let form = new FormData(signInForm);
    let body = {};
    fields.forEach(field => {
        body[field] = form.get(field);
    });
    
    request.send(JSON.stringify(body));
    request.onload = function () {
        if (this.status === 200) {
            let errors = JSON.parse(this.response);
            fields.forEach(field => {
                if (!(field in errors.errors))
                    document.querySelector(`#signIn .form-control .${field}-error`).innerText = '';
            });
            errors.errors.reverse().forEach(error => { 
                document.querySelector(`#signIn .form-control .${error.param}-error`).innerText = error.msg;
            });
        }
    }
}
