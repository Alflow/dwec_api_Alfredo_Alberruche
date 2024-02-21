// const express = require("express");
import express from "express";
import morgan from "morgan";
import cors from "cors";
import dotenv from "dotenv";

import programmingLanguagesRoutes from "./routes/languages.routes.js";
import pokemonRoutes from "./routes/pokemon.routes.js";
import usersRoutes from "./routes/users.routes.js";
import defaultRoutes from "./routes/default.routes.js";

import path from "path";

dotenv.config();

let corsOptions = {
  origin: "*",
  optionsSuccessStatus: 200,
};

const app = express();
const port = process.env.PORT || 4000;

app.use(cors(corsOptions));

app.use(express.json());
app.use(morgan("dev"));

app.use(
  express.urlencoded({
    extended: true,
  })
);

// app.get("/", (req, res) => {
//   res.json({ message: "My API Rest" });
// });

app.use(express.static("./static"));

app.use("/", defaultRoutes);
app.use("/users", usersRoutes);
app.use("/programming-languages", programmingLanguagesRoutes);
app.use("/pokemon", pokemonRoutes);

/* Error handler middleware */
app.use((err, req, res, next) => {
  const statusCode = err.statusCode || 500;
  console.error(err.message, err.stack);
  res.status(statusCode).json({ message: err.message });
  return;
});

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`);
});
