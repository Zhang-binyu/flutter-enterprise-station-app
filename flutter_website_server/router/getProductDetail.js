const express = require("express");
const router = express();
const config = require("./config");
var bodyParser = require('body-parser');
// 创建 application/x-www-form-urlencoded 编码解析
var urlencodedParser = bodyParser.urlencoded({extended:false});
const base_url = "http://" + config.IP + ":" + config.PORT + "/images/products/";
//获取产品详情数据
router.post("/",urlencodedParser,(req,res) => {
    var productId = req.body.productId;
    console.log(productId);

    //产品详情
    var detail_001 = {
		"code": "0",
		"message": "success",
		"data": {
			"productId": "001",
			"imageUrl":base_url + "001/1.jpg",
			"desc":'文光塔是广东省汕头市潮阳区一处清朝七层楼阁式石塔，位于中国广东省汕头市潮阳区中华路东侧，始建于公元1131年(宋绍兴元年)，经明、清三次倒塌重建及复建，现保持为为明代复建的样貌外观。 塔为楼阁式七层石塔，塔平面八角，塔高42.3米，塔腔为壁内折上式，登级可至塔厅，可登顶凭栏俯视。',
			"name":"文光塔",
			"productDetail": '<img width="100%" height="auto" alt="" src="' + base_url + '001/cover.jpg" />'
		}
	};

	var detail_002 = {
		"code": "0",
		"message": "success",
		"data": {
			"productId": "002",
			"imageUrl":base_url + "002/cover.jpg",
			"desc":'此处为海门南炮台，亦称莲花炮台，位于莲花峰望夫石西北侧；明隆庆三年（公元1569年），驻潮阳参将金丹设立莲花营（也叫细柳营），曾于此地抗击倭寇。清康熙五十六年（公元1717年），为防御海盗，清政府建此炮台，由三合土筑成，呈半圆状，直径约25米，设把总一名（周围有营舍，久废）。原四尊大炮被毁于1958年；1997年景区管理处对炮台进行修葺，仿制四尊生铁大炮陈列其中，供游人观瞻。',
			"name":"海门炮台",
			"productDetail": '<img width="100%" height="auto" alt="" src="' + base_url + '002/1.jpg" />'
		}
	};

	var detail_003 = {
		"code": "0",
		"message": "success",
		"data": {
			"productId": "003",
			"imageUrl":base_url + "003/cover.jpg",
			"desc":'汕头大学是1981年经国务院批准成立的广东省省属综合性大学，是教育部、广东省、李嘉诚基金会三方共建的高等院校，广东省高水平大学重点学科建设高校，广东省首家高等教育体制机制改革实验示范校，广东省深化新时代教育评价改革试点高校，也是全球唯一一所由私人基金会——李嘉诚基金会持续资助的公立大学。',
			"name":"汕头大学",
			"productDetail": '<img width="100%" height="auto" alt="" src="' + base_url + '003/1.jpg" />'
		}
	};

	var detail_004 = {
		"code": "0",
		"message": "success",
		"data": {
			"productId": "004",
			"imageUrl":base_url + "004/cover.jpg",
			"desc":'南澳岛（Nanao Dao），位于中国广东省汕头市南澳县，北濒柘林湾、南濒南海，介于东经116°56′~117°9′、北纬23°24′~23°29′，属基岩质大陆岛 [1-2] 。 南澳岛面积达117.73平方千米，海岸线长94.3千米，地处泉州—汕头地震带南端，分布有南澳—长乐断裂和皇岗断裂2条活动性断裂。',
			"name":"南澳岛",
			"productDetail": '<img width="100%" height="auto" alt="" src="' + base_url + '004/1.jpg" />'
		}
	};
    
    var productDetail = detail_001;
    if(productId == '001'){
        productDetail = detail_001;
    }else if(productId == '002'){
        productDetail = detail_002
    }else if(productId == '003'){
        productDetail = detail_003
    }else if(productId == '004'){
        productDetail = detail_004
    }
    res.send(productDetail);

});

module.exports = router;