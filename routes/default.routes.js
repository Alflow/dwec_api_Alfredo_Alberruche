import { Router } from "express";
import { getDefault } from "../controllers/default.controller.js";

const router = Router();

router.get("/", getDefault);

export default router;
