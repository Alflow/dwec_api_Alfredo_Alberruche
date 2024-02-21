import multer from "multer";
import path from "path";
// import { fs } from "fs";

export const prueba = () => {
  // console.log(path.join(__dirname, "../static/image"));
  console.log(path.join(path.resolve(), "../static/images"));
  // console.log(root);
  //path.join(import.meta.url, "../static/image"));
};

export const storage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, path.join(path.resolve(), "./static/images"));
  },
  filename: function (req, file, cb) {
    cb(
      null,
      `image-${Date.now()}-${file.originalname}` //.${file.mimetype.split("/")[1]}`
    );
  },

  // image/jpg
});
