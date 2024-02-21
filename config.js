import dotenv from "dotenv";
dotenv.config();

const config = {
  db: {
    /* don't expose password or any sensitive info, done only for demo */
    // host: "db4free.net",
    // user: "restapitest123",
    // password: "restapitest123",
    // database: "restapitest123",
    host: process.env.HOST,
    user: process.env.USER,
    password: process.env.PASSWORD,
    database: process.env.DB,
    connectTimeout: 60000,
    multipleStatements: true,
  },
  // Ponemos unos 8 pokemons por página, para controlar la paginación.

  listPerPage: 8, //Establece el número de resultados por página
};

export default config;
