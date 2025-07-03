const express = require('express');
const admin = require('firebase-admin');
const app = express();
admin.initializeApp();
app.use(express.json());

app.post('/accept-bid', async (req, res) => {
  const { rideId, bidId } = req.body;
  await admin.firestore().collection('rides').doc(rideId).update({
    selected_bid: bidId,
    status: 'accepted'
  });
  res.send({ success: true });
});

app.listen(3000, () => console.log('Backend running on port 3000'));