
async function signIn() {

    const email = document.getElementById("email").value;
    const password = document.getElementById("password").value;

    const signIn = {
        email: email,
        password: password
    };

    const signInJson = JSON.stringify(signIn);

    const response = await fetch(
            "SignIn",
            {
                method: "POST",
                header: {
                    "Content-Type": "application/json"
                },
                body: signInJson
            }
    );


    if (response.ok) {  // success
        const json = await response.json();
        if (json.status) {  // if true
            
            if (json.message === "1") {
                window.location = "verify-account.html";
            } else {
                window.location = "index.html";
            }
            
        } else {  // when status false
            document.getElementById("message").innerHTML = json.message;
        }
    } else {
        document.getElementById("message").innerHTML = "Sign in failed. Please try again.";
    }

}
