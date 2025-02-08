const express = require("express");
const mongoose = require("mongoose");
const cors = require("cors");
const bodyParser = require("body-parser");

const app = express();
app.use(cors());
app.use(bodyParser.json());

// 🔹 Connect to MongoDB
mongoose.connect("mongodb://127.0.0.1:27017/shopping_cart", {
  useNewUrlParser: true,
  useUnifiedTopology: true,
})
.then(() => console.log("✅ MongoDB Connected!"))
.catch(err => console.error("❌ MongoDB Connection Error:", err));

// 🔹 Define Cart Schema
const cartSchema = new mongoose.Schema({
  name: String,
  price: Number,
  quantity: Number,
});

const CartItem = mongoose.model("CartItem", cartSchema);

// 🔹 Get all cart items
app.get("/cart", async (req, res) => {
  const items = await CartItem.find();
  res.json(items);
});

// 🔹 Add item to cart
app.post("/cart", async (req, res) => {
  const { name, price } = req.body;
  let item = await CartItem.findOne({ name });

  if (item) {
    item.quantity += 1;
  } else {
    item = new CartItem({ name, price, quantity: 1 });
  }

  await item.save();
  res.json({ message: "Item added to cart!", item });
});

// 🔹 Remove item from cart
app.delete("/cart/:name", async (req, res) => {
  const { name } = req.params;
  let item = await CartItem.findOne({ name });

  if (item) {
    if (item.quantity > 1) {
      item.quantity -= 1;
      await item.save();
    } else {
      await CartItem.deleteOne({ name });
    }
    res.json({ message: "Item removed!", item });
  } else {
    res.status(404).json({ message: "Item not found" });
  }
});

// 🔹 Clear Cart
app.delete("/cart", async (req, res) => {
  await CartItem.deleteMany({});
  res.json({ message: "Cart cleared!" });
});

// 🔹 Start Server
app.listen(5000, () => console.log("✅ Server running on http://localhost:5000"));
