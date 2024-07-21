require('dotenv').config();
const express = require('express');
const { PrismaClient } = require('@prisma/client');
const app = express();
const prisma = new PrismaClient();
const cors=require("cors")
app.use(express.json()); 
app.use(cors())
app.post('/referrals', async (req, res) => {
  try {
    const { Name, Email, Phone, Message, refereeName, refereeEmail } = req.body;
    const referral = await prisma.referral.create({
      data: { Name, Email, Phone, Message, refereeName, refereeEmail },
    });
    res.json(referral);
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: 'An error occurred while creating a referral' });
  }
});

app.listen(2300, () => {
  console.log('Server is running on port 2300');
});
