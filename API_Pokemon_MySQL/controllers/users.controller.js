import express from "express";
// import User from "../models/user.js";
// import Joi from '@hapi/joi'
import bcrypt from "bcrypt";
import jwt from "jsonwebtoken";

// NUEVO 

const app = express();



import db from "../services/db.js";
import helper from "../helper.js";
import config from "../config.js";

// REGISTER
const create = async function (user) {
  const { email, name, password } = user;
  // console.log("auth.service");

  const saltRound = 10;
  const salt = await bcrypt.genSalt(saltRound);
  const hashedPassword = await bcrypt.hash(password, salt);

  const result = await db.query(
    `INSERT INTO user
    (email, name, password)
    VALUES
    ('${email}', '${name}', '${hashedPassword}')`
  );

  let message = "Error in creating user";

  if (result.affectedRows) {
    message = "User created successfully";
  }

  return { message, user };
};

const loginUser = async (req, res) => {
  // Validaciones de login
  // const { error } = schemaLogin.validate(req.body);
  // if (error) return res.status(400).json({ error: error.details[0].message });

  // Validaciond e existencia
  // const user = await User.findOne({ email: req.body.email });
  // if (!user) return res.status(400).json({ error: "Usuario no encontrado" });

  const result = await db.query(
    `SELECT * FROM user WHERE email = '${req.body.email}'`
  );

  // console.log(result);

  if (result.length == 0) {
    return res.status(400).json({
      error: "Usuario no encontrado",
    });
  }

  // console.log("****************************v");
  const user = result[0];

  // Validacion de password en la base de datos
  const validPassword = await bcrypt.compare(req.body.password, user.password);

  if (!validPassword) {
    return res.status(400).json({ error: "Constraseña invalida" });
  }

  // Creando token
  const token = jwt.sign(
    {
      name: user.name,
      email: user.email,
    },
    // TIEMPO DE EXPIRACIÓN DEL TOKEN QUE DEVOLVERÁ AL USER AL LOGAR CORRECTAMENTE 
    process.env.TOKEN_SECRET || "cursoDAW2",
    { expiresIn: "20000" }
  );

  // Colocando el token en el header y el cuerpo de la respuesta
  res.header("auth-token", token).json({
    error: null,
    data: { token },
    message: `Bienvenido ${user.name}`,
  });
};

const userController = { create, loginUser };

export default userController;
