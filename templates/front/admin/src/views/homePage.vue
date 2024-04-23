<template>
    <div>
      <el-container>
        <el-header>
          <el-menu :default-active="activeIndex" mode="horizontal">
            <el-menu-item index="1"><span style="color: green; font-size: 23px;">校园固定资产管理系统</span></el-menu-item>
            <el-button type="text" class="login-button" @click="loginBtn()">登录</el-button>
          </el-menu>
        </el-header>
        <el-main>
          <el-carousel :interval="5000" height="500px" >
            <el-carousel-item style="display: flex; align-items: center; justify-content: center;" >
              <img src="../../src/assets/img/zichan1.webp" alt=""  style="width: 1000px; height: 500px;">
            </el-carousel-item>
            <el-carousel-item style="display: flex; align-items: center; justify-content: center;" >
              <img src="../../src/assets/img/zichan2.png" alt="">
            </el-carousel-item>
            <el-carousel-item style="display: flex; align-items: center; justify-content: center;" >
              <img src="../../src/assets/img/zichan3.png" alt="">
            </el-carousel-item>
          </el-carousel>

          <div class="title-box" >
            <el-card style="width: 480px" shadow="always" class="biaoti"><h1>固定资产的介绍</h1></el-card>
        </div>
           <!-- 第一部分 -->
        <el-row type="flex" justify="space-between" class="row-bg">
            <el-col :span="10">
                <div class="media-block">
                <img src="../../src/assets/img/gudingzichantu.webp" alt="image description" class="media-image">
                </div>
            </el-col>
            <el-col :span="14">
                <div class="text-content">
                <h2>校园固定资产介绍</h2>
                <p>校园固定资产管理系统是一种专门为教育机构设计的软件，旨在帮助学校高效管理其固定资产，如教学设备、图书馆藏书、实验材料以及校园基础设施等。这种系统通常包括资产登记、分类、跟踪和维护等功能，使校园管理者能够准确掌握资产的状态和位置，优化资源配置，延长资产使用寿命。</p>
                </div>
            </el-col>
        </el-row>

        <div class="title-box" >
            <el-card style="width: 480px" shadow="always" class="biaoti"><h1>拥有的功能</h1></el-card>
        </div>
        <!-- 第二部分 -->
        <el-row type="flex" justify="center" class="icon-row">
        <!-- 重复el-col并填充图标和文本 -->
            <el-col :span="4" class="icon-col">
                <i class="el-icon-files"></i>
                <p>资产类型</p>
            </el-col>
            <el-col :span="4" class="icon-col">
                <i class="el-icon-s-order"></i>
                <p>资产信息</p>
            </el-col>
            <el-col :span="4" class="icon-col">
                <i class="el-icon-s-release"></i>
                <p>资产报废</p>
            </el-col>
        </el-row>
        <el-row type="flex" justify="center" class="icon-row">
            <el-col :span="4" class="icon-col">
                <i class="el-icon-shopping-cart-2"></i>
                <p>资产申购</p>
            </el-col>
            <el-col :span="4" class="icon-col">
                <i class="el-icon-refresh"></i>
                <p>资产维修</p>
            </el-col>
            <el-col :span="4" class="icon-col">
                <i class="el-icon-coin"></i>
                <p>资产出入库</p>
            </el-col>
            <el-col :span="4" class="icon-col">
                <i class="el-icon-top-right"></i>
                <p>资产调拨</p>
            </el-col>
            <el-col :span="4" class="icon-col">
                <i class="el-icon-s-data"></i>
                <p>资产报表</p>
            </el-col>
        </el-row>
       

        <!-- 第三部分 -->
        <!-- 类似于第一部分，根据需求调整布局和内容 -->
        <div class="title-box" >
            <el-card style="width: 480px" shadow="always" class="biaoti"><h1>拥有的账号及权限</h1></el-card>
        </div>
        <el-row :gutter="20" type="flex">
            <el-col :span="8"  >
              <el-card class="box-card" shadow="hover">
                <div slot="header" class="clearfix">
                  <span>管理员</span>
                </div>
                <div class="text">
                  <p>
                    管理人员可以对用户进行增删改查，可以录入资产信息，资产复审等操作，拥有查看所有功能的权限。
                  </p>
                </div>
              </el-card>
            </el-col>
            <el-col :span="8" >
              <el-card class="box-card" shadow="hover">
                <div slot="header" class="clearfix">
                  <span>财务员</span>
                </div>
                <div class="text">
                  <p>财务员负责审核申购、购买的资产入库、审核资产盘点，可以查看资产的信息，但并不能增删资产信息</p>
                </div>
              </el-card>
            </el-col>
            <el-col :span="8" >
              <el-card class="box-card" shadow="hover">
                <div slot="header" class="clearfix">
                  <span>校级人员</span>
                </div>
                <div class="text">
                  <p>
                    校级人员负责资产出库、资产调拨审批、资产报废审核等功能，可以查看资产信息，但是不能增删资产信息。
                  </p>
                </div>
              </el-card>
            </el-col>
            <el-col :span="8" >
              <el-card class="box-card" shadow="hover">
                <div slot="header" class="clearfix">
                  <span>部门管理员</span>
                </div>
                <div class="text">
                 <p> 校级人员负责资产出库、资产调拨审批、资产报废审核等功能，可以查看资产信息，但是不能增删资产信息。</p>
                </div>
              </el-card>
            </el-col>
          </el-row>
        </el-main>


        <el-footer class="footer" style="height: 100%;">
            <el-row>
            <el-col :span="8">
                <div class="footer-section">
                <h3>关于我们</h3>
                <p>想要了解学校的其他内容，请点击下面的链接</p>
                <el-link type="primary" href="https://www.xjau.edu.cn">信息链接</el-link>
                </div>
            </el-col>
            <el-col :span="8">
                <div class="footer-section">
                <h3>申请账号</h3>
                <p>Email: Elzat_Eziz@163.com</p>
                <p>Phone: +86 181 6021 6036</p>
                </div>
            </el-col>
            <el-col :span="8">
                <div class="footer-section">
                <h3>Legal</h3>
                <el-link type="warning" style="margin-right: 10px;">隐私政策</el-link>
                <el-link type="warning">使用条款</el-link>
                </div>
            </el-col>
            </el-row>
            <div class="footer-copy">
            © 2024 XJAU.ELZAT. All Rights Reserved.
            </div>
        </el-footer>
      </el-container>
    </div>
  </template>
  
  <script>
  export default {
    name: 'homePage',
    data() {
      return {
        activeIndex: '1'
      }
    },
    methods:{
        loginBtn(){
            this.$router.push({name: 'login'})
        }
    }
  }
  </script>
  
  <style>

  .el-header, .el-footer {
    background-color: #B3C0D1;
    color: #333;
    text-align: center;
    line-height: 60px;
    padding: 0;

   .el-menu{
   display: flex;
    justify-content: space-between;
   }
  }
  
  .el-row {
    margin-bottom: 20px;
    &:last-child {
      margin-bottom: 0;
    }
  }
  
  .el-col {
    border-radius: 4px;
  }
  
  .box-card {
    padding: 30px 40px;
    height: 200px;
    span{
        font-size: 20px;
        color: lightpink;
    }
    p{
        font-size: 14px;
        color: #666; /* 文本颜色 */
    }
  }
  
  .text {
    font-size: 14px;
  }
  .el-menu {
  justify-content: space-between;
  align-items: center;
}

.login-button {
    float: right;
    margin-right: 20px;
  font-size: 30px;

}
.row-bg {
  background-color: #f5f5f5; /* 用于区分行的背景色 */
}

.media-block {
  padding: 20px; /* 内边距 */
}

.media-image {
  width: 100%; /* 图片宽度 */
  height: 400px; /* 图片高度 */
}

.text-content {
  padding: 20px; /* 内边距 */
  p {
  margin-bottom: 10px; /* 段落下边距 */
  color: #666; /* 文本颜色 */
  font-size: 24px;
}
}

h2 {
  margin-bottom: 40px; /* 标题下边距 */
  font-size: 30px;
}

.title-box{
    display: flex;
    align-items: center;
    justify-content: center;
    margin: 50px;
    
    .biaoti{
    display: flex;
    align-items: center;
    justify-content: center;
}
}


.icon-row {
  padding: 20px 0; /* 图标行的垂直内边距 */
  i{
    font-size: 60px;
    color: green;
  }
  p{
    font-size: 20px;
  }
}

.icon-col {
  text-align: center; /* 图标列的文本居中 */
}

.icon-class-name {
  font-size: 2em; /* 图标大小 */
  margin-bottom: 10px; /* 图标下的边距 */
}
.footer {
  background-color: #333;
  color: white;
  padding: 20px 0;
}

.footer-section h3 {
  color: #fff;
  margin-bottom: 10px;
}

.footer-section p {
  font-size: 14px;
  color: #aaa;
  line-height: 1.5;
}

.footer-copy {
  text-align: center;
  margin-top: 20px;
  font-size: 14px;
  color: #aaa;
}
  </style>
  