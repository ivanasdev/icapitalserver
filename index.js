const express = require("express");

const app = express();
const bodyParser = require("body-parser");
const cors = require("cors");
const mysql = require("mysql2");
const pth = require("path");
const multer = require("multer");
const path = require("path");
const fs = require("fs");
const PORT = 5002;
app.use(cors());
app.use(express.static(path.join(__dirname,'dbimgs')))
app.use(express.json());
app.use(bodyParser.urlencoded({ extend: true }));

/*==========================================CONFIG=====================================================*/

const db = mysql.createPool({
  host: "195.179.239.51",
  user: "u611292494_admincap",
  password: "Icapital2023",
  database: "u611292494_icapitaldb",
});

/*Upload Pics */
const diskStorage = multer.diskStorage({
  destination: path.join(__dirname, "./imagenes"),
  filename: (req, file, cb) => {
    cb(null, "Uploadpics" + file.originalname);
  },
});

const fileUpload = multer({
  storage: diskStorage,
}).single("files");

/*Uplad Files  */


const diskStorageCV = multer.diskStorage({
  destination: path.join(__dirname, "./cvs"),
  filename: (req, file, cb) => {
    cb(null, "UploadCV" + file.originalname);
  },
});

const fileUploadCV = multer({
  storage: diskStorageCV,
}).single("filecv");
/*==========================================CRUD=====================================================*/



/*GET*/
app.get("/getimagenes", (req, res) => {
  queryselect ="SELECT * FROM u611292494_icapitaldb.tbl_UploadImages";
  db.query(queryselect, (err, rows) => {
    if(err){
        res.send(err)
    }else{
        //res.send(rows)
        console.log(rows)

        rows.map(img=>{
            fs.writeFileSync(path.join(__dirname,'./dbimgs/'+ img.nombre+'.jpeg'),img.data)
        })
        const imagedir=fs.readdirSync(path.join(__dirname,'./dbimgs'))
        res.send(imagedir)
        //console.log(  fs.readdirSync(path.join(__dirname,'./dbimgs'))  )

    }
   
  });
});


app.get("/getprops", (req, res) => {
  const propiedades =
    "SELECT id_Propiedad, st_NombrePropiedad,i_Precio, st_Ubicacion, st_Superficie, i_Plantas, i_Habitaciones, i_Sanitarios, i_Estacionamientos, st_Descripcion FROM u611292494_icapitaldb.tbl_Propiedades";
  db.query(propiedades, (error, result) => {
    res.send(result);
  });
});


app.get("/catalagoestados",(req,res)=>{
  const catestados="SELECT * FROM u611292494_icapitaldb.cat_Estados"
  db.query(catestados,(err,resp)=>{
    res.send(resp)
  })
})



/*POST REQUEST */

app.post("/upcvs",fileUploadCV, (req,res)=>{
  console.log("Exito")

})

app.post("/imagenes", fileUpload, (req, res) => {
  const type = req.file.mimetype;
  const name = req.file.originalname;
  const data = fs.readFileSync(
    path.join(__dirname, "./imagenes/" + req.file.filename)
  );
  const nombre = JSON.parse(JSON.stringify(req.body.nombre));

  db.query(
    "INSERT INTO tbl_UploadImages set ? ",
    [{ type, name, data, nombre }],
    (err, response) => {
      if (err) {
        res.status(500).send(err);
        console.log(err);
      } else {
        res.send("ok");
        console.log(nombre);
      }
    }
  );
});

app.post("/admindata", (req, res) => {
  const {
    nombre,
    precio,
    ubicacion,
    superficie,
    plantas,
    habitaciones,
    sanitarios,
    estacionamientos,
    caracteristicas,
  } = req.body;
  const sqlInsertadmin =
    "INSERT INTO u611292494_icapitaldb.tbl_Propiedades (st_NombrePropiedad, i_Precio, st_Ubicacion, st_Superficie, i_Plantas, i_Habitaciones, i_Sanitarios, i_Estacionamientos, st_Descripcion) VALUES(?,?,?,?,?,?,?,?,?)";
  db.query(
    sqlInsertadmin,
    [
      nombre,
      precio,
      ubicacion,
      superficie,
      plantas,
      habitaciones,
      sanitarios,
      estacionamientos,
      caracteristicas,
    ],
    (error, result) => {
      if (error) {
        console.log(error);
      } else {
        res.send(result);
        console.log(result.serverStatus);
      }
    }
  );
});

app.post("/vendemos1",(req,res)=>{
  const {
    nombre,
    email,
    telefono,
    tipo,
    estado,
    calle,
    exterior,
    interior,
    cpostal,
    colonia,
    municipio,
  }=req.body

  const insertvendemos1="INSERT INTO u611292494_icapitaldb.tbl_VentaProps1 (st_Nombre, st_Email, st_Telefono, st_Tipo, id_Estado, st_Calle, st_Exterior, st_Interior, st_CPostal, st_Colonia, st_Municipio) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);"

  db.query(insertvendemos1,[nombre,email,telefono,tipo,estado,calle,exterior,interior,cpostal,colonia,municipio,],(error,result)=>{
    if (error) {
      console.log(error);
    } else {
      res.send(result);
      console.log(result.serverStatus);
    }

  })
})

app.post("/loginadmin", (req, res) => {
  const email = req.body.email;
  const password = req.body.password;
  db.query(
    "SELECT * FROM  tbl_Admis WHERE st_Email = ? AND  st_Password = ? ",
    [email, password],
    (error, results) => {
      if (error) {
        console.log(error);
      } else {
        res.send(results);
        console.log(results.serverStatus);
      }
    }
  );
});

app.post("/joinusreg", (req, res) => {
  const { nombre, ap, am, email, celular, referencia } = req.body;
  const sqljoinus =
    "INSERT INTO u611292494_icapitaldb.tbl_JoinUs (st_Nombre, st_Ap, st_Am, st_Email,i_Celular, st_ViaContacto) VALUES(?, ?, ?, ?, ?,?)";
  db.query(
    sqljoinus,
    [nombre, ap, am, email, celular, referencia],
    (error, result) => {
      if (error) {
        console.log(error);
      } else {
        res.send(result);
        console.log(result.serverStatus);
      }
    }
  );
});

app.post("/messages",(req,res)=>{
  const {quiero,nombre,email,celular,mensaje} =req.body
  const insertamensaje="INSERT INTO u611292494_icapitaldb.tbl_Mensajes (st_Tipomensaje, st_Nombre, st_Email, st_Celular, st_Mensaje) VALUES(?, ?, ?, ?, ?)";
  
  db.query(insertamensaje,[quiero,nombre,email,celular,mensaje],(error,resp)=>{
    if (error) {
      console.log(error);
    } else {
      res.send(resp);
      console.log(result.serverStatus);
    }

  })
});


app.post("/infoprops",(req,res)=>{
  const {nombre,email,celular} =req.body
  const insertamensaje="INSERT INTO u611292494_icapitaldb.tbl_RequestProps (st_Nombre, st_Email, i_Celular) VALUES(?, ?, ?)";
  
  db.query(insertamensaje,[nombre,email,celular],(error,resp)=>{
    if (error) {
      console.log(error);
    } else {
      res.send(resp);
      console.log(result.serverStatus);
    }

  })
});

app.listen(PORT, () => {
  console.log("Server is online en el puerto " + PORT);
});
/*TEST CONNECTION */
if (db) {
  console.log("Exito DB conectada");
}
