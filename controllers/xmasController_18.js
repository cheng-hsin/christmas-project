const Xmas_18 = require('../models/xmasModel_18');

//READ
exports.getXmasByCategory = async (req, res) => {
  let data = {};
  let cateData = {};
  data.cid = 0;
  try {
    if (req.params.thing === 'cards') data.cid = 0;
    else if (req.params.thing === 'decorations') data.cid = 1;
    else if (req.params.thing === 'gifts') data.cid = 2;
    else if (req.params.thing === 'list') data.cid = 3;
    await Xmas_18.fetchXmasByCategory(data.cid).then(([rows]) => {
      data.xmas = rows;
      // res.json(data.clothing);
    });

    await Xmas_18.fetchCategory(data.cid).then(([rows]) => {
      cateData.cate = rows;
      // res.json(data.clothing);
    });

    res.render('overview_18', {
      data: data.xmas,
      category: cateData.cate,
      title: req.params.thing,
    });
  } catch (err) {
    console.log(err);
  }
};

//CREATE
exports.createXmas = async (req, res, next) => {
  console.log('createXmas', req.body);
  try {
    await Xmas_18.create(req, res).then(([rows]) => {
      res.redirect('/xmas_18');
    });
  } catch (err) {
    console.log(err);
  }
};

//UPDATE
exports.updateXmas = async (req, res, next) => {
  console.log('updateXmas', req.body);
  try {
    await Xmas_18.updateById(req, res).then(([rows]) => {
      res.redirect('/xmas_18');
    });
  } catch (err) {
    console.log(err);
  }
};

//DELETE
exports.deleteXmasById = async (req, res, next) => {
  console.log('deleteXmasById', req.params.id);
  try {
    await Xmas_18.deleteById(req.params.id).then(([rows]) => {
      res.redirect('/xmas_18');
    });
  } catch (err) {
    console.log(err);
  }
};
