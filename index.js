import "dotenv/config";
import express from "express"

const app = express()

app.use(express.urlencoded({ extended: true }));
app.use(express.json());

app.use("/api", apiRouter);

const port = process.env.PORT || 3000;

app.listen(port, () => {
    console.log(`Server listening at http://localhost:${port}`)
});