document.getElementById('managerView').innerHTML = `
    <div class="max-w-3xl mx-auto bg-white rounded-lg shadow p-6">
        <h2 class="text-xl font-bold mb-4">Pending Leave Requests</h2>
        <div id="pendingRequests"></div>
    </div>
`;

function updateManagerView() {
    const pendingHtml = leaves
        .filter(leave => leave.status === 'pending')
        .map(leave => `
            <div class="border p-4 rounded fade-in mb-2">
                <strong>${leave.employeeName}</strong>
                <p>${capitalizeFirst(leave.type)} Leave</p>
                <p>${formatDate(leave.startDate)} - ${formatDate(leave.endDate)}</p>
                <p>Reason: ${leave.reason}</p>
                <button onclick="updateLeaveStatus(${leave.id}, 'approved')" class="bg-green-500 text-white px-3 py-1 rounded">Approve</button>
                <button onclick="updateLeaveStatus(${leave.id}, 'rejected')" class="bg-red-500 text-white px-3 py-1 rounded">Reject</button>
            </div>
        `).join('');

    document.getElementById('pendingRequests').innerHTML = pendingHtml || '<p>No pending requests.</p>';
}

function updateLeaveStatus(id, status) {
    const leave = leaves.find(l => l.id === id);
    if (leave) {
        leave.status = status;
        showMessage(`Leave request ${status}!`, 'success');
        updateManagerView();
        updateEmployeeView();
    }
}
