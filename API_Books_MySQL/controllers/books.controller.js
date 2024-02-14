import db from "../services/db.js";
import helper from "../helper.js";
import config from "../config.js";

async function getMultiple(page = 1) {
  const offset = helper.getOffset(page, config.listPerPage);
  const rows = await db.query(
    `SELECT id, title, img 
    FROM book LIMIT ${offset},${config.listPerPage}`
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
      `INSERT INTO book
      (title, img)
      VALUES
      ('${body.title}', '${url}')`
    );

    if (result.affectedRows) {
      message = "book created successfully";
    }
  }

  return { message };
}

async function update(id, req) {
  const { body, file } = req;

  // console.log("**", body, file);

  let message = "Error in updating book";

  if (file) {
    const url = `http://${process.env.HOST}:${process.env.PORT}/images/${file.filename}`;
    // console.log(url);
    const result = await db.query(
      `UPDATE book 
    SET title="${body.title}", img="${url}"
    WHERE id=${id}`
    );

    if (result.affectedRows) {
      message = "Book updated successfully";
    }
  }
  return { message };
}

async function remove(id) {
  const result = await db.query(`DELETE FROM book WHERE id=${id}`);

  let message = "Error in deleting book";

  if (result.affectedRows) {
    message = "Book deleted successfully";
  }

  return { message };
}

async function search(id) {
  const rows = await db.callSpSearch(id, "book");
  const data = helper.emptyOrRows(rows);
  return {
    data,
  };
}

const booksController = { getMultiple, create, update, remove, search };
export default booksController;
