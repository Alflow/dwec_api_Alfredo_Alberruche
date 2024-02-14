import jwt from "jsonwebtoken";
// import * as dotenv from "dotenv";

// dotenv.config();

const verifyToken = (req, res, next) => {
  const headerToken = req.headers["authorization"];
  console.log("header", headerToken);
  if (!headerToken) {
    return res.status(401).json({ error: "Acceso denegado" });
  }

  if (!headerToken.startsWith("Bearer ")) {
    return res.status(401).json({ error: "No Bearer Acceso denegado" });
  }

  try {
    const bearerToken = headerToken.slice(7);
    // const bearerToken = headerToken.split(" ")[1];
    console.log(bearerToken);

    const verifiedToken = jwt.verify(
      bearerToken,
      process.env.TOKEN_SECRET || "cursoDAW2"
    );
    req.user = verifiedToken;

    next();
  } catch (error) {
    res.status(400).json({ error: "Token no valido, acceso denegado" });
  }
};

export default verifyToken;
