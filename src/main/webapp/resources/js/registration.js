const registrationForm=document.getElementById("register-form");
registrationForm.addEventListener('submit',formValidatation);


function formValidatation(event){
	event.preventDefault();
	
	const firstName=document.getElementById("first_name").value;
	const lastName=document.getElementById("last_name").value;
	const userName = document.getElementById("email").value;
	const password = document.getElementById("password").value;
	const country = document.getElementById("country").value;
	const state = document.getElementById("state").value;
	const city = document.getElementById("city").value;
	const pincode = document.getElementById("pincode").value;
	const gender=$("input[type='radio'][name='gender']:checked").val();
	
	if(userName.length<4){
		document.getElementById("usernameError").textContent = 'email cannot be empty.'
		return ;
	}if(firstName.length<4){
		document.getElementById("firstNameError").textContent='first name cannot be less than 4 characters.'
		return ;
	}if(lastName.length<4){
		document.getElementById("lastNameError").textContent='last name cannot be less than 4 characters.'
		return ;
	}if(pincode.length!=6){
		document.getElementById("pincodeError").textContent = 'pincode is wrong or empty.';
		return;
	}if(country.length==0){
		document.getElementById("countryError").textContent = 'country cannot be empty';
		return;
	}if(state.length==0){
		document.getElementById("stateError").textContent = 'state cannot be empty';
		return;
	}if(city.length==0){
		document.getElementById("cityError").textContent = 'city cannot be empty';
		return;
	}if(address.length<10){
		document.getElementById("addressError").textContent = 'address cannot be less than 10 characters';
		return;
	}if(gender.length==0){
		document.getElementById("genderError").textContent = 'gender cannot be empty';
		return;
	}
	
	if(password.length<8 || !/[A-Z]/.test(password) || !/[a-z]/.test(password) || !/\d/.test(password)){
		document.getElementById("passwordError").textContent = 'password must contains atleast 8 characters,'+
		'1 uppercase letter[A-Z],1 lowercase letter[a-z],1 digit[0-9]';
		return;
		
	}	
	
	registrationForm.submit();	
}