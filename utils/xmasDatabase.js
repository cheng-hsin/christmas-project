const mysql = require('mysql2');

const pool = mysql.createPool({
  host: 'localhost',
  user: 'root',
  password: 'admin',
  database: 'christmas_18',
});

// test
// pool.query('select * from Clothing', (err, results) => {
//   console.log(JSON.stringify(results));
//   console.log('database connection successful');
// });

module.exports = pool.promise();
