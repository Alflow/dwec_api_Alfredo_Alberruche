import mysql from "mysql2/promise";
import config from "../config.js";

async function query(sql, params) {
  const connection = await mysql.createConnection(config.db);

  const [results] = await connection.execute(sql, params);
  // imprime las cosas que nos pasan las consultas.
  console.log("sql: ", sql, ", Params: ", params, ", Results: ", results);

  return results;
}

async function callSpSearch(id, table) {
  const connection = await mysql.createConnection(config.db);
  const procedure = `CALL sp_search_${table}_by_id("${id}")`;

  const [results] = await connection.query(procedure);

  // console.log(procedure);
  return results;
}

const db = { query, callSpSearch };
export default db;
