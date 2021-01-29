using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Calcular_Imc
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            L_mensajes.Text = "";
            TxtPeso.Focus();
            TxtAltura.Focus();

        }

        protected void B_consultar_Click(object sender, EventArgs e)
        {
            L_mensajes.Text = "";
            if ("".Equals(TxtPeso.Text) && "".Equals(TxtAltura.Text))
            {
                L_mensajes.Text = "Debe ingresar su peso y altura";
                TxtPeso.Focus();


            }
            else
            {
                float peso;
                float altura;

                if (float.TryParse(TxtPeso.Text, out peso) && float.TryParse(TxtAltura.Text, out altura))

                {
                    if (peso > 0 && altura > 0)
                    {
                        
                        
                            double imc = (peso / (altura * altura));
                            double pesoSubir = ((24.9 - imc) / altura) * (altura * altura);
                            double pesoBajar = (altura * altura) * ((imc - 24.9) / altura);
                        
                        
                        
                        if (imc < 18.5)
                        {
                            TxtImc.Text = imc.ToString();
                            TxtOMS.Text = "Bajo peso";
                            TxtRiesgo.Text = "Escaza";
                            TxtPesoa.Text = pesoSubir.ToString() + " por subir";
                        }
                        if (imc >= 18.5 && imc <= 24.9)
                        {
                            TxtImc.Text = imc.ToString();
                            TxtOMS.Text = "Adecuado";
                            TxtRiesgo.Text = "Bajo";
                        }
                        if (imc >= 25 && imc <= 29.9)
                        {
                            TxtImc.Text = imc.ToString();
                            TxtOMS.Text = "SobrePeso";
                            TxtRiesgo.Text = "Mayor";
                            TxtPesoa.Text = pesoBajar.ToString() + " por bajar";

                        }
                        if (imc >= 30 && imc <= 34.9)
                        {
                            TxtImc.Text = imc.ToString();
                            TxtOMS.Text = "Obesidad: Tipo 1 ";
                            TxtRiesgo.Text = "Alto";
                            TxtPesoa.Text = pesoBajar.ToString() + " por bajar";

                        }
                        if (imc >= 35 && imc <= 39.9)
                        {
                            TxtImc.Text = imc.ToString();
                            TxtImc.Text = "Obesidad: Tipo 2";
                            TxtRiesgo.Text = "Muy Alto";
                            TxtPesoa.Text = pesoBajar.ToString() + " por bajar";

                        }
                        if (imc >= 40)
                        {
                            TxtImc.Text = imc.ToString();
                            TxtOMS.Text = "Obesidad: Tipo 3";
                            TxtRiesgo.Text = "Extremadamente Alto";
                            TxtPesoa.Text = pesoBajar.ToString() + " por bajar";
                        }
                    }
                    else
                    {
                        L_mensajes.Text = "debe ingresar peso y altura mayor a 0";
                        TxtPeso.Focus();
                    }
                }
                else
                {
                    L_mensajes.Text = "Debe ingresar valores numéricos";
                    TxtPeso.Focus();
                }


            }
        }

        protected void B_restablecer_Click(object sender, EventArgs e)
        {
            L_mensajes.Text= string.Empty;
            TxtPeso.Text = "";
            TxtAltura.Text = "";
            TxtImc.Text = "";
            TxtOMS.Text = "";
            TxtRiesgo.Text = "";
            TxtPesoa.Text = "";
            TxtPeso.Focus();
        }
    }
}
    




        
        
