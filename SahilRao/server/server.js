require('dotenv').config();
const express = require('express');
const cors = require('cors');
const sequelize = require('./models/LeaveRequest');
const leaveRoutes = require('./routes/leaveRoutes');

const app = express();
app.use(cors());
app.use(express.json());

// Routes
app.use('/api/leave', leaveRoutes);

const PORT = process.env.PORT || 3000;

sequelize.sync().then(() => {
    app.listen(PORT, () => {
        console.log(`Server running on port ${PORT}`);
    });
});