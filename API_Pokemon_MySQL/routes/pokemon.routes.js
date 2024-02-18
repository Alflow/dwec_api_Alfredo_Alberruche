import { Router } from "express";
import pokemon from "../controllers/pokemon.controller.js";
import verifyToken from "../middlewares/validate-token.js";

import { storage, prueba } from "../middlewares/multer-storage.js";
import multer from "multer";
const upload = multer({ storage });

const router = Router();

/* GET POKEMONS. */
router.get("/", async function (req, res, next) {
  try {
    res.json(await pokemon.getMultiple(req.query.page));
  } catch (err) {
    console.error(`Error while getting books `, err.message);
    next(err);
  }
});

/* GET Auth books. */
router.get("/auth", verifyToken, async function (req, res, next) {
  try {
    res.json(await pokemon.getMultiple(req.query.page));
  } catch (err) {
    console.error(`Error while getting pokemon `, err.message);
    next(err);
  }
});

/* POST book */

// router.post("/", verifyToken, upload.single("img"),async function (req, res, next) {

router.post("/", upload.single("img"), async function (req, res, next) {
  try {
    // console.log("POST Route", req.body);
    res.json(await pokemon.create(req));
  } catch (err) {
    console.error(`Error while creating pokemon`, err.message);
    next(err);
  }
});

/* PUT book */
router.put("/:id", upload.single("img"), async function (req, res, next) {
  try {
    console.log("PUT Route", req.body);
    res.json(await pokemon.update(req.params.id, req));
    // res.json({ msg: "aqui update" }); ESTO SOBRABA. NO HAY QUE ENVIAR DOS RES.JSON
  } catch (err) {
    console.error(`Error while updating pokemon`, err.message);
    next(err);
  }
});

/* DELETE POKEMON */
// router.delete("/:id", verifyToken, async function (req, res, next) {
router.delete("/:id", async function (req, res, next) {
  try {
    res.json(await pokemon.remove(req.params.id));
  } catch (err) {
    console.error(`Error while deleting book`, err.message);
    next(err);
  }
});

router.get("/:id", async function (req, res, next) {
  try {
    res.json(await pokemon.search(req.params.id));
  } catch (err) {
    console.error(`Error while searching pokemon `, err.message);
    next(err);
  }
});

export default router;
