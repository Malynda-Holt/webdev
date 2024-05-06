
import express from 'express';

import mysql from 'mysql2';

import { fileURLToPath } from 'url';
import { dirname } from 'path';

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

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