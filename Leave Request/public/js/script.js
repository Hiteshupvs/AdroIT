// Handle leave request submission
document.getElementById('leaveForm')?.addEventListener('submit', async (e) => {
    e.preventDefault();
    
    const formData = {
        type: document.getElementById('type').value,
        startDate: document.getElementById('startDate').value,
        endDate: document.getElementById('endDate').value,
        reason: document.getElementById('reason').value,
        employeeName: localStorage.getItem('employeeName')
    };

    // Client-side validation
    if (new Date(formData.startDate) > new Date(formData.endDate)) {
        alert('End date must be after start date');
        return;
    }

    try {
        const response = await fetch('http://localhost:3000/api/leave', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify(formData)
        });
        
        if (response.ok) {
            alert('Leave request submitted!');
            document.getElementById('leaveForm').reset();
            loadLeaveHistory();
        }
    } catch (error) {
        console.error('Error:', error);
    }
});

// Load employee's leave history
async function loadLeaveHistory() {
    try {
        const employeeName = localStorage.getItem('employeeName');
        const response = await fetch(
            `http://localhost:3000/api/leave?employee=${encodeURIComponent(employeeName)}`
        );
        const data = await response.json();
        
        const tbody = document.querySelector('#historyTable tbody');
        tbody.innerHTML = data.map(request => `
            <tr>
                <td>${request.type}</td>
                <td>${new Date(request.startDate).toLocaleDateString()}</td>
                <td>${new Date(request.endDate).toLocaleDateString()}</td>
                <td>${request.reason}</td>
                <td><span class="status-badge status-${request.status}">${request.status}</span></td>
            </tr>
        `).join('');
    } catch (error) {
        console.error('Error loading leave history:', error);
    }
}

// Handle manager decisions
async function handleDecision(requestId, decision) {
    try {
        const response = await fetch(`http://localhost:3000/api/leave/${requestId}`, {
            method: 'PUT',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ status: decision })
        });

        if (response.ok) {
            loadPendingRequests();
        }
    } catch (error) {
        console.error('Error:', error);
    }
}

// Load pending requests for manager
async function loadPendingRequests() {
    try {
        const response = await fetch('http://localhost:3000/api/leave');
        const data = await response.json();
        
        const tbody = document.querySelector('#pendingTable tbody');
        tbody.innerHTML = data
            .filter(request => request.status === 'pending')
            .map(request => `
                <tr>
                    <td>${request.employeeName}</td>
                    <td>${request.type}</td>
                    <td>${new Date(request.startDate).toLocaleDateString()}</td>
                    <td>${new Date(request.endDate).toLocaleDateString()}</td>
                    <td>${request.reason}</td>
                    <td>
                        <div class="btn-group">
                            <button class="btn btn-success btn-sm" 
                                onclick="handleDecision('${request.id}', 'approved')">
                                Approve
                            </button>
                            <button class="btn btn-danger btn-sm" 
                                onclick="handleDecision('${request.id}', 'rejected')">
                                Reject
                            </button>
                        </div>
                    </td>
                </tr>
            `).join('');
    } catch (error) {
        console.error('Error loading pending requests:', error);
    }
}

// Auto-refresh for manager view
function autoRefreshPendingRequests() {
    setInterval(async () => {
        await loadPendingRequests();
    }, 5000);
}

// Initialize appropriate functions based on page
document.addEventListener('DOMContentLoaded', () => {
    if (window.location.pathname.includes('employee.html')) {
        loadLeaveHistory();
    }
    
    if (window.location.pathname.includes('manager.html')) {
        loadPendingRequests();
        autoRefreshPendingRequests();
    }
});