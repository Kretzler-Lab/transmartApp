class MonitorController {

    def monitorService
    def rserveStatusService
    def solrStatusService

    def index =  {
        def dbStatus = "UNKNOWN"
        def errorMessage = ""
        def observationCount = 0
        def loadedStudies = ""
        def nephDataAttestationExists = false

        try {
            observationCount = monitorService.observationCount
            dbStatus = (observationCount > 0) ? "OK" : "NO DATA"
            nephDataAttestationExists = monitorService.nephDataAttestationExists
            loadedStudies = monitorService.loadedStudies
        } catch (e) {
            dbStatus = "ERROR"
            errorMessage = e.getMessage()
        }

        render(text: "App Version: " + monitorService.appVersion + "<br/>" +
                     "Database Status: " + dbStatus + "<br/>" +
                     "Observation Count: " + observationCount + "<br/>" +
                     "Loaded Studies: " + loadedStudies + "<br/>" +
                     "Last Database Error Message: " + errorMessage + "<br/>" +
                     "Data Attestation Exists: " + nephDataAttestationExists + "<br/><br/>" +
                     "RServe Status <br/>" +
                     "-------------------- </br>" +
                     rserveStatusService.status.toHTMLString() + "</br>" +
                     "Solr Status <br/>" +
                     "-------------------- </br>" +
                     solrStatusService.status.toHTMLString()

        )
    }

}
