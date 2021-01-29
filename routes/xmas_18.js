var express = require('express');
var router = express.Router();

const xmasController = require('../controllers/xmasController_18');
/* GET home page. */
router.get('/', function (req, res, next) {
  res.render('xmas_18', { title: 'Express' });
});
router.get('/start', function (req, res, next) {
  res.render('start', { title: 'Express' });
});
router.get('/:thing', xmasController.getXmasByCategory);

//DELETE
router.get('/delete/:id', xmasController.deleteXmasById);

//CREATE
router.post('/create', xmasController.createXmas);

//UPDATE
router.post('/update', xmasController.updateXmas);

module.exports = router;
