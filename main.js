import express from 'express';
const app = express();

const PORT=process.env.PORT || 8000;
// app.use(express.json());

app.get('/', (req, res) => {
    res.json({msg: "Welcome to CI CD Pipeline!"});
})

//server listening
app.listen(PORT, (err) => {
    if(err) console.log("server error on port 8000");
    console.log(`Server is running on PORT: ${PORT}`);
})
