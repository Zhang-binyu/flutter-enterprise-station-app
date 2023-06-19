const express = require("express");
const router = express();
const config = require("./config");
var bodyParser = require('body-parser');
// 创建 application/x-www-form-urlencoded 编码解析
var urlencodedParser = bodyParser.urlencoded({extended:false});
const base_url = "http://" + config.IP + ":" + config.PORT + "/images/products/";
//获取产品数据
router.post("/",urlencodedParser,(req,res) => {

    var products = {
      "code":"0",
      "message":"success",
      "data":[
        {
          productId:"001",
          "imageUrl":base_url + "001/cover.jpg",
          "name":"文光塔",
        },
        {
          productId:"002",
          "imageUrl":base_url + "002/cover.jpg",
          "name":"海门炮台",
        },
        {
          productId:"003",
          "imageUrl":base_url + "003/cover.jpg",
          "name":"汕头大学",
        },
        {
          productId:"004",
          "imageUrl":base_url + "004/cover.jpg",
          "name":"南澳岛",
        },
      ]
  };

  res.send(products);



});

module.exports = router;