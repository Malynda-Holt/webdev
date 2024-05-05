
import React from 'react';
import DataTable from 'react-data-table-component';

const columns = [
  {
    name: 'Name',
    selector: 'name',
    sortable: true,
  },
  {
    name: 'Ingredients',
    selector: 'ingredients',
    sortable: true,
  },
  {
    name: 'Instructions',
    selector: 'instructions',
    sortable: true,
  },
];

const searchInput = document.querySelector('#search');

const results_body = document.querySelector('#results');

const MyTable = () => {


    const request = new XMLHttpRequest();

    request.open('GET', `/search?q=${query}`);

    request.onload = () => {

        const results = JSON.parse(request.responseText);

        let html = '';

        if(results.length > 0)
            {
                const data = [];
                var i  = 0;

                results.forEach(result => {

                    
                     data = [
                        {name: result.recipe_name, ingredients: result.ingredients, instructions: result.instructions },

                      ];
                    
                      i++;

                })
            }

    }

  return (
    <div className="table-container">
      <table>
        <thead>
          <tr>
            <th>Name</th>
            <th>Ingredients</th>
            <th>Instructions</th>
          </tr>
        </thead>
        <tbody>
          {data.map((row) => (
            <tr key={row.id}>
              <td>{row.name}</td>
              <td>{row.ingredients}</td>
              <td>{row.instructions}</td>
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );

  request.send();
  
};



export default MyTable;
