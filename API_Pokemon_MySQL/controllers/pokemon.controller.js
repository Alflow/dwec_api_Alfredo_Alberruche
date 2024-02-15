import db from "../services/db.js";
import helper from "../helper.js";
import config from "../config.js";

//Permite pasar como parámetro en la url el número de página
//http://localhost:3000/books/?page=2

async function getMultiple(page = 1) {
  const offset = helper.getOffset(page, config.listPerPage);
  const rows = await db.query(
    `SELECT id, name,location, type, description,  image 
    FROM pokemon LIMIT ${offset},${config.listPerPage}`
  );
  const data = helper.emptyOrRows(rows);
  const meta = { page };

  return {
    data,
    meta,
  };
}

async function create(req) {
  const { body, file } = req;
  // console.log(body, file);

  let message = "Error in creating book";

  if (file) {
    const url = `http://${process.env.HOST}:${process.env.PORT}/images/${file.filename}`;
    // console.log(url);

    const result = await db.query(
      `INSERT INTO pokemon
      (id, name, location, type, description, image)
      VALUES
      ('${body.id}', '${body.name}','${body.location}','${body.type}','${body.description}','${url}')`
    );

    if (result.affectedRows) {
      message = "pokemon created successfully";
    }
  }

  return { message };
}

async function update(id, req) {
  const { body, file } = req;

  // console.log("**", body, file);

  let message = "Error in updating pokebookmon";

  if (file) {
    const url = `http://${process.env.HOST}:${process.env.PORT}/images/${file.filename}`;
    // console.log(url);
    const result = await db.query(
      `UPDATE pokemon 
    SET name="${body.name}",location="${body.location}",type="${body.type}",description="${body.description}", img="${url}"
    WHERE id=${id}`
    );

    if (result.affectedRows) {
      message = "Pokemon updated successfully";
    }
  }
  return { message };
}

async function remove(id) {
  const result = await db.query(`DELETE FROM pokemon WHERE id=${id}`);

  let message = "Error in deleting Pokemon";

  if (result.affectedRows) {
    message = "Pokemon deleted successfully";
  }

  return { message };
}

async function search(id) {
  const rows = await db.callSpSearch(id, "pokemon");
  const data = helper.emptyOrRows(rows);
  return {
    data,
  };
}

const pokemonController = { getMultiple, create, update, remove, search };
export default pokemonController;
