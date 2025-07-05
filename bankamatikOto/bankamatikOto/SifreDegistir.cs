using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace bankamatikOto
{
    public partial class SifreDegistir : Form
    {
        public SifreDegistir()
        {
            InitializeComponent();
        }
        SqlConnection con = new SqlConnection(" server= . ; initial catalog= bankamatik; integrated security = sspi");


        private void button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update musteriler set sifre=  @p1 where ID= @p2 and sifre= @p3  ", con);
            komut.Parameters.AddWithValue("@p1", txtYsifre.Text);
            komut.Parameters.AddWithValue("@p3", txtEsifre.Text);

            komut.Parameters.AddWithValue("@p2", Form1.msID);

            if (txtYsifre.Text.Length < 5)
            {
                MessageBox.Show("Lütfen yeni şifreniz en az 5 karakter uzunluğunda olsun!", "Şifre Değiştirme Hatası ", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            else
                    {
                        con.Open();

                        int sonuc = komut.ExecuteNonQuery();
                        con.Close();
                        if (sonuc == 1)
                {
                    MessageBox.Show("Şifre değiştirme işlemi gerçekleştirildi ", "Şifre değiştirme", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    HareketKaydet.kaydet(Form1.msID, "Şifre Değiştirildi ");

                }
                else
                            MessageBox.Show("Eski şifreniz uyuşmadı !", "Şifre Değiştirme Hatası ", MessageBoxButtons.OK, MessageBoxIcon.Warning);

                    }

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void txtYsifre_TextChanged(object sender, EventArgs e)
        {

        }

        private void txtEsifre_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
