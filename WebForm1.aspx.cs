using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtCantidad.Text = rBtnTamano.SelectedItem.Value;
        }

        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            //Limpia la textBox de ingredientes para no sobreescribir valores
            tBoxIngredientes.Text = "";
                //Inicializa la variable total
                double total = 0;
                //Al total le suma el valor del item seleccionado en el radio button list

                total += int.Parse(rBtnTamano.SelectedItem.Value);

                //recorre el comboBox de ingredientes preguntando si el valor esta seleccionado
                //si es true lo agrega a la textBox de ingredientes y suma al total
                foreach (ListItem item in cbIngredientes.Items)
                {
                    if (item.Selected == true)
                    {   
                    //Recupera el texto del item seleccionado y lo añade al textBox
                        String text = item.Text;
                        tBoxIngredientes.Text += text+"\n";
                        total += int.Parse(item.Value);
                        
                    }
                }


                //Suma al total el valor del extra seleccionado
            total += int.Parse(ddExtras.SelectedItem.Value);    
                //Muestra en texto el valor de la variable Total
                txtTotal.Text = "$ " + total.ToString();
                
           
        }

        protected void cbIngredientes_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void tBoxIngredientes_TextChanged(object sender, EventArgs e)
        {

        }
    }
}