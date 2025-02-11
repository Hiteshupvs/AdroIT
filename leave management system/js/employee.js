document.getElementById('employeeView').innerHTML = `
    <div class="max-w-2xl mx-auto bg-white rounded-lg shadow p-6 mb-6">
        <h2 class="text-xl font-bold mb-4">Submit Leave Request</h2>
        <form id="leaveForm" class="space-y-4">
            <div>
                <label>Leave Type</label>
                <select id="leaveType" required class="w-full p-2 border rounded">
                    <option value="">Select Type</option>
                    <option value="casual">Casual Leave</option>
                    <option value="sick">Sick Leave</option>
                    <option value="vacation">Vacation Leave</option>
                    <option value="other">Other</option>
                </select>
            </div>
            <div class="grid grid-cols-2 gap-4">
                <div><label>Start Date</label><input type="date" id="startDate" required class="w-full p-2 border rounded"></div>
                <div><label>End Date</label><input type="date" id="endDate" required class="w-full p-2 border rounded"></div>
            </div>
            <div><label>Reason</label><textarea id="reason" required class="w-full p-2 border rounded" rows="3"></textarea></div>
            <button type="submit" class="bg-blue-600 text-white px-4 py-2 rounded hover:bg-blue-700">Submit Request</button>
        </form>
    </div>
    <div class="max-w-2xl mx-auto bg-white rounded-lg shadow p-6">
        <h2 class="text-xl font-bold mb-4">Leave History</h2>
        <div id="leaveHistory"></div>
    </div>
`;

document.getElementById('leaveForm').addEventListener('submit', function(e) {
    e.preventDefault();
    const startDate = new Date(document.getElementById('startDate').value);
    const endDate = new Date(document.getElementById('endDate').value);

    if (endDate < startDate) {
        showMessage('End date cannot be before start date', 'error');
        return;
    }
    if (startDate < new Date()) {
        showMessage('Cannot apply leave for past dates', 'error');
        return;
    }

    const leaveRequest = {
        id: leaves.length + 1,
        employeeId: 'EMP001',
        employeeName: 'Sahil Rao',
        type: document.getElementById('leaveType').value,
        startDate: document.getElementById('startDate').value,
        endDate: document.getElementById('endDate').value,
        reason: document.getElementById('reason').value,
        status: 'pending'
    };

    leaves.push(leaveRequest);
    this.reset();
    showMessage('Leave request submitted successfully!', 'success');
    updateEmployeeView();
});

function updateEmployeeView() {
    const historyHtml = leaves
        .filter(leave => leave.employeeId === 'EMP001')
        .map(leave => `
            <div class="border p-4 rounded bg-gray-50 fade-in mb-2">
                <strong>${capitalizeFirst(leave.type)} Leave</strong>
                <p>${formatDate(leave.startDate)} - ${formatDate(leave.endDate)}</p>
                <p>Reason: ${leave.reason}</p>
                <span class="badge ${leave.status}">${capitalizeFirst(leave.status)}</span>
            </div>
        `).join('');
    document.getElementById('leaveHistory').innerHTML = historyHtml || '<p>No leave history available.</p>';
}
