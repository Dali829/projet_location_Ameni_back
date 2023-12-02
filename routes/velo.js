import express  from "express";
import { createVelo, deleteVelo, getAllVelo, getVelo, updateVelo } from "../controllers/velo.js";
import { verifyAdmin } from "../utils/verifyToken.js";

const router = express.Router();

router.post("/"/*,verifyAdmin*/,createVelo);

router.put("/:id"/*,verifyAdmin*/,updateVelo);

router.delete("/:id"/*,verifyAdmin*/,deleteVelo);

router.get("/:id",getVelo);

router.get("/",getAllVelo);


export default router