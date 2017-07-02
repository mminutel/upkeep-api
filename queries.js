var promise = require('bluebird');

var options = {
  promiseLib: promise
};

var pgp = require('pg-promise')(options);
var connection = {
  host: '192.168.1.3',
  port: 5432,
  database: 'db1',
  user: 'db1',
  password: 'AhyXzty8'
};
var db = pgp(connection);

function getAllCompanies(req, res, next) {
  db.any('SELECT * FROM upkeep.tbl_company')
    .then(function (data) {
      res.status(200)
        .json({
          status: 'success',
          data: data,
          message: 'Retrieved all companies.'
        });
    })
    .catch(function (err) {
            console.log(err);
      return next(err);
    });
}

//Query Functions
module.exports = {
  getAllCompanies: getAllCompanies
};
