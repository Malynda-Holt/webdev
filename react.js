
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


const MyTable = () => {
  const data = [
    { id: 1, name: 'John Doe', height: '180 cm', eyeColor: 'Brown' },
    // Add more rows as needed
  ];

  return (
    <div className="table-container">
      <table>
        <thead>
          <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Height</th>
            <th>Eye Color</th>
          </tr>
        </thead>
        <tbody>
          {data.map((row) => (
            <tr key={row.id}>
              <td>{row.id}</td>
              <td>{row.name}</td>
              <td>{row.height}</td>
              <td>{row.eyeColor}</td>
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
};

export default MyTable;
