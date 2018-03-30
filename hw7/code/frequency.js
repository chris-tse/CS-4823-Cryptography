if (process.argv.length < 3) {
  console.log('Usage: node frequency.js FILENAME');
  process.exit(1);
}

const fs = require('fs');
const filename = process.argv[2];

fs.readFile(filename, 'utf8', (err, data) => {
  if (err) throw err;
  
  let textArr = data.toLowerCase().replace(/[^a-z]/g, '').split('');
  
  let result = textArr.reduce( (acc, curr) => {
    acc[curr] ? acc[curr]++ : acc[curr] = 1;
    return acc;
  }, {});
  
  console.log(result);
});

