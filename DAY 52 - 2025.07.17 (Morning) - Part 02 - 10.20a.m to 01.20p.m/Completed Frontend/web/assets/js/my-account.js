// Type - 1
//window.onload = function () {
//    
//    alert("OK");
//    
//};

// Type - 2 (best in here)
//window.addEventListener("load", async function () {
//
//    const response = await fetch("MyAccount");
//
//});

async function getUserData() {
    
    const response = await fetch("MyAccount");
    
    if (response.ok) {
        
        const json = await response.json();
        
//        console.log(json);

        document.getElementById("username").innerHTML = `Hello ${json.firstName} ${json.lastName}`;
        document.getElementById("since").innerHTML = `Smart Trade Member Since ${json.since}`;
        document.getElementById("firstName").value = json.firstName;
        document.getElementById("lastName").value = json.lastName;
        document.getElementById("currentPassword").value = json.password;
        
        
    } else {
        
    }
    
}
