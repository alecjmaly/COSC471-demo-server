const cors = require('cors');
const db_functions = require('./db/scripts/db_functions.js');
const promiseRouter = require('express-promise-router');

const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

app.use(cors());
app.use(express.json());


db_functions.connect_db();



const router = promiseRouter();

// Error Handling: COULD BE IMPROVED **fix**
app.use((err, req, res, next) => {
  if (err) {
      res.status(err.statusCode || err.status || 500).send(err.data || err.message || {});
  } else {
      res.setHeader("Access-Control-Allow-Origin", '*');
      next();
  }
})
.use(router);



// build tables
app.get('/build', (req, res) => {
  db_functions.createTables();
  res.send('true');
});

// seed tables
app.get('/seed', (req, res) => {
  db_functions.seedTables();
  res.send('true');
});

// destroy db
app.get('/destroy', (req, res) => {
  db_functions.dropTables();
  res.send('true');
});


app.post('/query', (req, res) => {
  if (req.body.q) {
    console.log('run query');
    let resp = db_functions.runQuery(req.body.q, function(data){
      //console.log(data);

      res.set('Content-Type', 'application/json');
      //console.log('returning');
      //console.log(data);
      res.send(data);
    });

    //res.send(resp);
  }
});

app.get('/', (req, res) => { res.send('Hello World!') });

  
app.listen(port, () => console.log(`Example app listening on port ${port}!`));




