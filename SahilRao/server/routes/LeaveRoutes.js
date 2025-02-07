const express = require('express');
const router = express.Router();
const { LeaveRequest } = require('../models/LeaveRequest');

// Submit leave request
router.post('/', async (req, res) => {
    try {
        // Server-side validation
        if (new Date(req.body.startDate) > new Date(req.body.endDate)) {
            return res.status(400).json({ error: 'Invalid date range' });
        }

        const request = await LeaveRequest.create({
            ...req.body,
            employeeName: "John Doe" // Replace with actual user
        });
        
        res.status(201).json(request);
    } catch (error) {
        res.status(400).json({ error: error.message });
    }
});

// Get leave history
// Modify GET endpoint to filter by employee
// Modify the GET endpoint to sort by creation date
router.get('/', async (req, res) => {
    try {
        const whereClause = {};
        if (req.query.employee) {
            whereClause.employeeName = req.query.employee;
        }
        const requests = await LeaveRequest.findAll({ 
            where: whereClause,
            order: [['createdAt', 'DESC']] // Newest first
        });
        res.json(requests);
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
});
// Update request status
router.put('/:id', async (req, res) => {
    try {
        const request = await LeaveRequest.findByPk(req.params.id);
        if (!request) return res.status(404).json({ error: 'Request not found' });
        
        request.status = req.body.status;
        await request.save();
        
        res.json(request);
    } catch (error) {
        res.status(400).json({ error: error.message });
    }
});

module.exports = router;