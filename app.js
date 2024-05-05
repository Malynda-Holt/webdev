import React from 'react';
import MyTable from './MyTable'; // Adjust the path based on your project structur


const express = require('express');

const mysql = require('mysql2');

const app = express();

const port = 3000;

const pool = mysql.createPool({
	connectionLimit : 10,
	host : 'localhost',
	user : 'root',
	password : 'password',
	database : 'recipes'
});

app.get('/', (request, response) => {

	response.sendFile(__dirname + '/index.html');

});

app.listen(port, () => {

	console.log(`Server listening on port ${port}`);

});

app.get('/search', (request, response) => {

	const query = request.query.q;

	var sql = '';

	if(query != '')
	{
		sql = `SELECT * FROM recipes WHERE recipe_name LIKE '%${query}%' OR ingredients LIKE '%${query}%'`;
	}
	else
	{
		sql = `SELECT *
        FROM recipes`;
	}

    console.log(sql);

	pool.query(sql, (error, results) => {

		if (error) throw error;

		response.send(results);

	});

});
e

const App = () => {
  return (
    <div>
      <h1>My Awesome Table</h1>
      <MyTable />
    </div>
  );
};

export default App