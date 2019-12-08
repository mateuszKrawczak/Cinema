using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Cinema
{
    public partial class LogInPanel : UserControl
    {
        FormMain formMain;
        private int customerID;
        public LogInPanel(FormMain formMain)
        {
            InitializeComponent();
            this.formMain = formMain;
            buttonLogInAccept.BackColor = Color.PeachPuff;
        }

        /// <summary>
        /// funkcja ktora logue nas do aplikacji 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void buttonLogInAccept_Click(object sender, EventArgs e)
        {
            //obiekt klasy LogIn sprawdzająca logowanie
            LogIn logIn = new LogIn(textBoxLogin.Text, textBoxPassword.Text);
            //FormWarehouse formWarehouse = new FormWarehouse();
            if (logIn.LogInCinema())
            {
                MessageBox.Show("Login succeeded");
                formMain.Hide();
                customerID=logIn.CustomerID;
                //obiekt nowego okna i przekazanie skupienia na drugie okno zamkniecie obecnego
                FormClient formClient = new FormClient(customerID);
                formClient.FormClosed += (s, args) => formMain.Close();
                formClient.Show();
            }
            else
            {
               //okno informujace o błednych danych
                MessageBox.Show("Invalid data provided");
                textBoxLogin.Text = "";
                textBoxPassword.Text = "";
            }
            
            

        }
    }
}
