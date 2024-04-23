<template>
	<el-header>
		<el-menu background-color="#00c292" text-color="#FFFFFF" active-text-color="#FFFFFF" mode="horizontal" style="display: block;height: 100%; margin-left: 200px;">
			<div class="fl title">{{this.$project.projectName}}</div>
			<div class="fr logout" style="display:flex;">
				<el-menu-time index="3">
					<el-avatar shape="square" size="large" :src="FileSrc" class="avatar" />
				</el-menu-time>
				<el-menu-item index="3">
					<div>{{this.$storage.get('role')}} {{this.$storage.get('adminName')}}</div>
				</el-menu-item>
				<el-menu-item @click="onLogout" index="2">
					<div>退出登录</div>
				</el-menu-item>
			</div>
		</el-menu>
	</el-header>
</template>

<script>
	export default {
		data() {
			return {
				dialogVisible: false,
				ruleForm: {},
				user: {},
				FileSrc: this.$base.url + this.$storage.get('avatar')
			};
		},
		mounted() {
			this.$http({
				url: `${this.$storage.get("sessionTable")}/session`,
				method: "get"
			}).then(({
				data
			}) => {
				if (data && data.code === 0) {
					this.user = data.data;
				} else {
					this.$message.error(data.msg);
				}
			});
		},
		methods: {
			onLogout() {
				this.$storage.remove("Token");
				this.$router.replace({
					name: "login"
				});
			}
		}
	};
</script>


<style lang="scss" scoped>
	.el-header .fr {
		float: right;
	}

	.el-header .fl {
		float: left;
	}

	.el-header {
		width: 100%;
		color: #333;
		text-align: center;
		line-height: 60px;
		padding: 0;
		
	}

	.avatar {
		width: 40px;
		height: 40px;
		background: #ffffff;
		margin-top: 10px;
		border-radius: 50%;
		vertical-align: 0;
	}

	.title {
		color: #ffffff;
		font-size: 20px;
		font-weight: bold;
		margin-left: 20px;
	}
</style>
