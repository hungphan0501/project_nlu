const submit = document.getElementById("submit");
    submit.addEventListener('click', isEmpty);

    function isEmpty(e) {
        e.preventDefault();
        const fullName = document.getElementById("name");
        const email = document.getElementById("email");
        const message = document.getElementById("message");
    
        let valid = true;

        const nameError = document.getElementById("nameError");
        const emailError = document.getElementById("emailError");
        const messageError = document.getElementById("messageError");
        
        if (!fullName.value) {
            nameError.classList.add("visible");
            fullName.classList.add("invalid");
        }
    
        if(fullName.value !=""){
            nameError.classList.remove("visible");
            fullName.classList.remove("invalid");
        }
        if (!email.value) {
            emailError.classList.add("visible");
            email.classList.add("invalid");
        }
        if(email.value !=""){
            emailError.classList.remove("visible");
            email.classList.remove("invalid");
        }
     
        if (!message.value) {
            messageError.classList.add("visible");
            message.classList.add("invalid");
        }
        if(message.value !=""){
            messageError.classList.remove("visible");
            message.classList.remove("invalid");
        }
    
        return valid;
    }