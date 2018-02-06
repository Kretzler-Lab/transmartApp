class MonitorController {

    def monitorService

    def index =  {
        def dbStatus = "UNKNOWN"
        try {
            dbStatus = monitorService.databaseStatus
        } catch (e) {
            dbStatus = "UNREACHABLE"
        }
        render(text: "Status: " + dbStatus)
    }

}
