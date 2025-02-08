// Fetch courses when the page loads
fetch('/api/courses')
    .then(response => response.json())
    .then(courses => {
        let courseSelect = document.querySelector('#course-select');
        courses.forEach(course => {
            let option = document.createElement('option');
            option.value = course.id;
            option.text = `${course.name} - ${course.level}`;
            courseSelect.appendChild(option);
        });
    })
    .catch(error => console.error('Error fetching courses:', error));
    document.getElementById('registration-form').addEventListener('submit', function (event) {
        event.preventDefault();
    
        const studentData = {
            firstName: document.querySelector('[name="firstName"]').value,
            middleName: document.querySelector('[name="middleName"]').value,
            lastName: document.querySelector('[name="lastName"]').value,
            dateOfBirth: document.querySelector('[name="dateOfBirth"]').value,
            gender: document.querySelector('[name="gender"]').value,
            email: document.querySelector('[name="email"]').value,
            phone: document.querySelector('[name="phone"]').value,
            streetAddress: document.querySelector('[name="streetAddress"]').value,
            city: document.querySelector('[name="city"]').value,
            state: document.querySelector('[name="state"]').value,
            postalCode: document.querySelector('[name="postalCode"]').value,
            country: document.querySelector('[name="country"]').value
        };
    
        // Send POST request to create student
        fetch('/api/students', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify(studentData),
        })
        .then(response => response.json())
        .then(data => {
            alert('Student registered successfully!');
            // Handle course registration or other actions after student creation
        })
        .catch(error => {
            console.error('Error:', error);
            alert('There was an error processing your registration.');
        });
    });
    