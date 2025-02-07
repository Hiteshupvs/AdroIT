function validateForm() {
    // Get form values
    const username = document.getElementById("username").value;
    const email = document.getElementById("email").value;
    const password = document.getElementById("password").value;
    const confirmPassword = document.getElementById("confirmPassword").value;
    
    // Validate the username
    if (username == "") {
        alert("Username is required");
        return false;
    }

    // Validate the email
    const emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
    if (!emailPattern.test(email)) {
        alert("Please enter a valid email address");
        return false;
    }

    // Validate the password
    if (password == "") {
        alert("Password is required");
        return false;
    }

    // Confirm passwords match
    if (password !== confirmPassword) {
        alert("Passwords do not match");
        return false;
    }

    // If all checks pass
    alert("Form submitted successfully");
    return true;
}
