import { Router } from "express";
import users from "../controllers/users.controller.js";
// import User from "../models/user.js";
// import Joi from '@hapi/joi'
import bcrypt from "bcrypt";
import jwt from "jsonwebtoken";
// import * as dotenv from "dotenv";

// dotenv.config();
const router = Router();

// REGISTER
router.post("/register", async function (req, res, next) {
  //validaciones
  console.log("registrando");
  console.log("users.route", req.body);

  try {
    res.json(await users.create(req.body));
  } catch (err) {
    console.error(`Error while creating user`, err.message);
    next(err);
  }
});

// LOGIN
router.post("/login", users.loginUser);

export default router;
