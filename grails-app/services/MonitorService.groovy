import groovy.sql.Sql

class MonitorService {

    def dataSource;

    def getDatabaseStatus() {

        Sql sql = new Sql(dataSource)
        String sqlText = "select 1 + 1;"
        def result = sql.firstRow(sqlText)
        if (result.values()[0] == 2)
            return "OK"
        else
            return "ERROR"

    }
}
