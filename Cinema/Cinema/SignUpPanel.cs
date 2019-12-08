using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Configuration;

namespace Cinema
{
    public partial class SignUpPanel : UserControl
    {
        //zmienna id klienta
        private int customerID;
        private SqlCommand querySQL;
        //zmienna polaczenia do bazy
        private readonly Func<System.Data.SqlClient.SqlConnection> dbConnectionCinema = () => new SqlConnection(ConfigurationManager.ConnectionStrings["CinemaKredek"].ConnectionString);



        public SqlCommand QuerySQL { get => querySQL; set => querySQL = value; }
       
        public int CustomerID { get => customerID; set => customerID = value; }

        FormMain formMain;

        public SignUpPanel(FormMain formMain)
        {
            InitializeComponent();
            this.formMain=formMain;
            buttonSignUp.BackColor = Color.PeachPuff;
        }

        /// <summary>
        /// tworzenie nowego konta w bazie
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void buttonSignUp_Click(object sender, EventArgs e)
        {
            //tresc inserta
            string query = "INSERT INTO Customer VALUES (NEXT VALUE FOR SEQ_CUSTOMER_ID, @Login, @Password,@First_Name, @Last_Name,@Birth,@Email,@Phone,1)";


            //jesli textBox'y które wartosci w tabeli mają not null są puste to nie spełnia warunku 

            if (textBoxSignUpLogin.Text != "" && textBoxSignUpPassword.Text != "" && textBoxSignUpName.Text != "" && textBoxSignUpSurname.Text != "")
            {
                var connection = dbConnectionCinema();
                using (var command = new SqlCommand(query, connection))
                {
                    connection.Open();

                    //dodanie paramtrow do polecenia
                    command.Parameters.Add(new SqlParameter("@Login", textBoxSignUpLogin.Text));
                    command.Parameters.Add(new SqlParameter("@Password", textBoxSignUpPassword.Text));
                    command.Parameters.Add(new SqlParameter("@First_Name", textBoxSignUpName.Text));
                    command.Parameters.Add(new SqlParameter("@Last_Name", textBoxSignUpSurname.Text));
                    command.Parameters.Add(new SqlParameter("@Birth", dateTimePickerSignUpBirth.Value.ToString("yyyy-MM-dd")));
                    command.Parameters.Add(new SqlParameter("@Email", textBoxSignUpEmail.Text));
                    command.Parameters.Add(new SqlParameter("@Phone", textBoxSignUpPhone.Text));

                    //jesli jest zaznaczony checkbox
                    if (checkBoxTerms.Checked == true)
                    {
                        //wykonanie instrukcji
                        command.ExecuteReader();
                        MessageBox.Show("Correct registration");
                        //przejscie do panelu logowania
                        formMain.panelContent.Controls.Clear();
                        LogInPanel panel = new LogInPanel(formMain);
                        formMain.panelContent.Controls.Add(panel);

                    }
                    else
                    {
                        MessageBox.Show("You have to accept terms");
                    }
                    
                    connection.Close();
                    
                    

                }

            }
            else
            {
                MessageBox.Show("Complete the data");
            }
        }
        
    }
}

