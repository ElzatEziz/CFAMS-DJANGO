#coding:utf-8
__author__ = "ila"
from django.db import models
from .model import BaseModel
from datetime import datetime

class bumenguanliyuan(BaseModel):
	__doc__ = u'''bumenguanliyuan'''
	__tablename__ = 'bumenguanliyuan'
	__loginUser__='yonghuming'
	__authTables__={}
	__authPeople__='是'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
	__loginUserColumn__='yonghuming'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
	__sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面
	__authSeparate__='否'#后台列表权限
	__thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
	__intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
	__browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
	__foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
	__foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
	__isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
	addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
	yonghuming=models.CharField ( max_length=255,null=False, unique=False, verbose_name='用户名' )
	mima=models.CharField ( max_length=255,null=False, unique=False, verbose_name='密码' )
	xingming=models.CharField ( max_length=255,null=False, unique=False, verbose_name='姓名' )
	xingbie=models.CharField ( max_length=255,null=False, unique=False, verbose_name='性别' )
	zhaopian=models.CharField ( max_length=255,null=False, unique=False, verbose_name='照片' )
	bumen=models.CharField ( max_length=255,null=False, unique=False, verbose_name='部门' )
	lianxidianhua=models.CharField ( max_length=255,null=False, unique=False, verbose_name='联系电话' )
	class Meta:
		db_table = 'bumenguanliyuan'
		verbose_name = verbose_name_plural = '部门管理员'

class caiwuyuan(BaseModel):
	__doc__ = u'''caiwuyuan'''
	__tablename__ = 'caiwuyuan'
	__loginUser__='caiwugonghao'
	__authTables__={}
	__authPeople__='是'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
	__loginUserColumn__='caiwugonghao'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
	__sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面
	__authSeparate__='否'#后台列表权限
	__thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
	__intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
	__browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
	__foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
	__foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
	__isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
	addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
	caiwugonghao=models.CharField ( max_length=255,null=False, unique=False, verbose_name='财务工号' )
	mima=models.CharField ( max_length=255,null=False, unique=False, verbose_name='密码' )
	caiwuxingming=models.CharField ( max_length=255,null=False, unique=False, verbose_name='财务姓名' )
	touxiang=models.CharField ( max_length=255,null=False, unique=False, verbose_name='头像' )
	xingbie=models.CharField ( max_length=255,null=False, unique=False, verbose_name='性别' )
	zhiwei=models.CharField ( max_length=255,null=False, unique=False, verbose_name='职位' )
	shouji=models.CharField ( max_length=255,null=False, unique=False, verbose_name='手机' )
	class Meta:
		db_table = 'caiwuyuan'
		verbose_name = verbose_name_plural = '财务员'

class xiaojiguanliyuan(BaseModel):
	__doc__ = u'''xiaojiguanliyuan'''
	__tablename__ = 'xiaojiguanliyuan'
	__loginUser__='zhanghao'
	__authTables__={}
	__authPeople__='是'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
	__loginUserColumn__='zhanghao'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
	__sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面
	__authSeparate__='否'#后台列表权限
	__thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
	__intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
	__browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
	__foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
	__foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
	__isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
	addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
	zhanghao=models.CharField ( max_length=255,null=False, unique=False, verbose_name='账号' )
	mima=models.CharField ( max_length=255,null=False, unique=False, verbose_name='密码' )
	xingming=models.CharField ( max_length=255,null=False, unique=False, verbose_name='姓名' )
	zhaopian=models.CharField ( max_length=255,null=False, unique=False, verbose_name='照片' )
	xingbie=models.CharField ( max_length=255,null=False, unique=False, verbose_name='性别' )
	lianxidianhua=models.CharField ( max_length=255,null=False, unique=False, verbose_name='联系电话' )
	class Meta:
		db_table = 'xiaojiguanliyuan'
		verbose_name = verbose_name_plural = '校级管理员'

class bumen(BaseModel):
	__doc__ = u'''bumen'''
	__tablename__ = 'bumen'
	__authTables__={}
	__authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
	__sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
	__authSeparate__='否'#后台列表权限
	__thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
	__intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
	__browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
	__foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
	__foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
	__isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的记录(同时应用于其他表)
	addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
	bumen=models.CharField ( max_length=255,null=False, unique=False, verbose_name='部门' )
	class Meta:
		db_table = 'bumen'
		verbose_name = verbose_name_plural = '部门'

class shengouruku(BaseModel):
	__doc__ = u'''shengouruku'''
	__tablename__ = 'shengouruku'
	__authTables__={'caiwugonghao':'caiwuyuan',}
	__authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
	__sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
	__authSeparate__='否'#后台列表权限
	__thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
	__intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
	__browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
	__foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
	__foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
	__isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
	addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
	rukubianhao=models.CharField ( max_length=255,null=False, unique=False, verbose_name='入库编号' )
	zichanmingcheng=models.CharField ( max_length=255,null=False, unique=False, verbose_name='资产名称' )
	zichanleixing=models.CharField ( max_length=255,null=False, unique=False, verbose_name='资产类型' )
	zichantupian=models.CharField ( max_length=255,null=False, unique=False, verbose_name='资产图片' )
	caigoujiaqian=models.IntegerField  (  null=True, unique=False,verbose_name='采购价钱' )
	zichanshuliang=models.IntegerField  (  null=True, unique=False,verbose_name='资产数量' )
	caigoujine=models.IntegerField  (  null=True, unique=False,verbose_name='采购金额' )
	rukuriqi=models.DateField   (  null=True, unique=False, verbose_name='入库日期' )
	rukushuoming=models.TextField   ( null=False, unique=False, verbose_name='入库说明' )
	caiwugonghao=models.CharField ( max_length=255,null=False, unique=False, verbose_name='财务工号' )
	caiwuxingming=models.CharField ( max_length=255,null=False, unique=False, verbose_name='财务姓名' )
	class Meta:
		db_table = 'shengouruku'
		verbose_name = verbose_name_plural = '申购入库'

class weixiufushen(BaseModel):
	__doc__ = u'''weixiufushen'''
	__tablename__ = 'weixiufushen'
	__authTables__={'yonghuming':'bumenguanliyuan',}
	__authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
	__sfsh__='是'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
	__authSeparate__='否'#后台列表权限
	__thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
	__intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
	__browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
	__foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
	__foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
	__isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
	addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
	zichanmingcheng=models.CharField ( max_length=255,null=False, unique=False, verbose_name='资产名称' )
	zichanleixing=models.CharField ( max_length=255,null=False, unique=False, verbose_name='资产类型' )
	zichanpinpai=models.CharField ( max_length=255,null=False, unique=False, verbose_name='资产品牌' )
	zichanshuliang=models.IntegerField  (  null=True, unique=False,verbose_name='资产数量' )
	baoxiushuliang=models.IntegerField  (  null=True, unique=False,verbose_name='报修数量' )
	baoxiushuoming=models.TextField   ( null=False, unique=False, verbose_name='报修说明' )
	fushenriqi=models.DateField   (  null=True, unique=False, verbose_name='复审日期' )
	yonghuming=models.CharField ( max_length=255,null=False, unique=False, verbose_name='用户名' )
	bumen=models.CharField ( max_length=255,null=False, unique=False, verbose_name='部门' )
	lianxidianhua=models.CharField ( max_length=255,null=False, unique=False, verbose_name='联系电话' )
	sfsh=models.CharField ( max_length=255,null=False, unique=False, verbose_name='是否审核' )
	shhf=models.TextField   ( null=False, unique=False, verbose_name='审核回复' )
	class Meta:
		db_table = 'weixiufushen'
		verbose_name = verbose_name_plural = '维修复审'

class zichanbaofei(BaseModel):
	__doc__ = u'''zichanbaofei'''
	__tablename__ = 'zichanbaofei'
	__authTables__={'yonghuming':'bumenguanliyuan',}
	__authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
	__sfsh__='是'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
	__authSeparate__='否'#后台列表权限
	__thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
	__intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
	__browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
	__foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
	__foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
	__isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
	addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
	baofeibianhao=models.CharField ( max_length=255,null=False, unique=False, verbose_name='报废编号' )
	zichanmingcheng=models.CharField ( max_length=255,null=False, unique=False, verbose_name='资产名称' )
	zichantupian=models.CharField ( max_length=255,null=False, unique=False, verbose_name='资产图片' )
	zichanshuliang=models.IntegerField  (  null=True, unique=False,verbose_name='资产数量' )
	shenqingriqi=models.DateField   (  null=True, unique=False, verbose_name='申请日期' )
	baofeishuoming=models.TextField   ( null=False, unique=False, verbose_name='报废说明' )
	yonghuming=models.CharField ( max_length=255,null=False, unique=False, verbose_name='用户名' )
	bumen=models.CharField ( max_length=255,null=False, unique=False, verbose_name='部门' )
	xingming=models.CharField ( max_length=255,null=False, unique=False, verbose_name='姓名' )
	sfsh=models.CharField ( max_length=255,null=False, unique=False, verbose_name='是否审核' )
	shhf=models.TextField   ( null=False, unique=False, verbose_name='审核回复' )
	class Meta:
		db_table = 'zichanbaofei'
		verbose_name = verbose_name_plural = '资产报废'

class zichanchuku(BaseModel):
	__doc__ = u'''zichanchuku'''
	__tablename__ = 'zichanchuku'
	__authTables__={'yonghuming':'bumenguanliyuan',}
	__authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
	__sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
	__authSeparate__='否'#后台列表权限
	__thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
	__intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
	__browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
	__foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
	__foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
	__isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
	addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
	chukubianhao=models.CharField ( max_length=255,null=False, unique=False, verbose_name='出库编号' )
	zichanmingcheng=models.CharField ( max_length=255,null=False, unique=False, verbose_name='资产名称' )
	zichanleixing=models.CharField ( max_length=255,null=False, unique=False, verbose_name='资产类型' )
	zichanpinpai=models.CharField ( max_length=255,null=False, unique=False, verbose_name='资产品牌' )
	zichantupian=models.CharField ( max_length=255,null=False, unique=False, verbose_name='资产图片' )
	zichanshuliang=models.IntegerField  (  null=True, unique=False,verbose_name='资产数量' )
	chukuriqi=models.DateField   (  null=True, unique=False, verbose_name='出库日期' )
	chukushuoming=models.TextField   ( null=False, unique=False, verbose_name='出库说明' )
	yonghuming=models.CharField ( max_length=255,null=False, unique=False, verbose_name='用户名' )
	bumen=models.CharField ( max_length=255,null=False, unique=False, verbose_name='部门' )
	xingming=models.CharField ( max_length=255,null=False, unique=False, verbose_name='姓名' )
	class Meta:
		db_table = 'zichanchuku'
		verbose_name = verbose_name_plural = '资产出库'

class zichandiaobo(BaseModel):
	__doc__ = u'''zichandiaobo'''
	__tablename__ = 'zichandiaobo'
	__authTables__={'yonghuming':'bumenguanliyuan',}
	__authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
	__sfsh__='是'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
	__authSeparate__='否'#后台列表权限
	__thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
	__intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
	__browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
	__foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
	__foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
	__isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
	addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
	tiaobobianhao=models.CharField ( max_length=255,null=False, unique=False, verbose_name='挑拨编号' )
	zichanmingcheng=models.CharField ( max_length=255,null=False, unique=False, verbose_name='资产名称' )
	zichanleixing=models.CharField ( max_length=255,null=False, unique=False, verbose_name='资产类型' )
	zichanpinpai=models.CharField ( max_length=255,null=False, unique=False, verbose_name='资产品牌' )
	zichanshuliang=models.IntegerField  (  null=True, unique=False,verbose_name='资产数量' )
	diaoboshuliang=models.IntegerField  (  null=True, unique=False,verbose_name='调拨数量' )
	shenqingriqi=models.DateField   (  null=True, unique=False, verbose_name='申请日期' )
	shenqingneirong=models.TextField   ( null=False, unique=False, verbose_name='申请内容' )
	yonghuming=models.CharField ( max_length=255,null=False, unique=False, verbose_name='用户名' )
	xingming=models.CharField ( max_length=255,null=False, unique=False, verbose_name='姓名' )
	bumen=models.CharField ( max_length=255,null=False, unique=False, verbose_name='部门' )
	lianxidianhua=models.CharField ( max_length=255,null=False, unique=False, verbose_name='联系电话' )
	sfsh=models.CharField ( max_length=255,null=False, unique=False, verbose_name='是否审核' )
	shhf=models.TextField   ( null=False, unique=False, verbose_name='审核回复' )
	class Meta:
		db_table = 'zichandiaobo'
		verbose_name = verbose_name_plural = '资产调拨'

class zichanleixing(BaseModel):
	__doc__ = u'''zichanleixing'''
	__tablename__ = 'zichanleixing'
	__authTables__={}
	__authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
	__sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
	__authSeparate__='否'#后台列表权限
	__thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
	__intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
	__browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
	__foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
	__foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
	__isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
	addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
	zichanleixing=models.CharField ( max_length=255,null=False, unique=False, verbose_name='资产类型' )
	class Meta:
		db_table = 'zichanleixing'
		verbose_name = verbose_name_plural = '资产类型'

class zichanpandian(BaseModel):
	__doc__ = u'''zichanpandian'''
	__tablename__ = 'zichanpandian'
	__authTables__={}
	__authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
	__sfsh__='是'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
	__authSeparate__='否'#后台列表权限
	__thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
	__intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
	__browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
	__foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
	__foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
	__isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
	addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
	zichanmingcheng=models.CharField ( max_length=255,null=False, unique=False, verbose_name='资产名称' )
	zichanleixing=models.CharField ( max_length=255,null=False, unique=False, verbose_name='资产类型' )
	zichanpinpai=models.CharField ( max_length=255,null=False, unique=False, verbose_name='资产品牌' )
	zichanshuliang=models.IntegerField  (  null=True, unique=False,verbose_name='资产数量' )
	pandianshuliang=models.IntegerField  (  null=True, unique=False,verbose_name='盘点数量' )
	pandianqingkuang=models.CharField ( max_length=255,null=False, unique=False, verbose_name='盘点情况' )
	pandianshuoming=models.TextField   ( null=False, unique=False, verbose_name='盘点说明' )
	pandianriqi=models.DateField   (  null=True, unique=False, verbose_name='盘点日期' )
	sfsh=models.CharField ( max_length=255,null=False, unique=False, verbose_name='是否审核' )
	shhf=models.TextField   ( null=False, unique=False, verbose_name='审核回复' )
	class Meta:
		db_table = 'zichanpandian'
		verbose_name = verbose_name_plural = '资产盘点'

class zichanshengou(BaseModel):
	__doc__ = u'''zichanshengou'''
	__tablename__ = 'zichanshengou'
	__authTables__={'zhanghao':'xiaojiguanliyuan',}
	__authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
	__sfsh__='是'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
	__authSeparate__='否'#后台列表权限
	__thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
	__intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
	__browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
	__foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
	__foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
	__isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
	addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
	zichanmingcheng=models.CharField ( max_length=255,null=False, unique=False, verbose_name='资产名称' )
	zichanleixing=models.CharField ( max_length=255,null=False, unique=False, verbose_name='资产类型' )
	zichanpinpai=models.CharField ( max_length=255,null=False, unique=False, verbose_name='资产品牌' )
	zichanshuliang=models.IntegerField  (  null=True, unique=False,verbose_name='资产数量' )
	shengoushuliang=models.IntegerField  (  null=True, unique=False,verbose_name='申购数量' )
	shengoushuoming=models.TextField   ( null=False, unique=False, verbose_name='申购说明' )
	shengouriqi=models.DateField   (  null=True, unique=False, verbose_name='申购日期' )
	zhanghao=models.CharField ( max_length=255,null=False, unique=False, verbose_name='账号' )
	sfsh=models.CharField ( max_length=255,null=False, unique=False, verbose_name='是否审核' )
	shhf=models.TextField   ( null=False, unique=False, verbose_name='审核回复' )
	class Meta:
		db_table = 'zichanshengou'
		verbose_name = verbose_name_plural = '资产申购'

class zichanweixiu(BaseModel):
	__doc__ = u'''zichanweixiu'''
	__tablename__ = 'zichanweixiu'
	__authTables__={'yonghuming':'bumenguanliyuan',}
	__authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
	__sfsh__='是'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
	__authSeparate__='否'#后台列表权限
	__thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
	__intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
	__browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
	__foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
	__foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
	__isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
	addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
	zichanmingcheng=models.CharField ( max_length=255,null=False, unique=False, verbose_name='资产名称' )
	zichanleixing=models.CharField ( max_length=255,null=False, unique=False, verbose_name='资产类型' )
	zichanpinpai=models.CharField ( max_length=255,null=False, unique=False, verbose_name='资产品牌' )
	zichanshuliang=models.IntegerField  (  null=True, unique=False,verbose_name='资产数量' )
	baoxiushuliang=models.IntegerField  (  null=True, unique=False,verbose_name='报修数量' )
	baoxiushuoming=models.TextField   ( null=False, unique=False, verbose_name='报修说明' )
	xiaojishenhe=models.CharField ( max_length=255,null=False, unique=False, verbose_name='校级审核' )
	baoxiuriqi=models.DateField   (  null=True, unique=False, verbose_name='报修日期' )
	yonghuming=models.CharField ( max_length=255,null=False, unique=False, verbose_name='用户名' )
	bumen=models.CharField ( max_length=255,null=False, unique=False, verbose_name='部门' )
	lianxidianhua=models.CharField ( max_length=255,null=False, unique=False, verbose_name='联系电话' )
	sfsh=models.CharField ( max_length=255,null=False, unique=False, verbose_name='是否审核' )
	shhf=models.TextField   ( null=False, unique=False, verbose_name='审核回复' )
	class Meta:
		db_table = 'zichanweixiu'
		verbose_name = verbose_name_plural = '资产维修'

class zichanxinxi(BaseModel):
	__doc__ = u'''zichanxinxi'''
	__tablename__ = 'zichanxinxi'
	__authTables__={}
	__authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
	__sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
	__authSeparate__='否'#后台列表权限
	__thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
	__intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
	__browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
	__foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
	__foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
	__isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
	addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
	zichanmingcheng=models.CharField ( max_length=255,null=False, unique=False, verbose_name='资产名称' )
	zichanleixing=models.CharField ( max_length=255,null=False, unique=False, verbose_name='资产类型' )
	zichantupian=models.CharField ( max_length=255,null=False, unique=False, verbose_name='资产图片' )
	zichanpinpai=models.CharField ( max_length=255,null=False, unique=False, verbose_name='资产品牌' )
	zichanzhuangtai=models.CharField ( max_length=255,null=False, unique=False, verbose_name='资产状态' )
	zichanshuliang=models.IntegerField  (  null=True, unique=False,verbose_name='资产数量' )
	zichanshuoming=models.TextField   ( null=False, unique=False, verbose_name='资产说明' )
	class Meta:
		db_table = 'zichanxinxi'
		verbose_name = verbose_name_plural = '资产信息'
