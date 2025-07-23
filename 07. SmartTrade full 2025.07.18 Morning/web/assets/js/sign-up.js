
async function signUp() {

    const firstName = document.getElementById("firstName").value;
    const lastName = document.getElementById("lastName").value;
    const email = document.getElementById("email").value;
    const password = document.getElementById("password").value;

    const user = {
        firstName: firstName,
        lastName: lastName,
        email: email,
        password: password
    };

    const userJson = JSON.stringify(user);
    
    const response = await fetch("SignUp", {
        method: "POST",
        header: {
            "Content-Type": "application/json"
        },
        body: userJson
    }
    );
    
    
    
    if (response.ok) {
        const json = await response.json();
        if (json.status) {  // if true
            // redirect another page
            document.getElementById("message").className = "text-success";
            document.getElementById("message").innerHTML = json.message;
            window.location = "verify-account.html";
        } else {  // when status false
            // custom message
            document.getElementById("message").innerHTML = json.message;
//            $("message").html(json.message);
        }
    } else {
        document.getElementById("message").innerHTML = "Registration failed. Please try again.";
    }

}









