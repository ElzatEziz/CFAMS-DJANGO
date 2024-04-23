const base = {
    get() {
        return {
            url : "http://localhost:8080/CFAMSDB/",
            name: "CFAMSDB",
            // 退出到首页链接
            indexUrl: ''
        };
    },
    getProjectName(){
        return {
            projectName: "高校固定资产管理系统"
        } 
    }
}
export default base
