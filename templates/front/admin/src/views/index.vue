<template>
	<el-container>
		<el-header style="padding: 0;" class="fixed-header"><index-header></index-header></el-header>
		<el-container>
			<el-aside style="width: 200px;" class="fixed-aside"><index-aside></index-aside></el-aside>
			<el-main style="padding-left: 200px; padding-top: 80px;"><index-main></index-main></el-main>
		</el-container>
	</el-container>
	
</template>
<script>
	import IndexHeader from '@/components/index/IndexHeader'
	import IndexAside from '@/components/index/IndexAsideStatic'
	import IndexMain from '@/components/index/IndexMain'
	export default {
		components: {
			IndexHeader,
			IndexAside,
			IndexMain
		}
	}
</script>

<style lang="scss" scoped>
	// 铺满全屏
	// .el-container {
	// 	position: absolute;
	// 	width: 100%;
	// 	top: 0;
	// 	left: 0;
	// 	bottom: 0;
	// }
	.fixed-header{
		position: fixed;
		top: 0;
		left: 0;
		right: 0;
		z-index: 1000; // Ensure it's above other content
	}
	.fixed-aside{
		position: fixed;
		top: 0;
		left: 0;
		bottom: 0;
		z-index: 1000; // Ensure it's above other content
	}
</style>

