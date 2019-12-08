using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Cinema
{
    public class LogIn
    {
        //zmienne przechowujace informacje klienta a takze potrzebne do połączeni z bazą
        private string username;
        private string password;
        private int customerID;
        private SqlCommand querySQL;

        private readonly Func<System.Data.SqlClient.SqlConnection> dbConnectionCinema = () => new SqlConnection(ConfigurationManager.ConnectionStrings["CinemaKredek"].ConnectionString);


       //gettery i settery
        public SqlCommand QuerySQL { get => querySQL; set => querySQL = value; }
        public string Username { get => username; set => username = value; }
        public string Password { get => password; set => password = value; }
        public int CustomerID { get => customerID; set => customerID = value; }

        public LogIn(string username, string password)
            {
                Username = username;
                Password = password;
            }

        //funkcja ktora zwraca wartosc logiczny czy zalogowalismy sie do aplikacji poprawnie
        public bool LogInCinema()
        {
            bool isTrue = false;
            int valueResult;
            //zapytanie do bazy
            string query = "SELECT Customer.Customer_ID FROM Customer  WHERE Login = @Username AND Password = @Password;";
            using (var connection = dbConnectionCinema())
            {
                //otworzenie polaczenia
                connection.Open();
                QuerySQL = new SqlCommand(query, connection);
                //podanie parametrow
                QuerySQL.Parameters.Add(new SqlParameter("@Username", Username));
                QuerySQL.Parameters.Add(new SqlParameter("@Password", Password));
                
                valueResult=Convert.ToInt32(QuerySQL.ExecuteScalar());
                
                if (valueResult >= 1)
                {
                   isTrue = true;
                   CustomerID = valueResult;
                }
                connection.Close();
            }
            return isTrue;
        }
    }
}
