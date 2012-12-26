var multiply;

multiply = require('./lib/multiply');

module.exports = function(numA, numB) {
  return multiply(numA, numB) * 10;
};
