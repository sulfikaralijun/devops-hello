import express from "express";

const app = express();
const PORT = process.env.PORT || 3000;

app.get("/", (req, res) => {
  res.json({ message: "Hello Devops" });
});

app.get("/ping", (req, res) => {
  res.json({ message: "pong" });
})

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
