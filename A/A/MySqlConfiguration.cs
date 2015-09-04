using System.Data.Entity;

namespace IA
{
    public class MySqlConfiguration : DbConfiguration
    {
        public MySqlConfiguration()
        {
            SetHistoryContext(
            "MySql.Data.MySqlClient", (conn, schema) => new A.MySqlHistoryContext(conn, schema));
        }
    }
}