import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import homePage from '@/views/homePage.vue';
// import pay from '@/views/pay'
// import register from '@/views/register'
import center from '@/views/center'
import zichandiaobo from '@/views/modules/zichandiaobo/list'
import caiwuyuan from '@/views/modules/caiwuyuan/list'
import zichanshengou from '@/views/modules/zichanshengou/list'
import zichanxinxi from '@/views/modules/zichanxinxi/list'
import zichanleixing from '@/views/modules/zichanleixing/list'
import xiaojiguanliyuan from '@/views/modules/xiaojiguanliyuan/list'
import zichanpandian from '@/views/modules/zichanpandian/list'
import zichanweixiu from '@/views/modules/zichanweixiu/list'
import zichanbaofei from '@/views/modules/zichanbaofei/list'
import bumen from '@/views/modules/bumen/list'
import shengouruku from '@/views/modules/shengouruku/list'
import zichanchuku from '@/views/modules/zichanchuku/list'
import bumenguanliyuan from '@/views/modules/bumenguanliyuan/list'
import weixiufushen from '@/views/modules/weixiufushen/list'


//2.配置路由   注意：名字
const routes = [
  {
    path: '/',
    name: '首页',
    component: homePage,
},{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    },
    // , {
    //   path: '/pay',
    //   name: '支付',
    //   component: pay,
    //   meta: {icon:'', title:'pay'}
    // },
     {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
      ,{
	path: '/zichandiaobo',
        name: '资产调拨',
        component: zichandiaobo
      }
      ,{
	path: '/caiwuyuan',
        name: '财务员',
        component: caiwuyuan
      }
      ,{
	path: '/zichanshengou',
        name: '资产申购',
        component: zichanshengou
      }
      ,{
	path: '/zichanxinxi',
        name: '资产信息',
        component: zichanxinxi
      }
      ,{
	path: '/zichanleixing',
        name: '资产类型',
        component: zichanleixing
      }
      ,{
	path: '/xiaojiguanliyuan',
        name: '校级管理员',
        component: xiaojiguanliyuan
      }
      ,{
	path: '/zichanpandian',
        name: '资产盘点',
        component: zichanpandian
      }
      ,{
	path: '/zichanweixiu',
        name: '资产维修',
        component: zichanweixiu
      }
      ,{
	path: '/zichanbaofei',
        name: '资产报废',
        component: zichanbaofei
      }
      ,{
	path: '/bumen',
        name: '部门',
        component: bumen
      }
      ,{
	path: '/shengouruku',
        name: '申购入库',
        component: shengouruku
      }
      ,{
	path: '/zichanchuku',
        name: '资产出库',
        component: zichanchuku
      }
      ,{
	path: '/bumenguanliyuan',
        name: '部门管理员',
        component: bumenguanliyuan
      }
      ,{
	path: '/weixiufushen',
        name: '维修复审',
        component: weixiufushen
      }
    ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  // {
  //   path: '/register',
  //   name: 'register',
  //   component: register,
  //   meta: {icon:'', title:'register'}
  // },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})

export default router;
