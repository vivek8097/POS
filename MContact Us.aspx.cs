using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net.Security;
using System.Net;

public partial class Contact_Us : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
        protected void SendMail()
        {
    // Gmail Address from where you send the mail
    var fromAddress = "collectorpos@gmail.com";
    // any address where the email will be sending
    var toAddress = email.Text.ToString(); 
    //Password of your gmail address
    const string fromPassword = "possangli@123";
     // Passing the values and make a email formate to display
    string subject = sub.Text.ToString();
    string body = "From: " + name.Text + "\n";
    body += "Email: " + email.Text + "\n";
    body += "Subject: " + sub.Text + "\n";
    body += "Question: \n" + msg.Text + "\n";
    // smtp settings
    var smtp = new System.Net.Mail.SmtpClient();
    {
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.EnableSsl = true;
        smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
        smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
        smtp.Timeout = 20000;
    }
    // Passing values to smtp object
    smtp.Send(fromAddress, toAddress, subject, body);
}

    protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
        //here on button click what will done 
        SendMail();
        //DisplayMessage.Text = "Your Comments after sending the mail";
        //DisplayMessage.Visible = true;
        sub.Text = "";
        email.Text = "";
        name.Text = "";
        msg.Text = "";
        lbl1.Text = "Thanku you for feedback";
            }
            catch (Exception) { }
                }


            }
