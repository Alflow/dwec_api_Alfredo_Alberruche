import { Router } from "express";
import books from "../controllers/books.controller.js";
import verifyToken from "../middlewares/validate-token.js";

import { storage, prueba } from "../middlewares/multer-storage.js";
import multer from "multer";
const upload = multer({ storage });

const router = Router();

/* GET books. */
router.get("/", async function (req, res, next) {
  try {
    // console.log(req.query);
    res.json(await books.getMultiple(req.query.page));
  } catch (err) {
    console.error(`Error while getting books `, err.message);
    next(err);
  }
});

/* GET Auth books. */
router.get("/auth", verifyToken, async function (req, res, next) {
  try {
    res.json(await books.getMultiple(req.query.page));
  } catch (err) {
    console.error(`Error while getting books `, err.message);
    next(err);
  }
});

/* POST book */

// router.post("/", verifyToken, upload.single("img"),async function (req, res, next) {

router.post("/", upload.single("img"), async function (req, res, next) {
  try {
    // console.log("POST Route", req.body);
    res.json(await books.create(req));
  } catch (err) {
    console.error(`Error while creating book`, err.message);
    next(err);
  }
});

/* PUT book */
router.put("/:id", upload.single("img"), async function (req, res, next) {
  try {
    // console.log("PUT Route", req.body);
    res.json(await books.update(req.params.id, req));
    res.json({ msg: "aqui update" });
  } catch (err) {
    console.error(`Error while updating book`, err.message);
    next(err);
  }
});

/* DELETE book */
router.delete("/:id", verifyToken, async function (req, res, next) {
  try {
    res.json(await books.remove(req.params.id));
  } catch (err) {
    console.error(`Error while deleting book`, err.message);
    next(err);
  }
});

router.get("/:id", async function (req, res, next) {
  try {
    res.json(await books.search(req.params.id));
  } catch (err) {
    console.error(`Error while searching books `, err.message);
    next(err);
  }
});

export default router;
