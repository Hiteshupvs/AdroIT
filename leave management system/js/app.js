let currentView = 'employee';
let leaves = [
    {
        id: 1,
        employeeId: 'EMP001',
        employeeName: 'Sahil Rao',
        type: 'casual',
        startDate: '2023-12-01',
        endDate: '2023-12-02',
        reason: 'Personal work',
        status: 'pending'
    }
];

function toggleView(view) {
    currentView = view;
    document.getElementById('employeeView').classList.toggle('hidden', view !== 'employee');
    document.getElementById('managerView').classList.toggle('hidden', view !== 'manager');

    if (view === 'employee') {
        updateEmployeeView();
    } else {
        updateManagerView();
    }
}

function showMessage(message, type) {
    const messageDiv = document.createElement('div');
    messageDiv.className = `message-box fade-in ${type}`;
    messageDiv.textContent = message;
    document.body.appendChild(messageDiv);
    setTimeout(() => messageDiv.remove(), 3000);
}

function formatDate(dateStr) {
    return new Date(dateStr).toLocaleDateString('en-US', {
        year: 'numeric',
        month: 'short',
        day: 'numeric'
    });
}

function capitalizeFirst(str) {
    return str.charAt(0).toUpperCase() + str.slice(1);
}

// Initial load
toggleView('employee');
