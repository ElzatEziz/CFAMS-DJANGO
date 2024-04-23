<template>
  <div>
      <div class="container loginIn">
      <div :class="2 == 1 ? 'left' : 2 == 2 ? 'left center' : 'left right'">
        <el-form class="login-form" label-position="left" :label-width="1 == 3 || 1 == 2 ? '30px': '0px'">
          <div class="title-container"><h3 class="title">高校固定资产管理系统</h3></div>
          <el-form-item :label="1 == 3 ? '用户名' : ''" :class="'style'+1">
            <el-input placeholder="请输入用户名" name="username" type="text" v-model="rulesForm.username"/>
          </el-form-item>
          <el-form-item :label="1 == 3 ? '密码' : ''" :class="'style'+1">
            <el-input placeholder="请输入密码" name="password" type="password" v-model="rulesForm.password" />
          </el-form-item>
          <el-form-item prop="loginInRole" class="role" style="display: flex;align-items: center;">
            <el-radio
              v-for="item in menus"
	            v-if="item.hasBackLogin=='是'"
              v-bind:key="item.roleName"
              v-model="rulesForm.role"
              :label="item.roleName"
            >{{item.roleName}}</el-radio>
          </el-form-item>
          <el-button type="primary" @click="login()" class="loginInBt">{{'1' == '1' ? '登录' : 'login'}}</el-button>
        </el-form>
      </div>

    </div>
  </div>
</template>
<script>

import menu from "@/utils/menu";

export default {
  data() {
    return {
      rulesForm: {
        username: "",
        password: "",
        role: "",
        code: '',
      },
      menus: [],
      tableName: "",
      codes: [{
        num: 1,
        color: '#000',
        rotate: '10deg',
        size: '16px'
      },{
        num: 2,
        color: '#000',
        rotate: '10deg',
        size: '16px'
      },{
        num: 3,
        color: '#000',
        rotate: '10deg',
        size: '16px'
      },{
        num: 4,
        color: '#000',
        rotate: '10deg',
        size: '16px'
      }],
    };
  },
  mounted() {
	let menus = menu.list();
	this.menus = menus;
	},
  methods: {
    login() {
      if (!this.rulesForm.username) {
         this.$message.error("请输入用户名");
        return;
      }
      if (!this.rulesForm.password) {
         this.$message.error("请输入密码");
        return;
      }
      if (!this.rulesForm.role) {
         this.$message.error("请选择角色");
        return;
      }
      let menus = this.menus;
      for (let i = 0; i < menus.length; i++) {
        if (menus[i].roleName == this.rulesForm.role) {
          this.tableName = menus[i].tableName;
        }
      }
      this.$http({
        url: `${this.tableName}/login?username=${this.rulesForm.username}&password=${this.rulesForm.password}`,
        method: "post"
      }).then(({ data }) => {
        if (data && data.code === 0) {
          console.log(data)
          this.$storage.set("Token", data.token);
          this.$storage.set("avatar",data.avatar)
          this.$storage.set("role", this.rulesForm.role);
          this.$storage.set("sessionTable", this.tableName);
          this.$storage.set("adminName", this.rulesForm.username);
          this.$router.replace({ path: "/index/" });
        } else {
          this.$message.error(data.msg);
        }
      });
    },
  }
};
</script>
<style lang="scss" scoped>
.loginIn {
  min-height: 100vh;
  position: relative;
  background-repeat: no-repeat;
  background-position: center center;
  background-size: cover;
  background-image: url(../assets/img/bg.jpg);


  .loginInBt {
    width: 100%;
      border: none;
      border-radius: 5px;
      background-color: rgba(255, 255, 255, 0.3); // 按钮背景透明
      color: #FFF; // 白色文字
      line-height: 40px; // 增加行高
      margin-top: 20px; // 顶部间距

      &:hover {
        background-color: rgba(255, 255, 255, 0.5); // 悬浮时背景更明亮
      }
    }

  .left {
    left: 0;
    top: 0;
    box-sizing: border-box;
    width: 400px;
    height: 500px;
    padding: 0 ;
    border-radius: 30px;
    background: rgba(255, 255, 255, 0.2); // 透明背景
    backdrop-filter: blur(5px); // 模糊效果
    border: 1px solid rgba(255, 255, 255, 0.3); // 边框增加亮度
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); // 细微阴影效果
    transition: all 0.3s ease;

    .login-form{
      position: relative;
      background-color: transparent;
      width: 100%;
      right: inherit;
      padding: 4;
      box-sizing: border-box;
      display: flex;
      justify-content: center;
      flex-direction: column;
    }

    .title-container {
      text-align: center;
      font-size: 24px;
      margin-bottom: 2rem;
      color: #FFF; // 白色标题

      .title {
        width: 100%;
        line-height: 30px;
        padding: 0;
        color: rgb(0, 0, 0);
        margin-bottom: 2rem;
        color: #FFF; // 白色标题
        font-size: 24px;
        border-radius: 0;
        border-width: 0;
        border-style: solid;
        border-color: rgba(0,0,0,.3);
        background-color: rgba(0,0,0,0);
        box-shadow: 0 0 6px rgba(0,0,0,0);
      }
    }

    .el-form-item {
      margin-bottom: 1rem;

       .el-form-item__content {
        line-height: initial;
       
      }
      
    .el-radio__label {
    width: auto;
    height: 14px;
    line-height: 14px;
    margin: 0;
    padding: 0 0 0 10px;
    color: #fff;
    font-size: 14px;
    border-radius: 0;
    border-width: 0;
    border-style: solid;
    border-color: rgba(255, 255, 255, 0);
    background-color: rgba(255, 255, 255, 0);
    box-shadow: 0 0 6px rgba(255,0,0,0);
    text-align: left;
  }
    .el-radio.is-checked .el-radio__label {
    width: auto;
    height: 14px;
    line-height: 14px;
    margin: 0;
    padding: 0 0 0 10px;
    color: rgba(245, 182, 27, 1);
    font-size: 14px;
    border-radius: 0;
    border-width: 0;
    border-style: solid;
    border-color: rgba(255, 255, 255, 0);
    background-color: rgba(255, 255, 255, 0);
    box-shadow: 0 0 6px rgba(255,0,0,0);
    text-align: left;
  }
    .el-radio__inner {
    width: 14px;
    height: 14px;
    margin: 0;
    padding: 0;
    border-radius: 100%;
    border-width: 1px;
    border-style: solid;
    border-color: #dcdfe6;
    background-color: rgba(255, 255, 255, 1);
    box-shadow: 0 0 6px rgba(255,0,0,0);
  }
    .el-radio.is-checked .el-radio__inner {
    width: 14px;
    height: 14px;
    margin: 0;
    padding: 0;
    border-radius: 100%;
    border-width: 1.5px;
    border-style: solid;
    border-color: rgba(255, 255, 255, 1);
    background-color: rgba(245, 182, 27, 1);
    box-shadow: 0 0 6px rgba(255,0,0,0);
  }
  }
  }

  .center {
    position: absolute;
    left: 50%;
    top: 50%;
    transform: translate3d(-50%,-50%,0);
  }

  .el-form-item__label {
	width: 50px;
	height: 30px;
	line-height: 30px;
	margin: 0;
	padding: 1;
	color: rgba(255, 255, 255, 1);
	font-size: 14px;
	border-radius: 0;
	border-width: 0;
	border-style: solid;
	border-color: rgba(0,0,0,0);
	background-color: rgba(0,0,0,0);
	box-shadow: 0 0 6px rgba(0,0,0,0);
  }

  .role {
     .el-form-item__label {
      width: 56px ;
      height: 38px;
      line-height: 38px;
      margin: 0;
      padding: 0;
      color: rgba(255, 255, 255, 1);
      font-size: 14px;
      border-radius: 0;
      border-width: 0;
      border-style: solid;
      border-color: rgba(64, 158, 255, 1);
      background-color: rgba(255, 255, 255, 0);
      box-shadow: 0 0 6px rgba(255,0,0,0);
      text-align: left;
    }

     .el-radio {
      margin-right: 12px;
    }
  }
}
</style>
