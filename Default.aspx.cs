using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Serialization;
using System.Runtime.Serialization.Json;

public partial class _Default : System.Web.UI.Page
{
    [System.Web.Services.WebMethod]
    public static string SetName(object JSValue)
    {
        DataContractJsonSerializer ser = new DataContractJsonSerializer(typeof(Task[]));
       // string lstItems = new JavaScriptSerializer().Deserialize<Task[]>(JSValue);
        return "";
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
}