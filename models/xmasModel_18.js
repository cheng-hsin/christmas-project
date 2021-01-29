// const { fetchHomepage } = require('../controllers/crownController');
const db = require('../utils/xmasDatabase');

const Xmas_18 = class Xmas_18 {
  constructor(id, name, category, imageUrl, subtitle) {
    this.id = id;
    this.name = name;
    this.category = category;
    this.imageUrl = imageUrl;
    this.subtitle = subtitle;
  }

  //READ
  static fetchAll() {
    return db.execute('SELECT * FROM xmas_18 ;');
  }

  static fetchXmasByCategory(cid) {
    return db.execute('select * from xmas_18 where cid = ?', [cid]);
  }

  static fetchCategory(cid) {
    return db.execute('select * from category where cat_id = ?', [cid]);
  }

  // //CREAT
  static create(req, res) {
    return db.execute(
      'INSERT INTO xmas_18 (id, category, cid, name, imageUrl, subtitle) VALUES (?, ?, ?, ?, ?, ?)',
      [
        req.body.id,
        req.body.category,
        req.body.cid,
        req.body.name,
        req.body.imageUrl,
        req.body.subtitle,
      ]
    );
  }

  // //UPDATE
  static updateById(req, res) {
    return db.execute(
      'UPDATE xmas_18 SET category = ?, cid = ?, name =?, imageUrl =?, subtitle =? where id = ?',
      [
        req.body.category,
        req.body.cid,
        req.body.name,
        req.body.imageUrl,
        req.body.subtitle,
        req.body.id,
      ]
    );
  }

  // //DELETE
  static deleteById(id) {
    return db.execute('DELETE FROM xmas_18 WHERE id = ?', [id]);
  }
};

module.exports = Xmas_18;
