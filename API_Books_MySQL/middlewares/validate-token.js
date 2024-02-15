import jwt from "jsonwebtoken";
// import * as dotenv from "dotenv";

// dotenv.config();

const verifyToken = (req, res, next) => {
  // Se crea una cabecera de autorización.
  const headerToken = req.headers["authorization"];
  console.log("header", headerToken);
  // Si no existe la cabecera ofrece acceso denegado
  if (!headerToken) {
    return res.status(401).json({ error: "Acceso denegado" });
  }
  // si no comienza con bearer idem
  if (!headerToken.startsWith("Bearer ")) {
    return res.status(401).json({ error: "No Bearer Acceso denegado" });
  }

  try {
    const bearerToken = headerToken.slice(7); //corta a partir del 7
    // const bearerToken = headerToken.split(" ")[1];
    console.log(bearerToken);

    const verifiedToken = jwt.verify(
      bearerToken,
      // Si se toca el toquen o se inventa, no es válido.
      process.env.TOKEN_SECRET || "cursoDAW2"
    );
    req.user = verifiedToken;

    next();
  } catch (error) {
    res.status(400).json({ error: "Token no valido, acceso denegado" });
  }
};

export default verifyToken;
