<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Disease Predict.aspx.cs" Inherits="WebApplication2.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <script>
        $(document).ready(function(){
            $("#div1").hide();
        });
    </script>
   <div class="container">
       <div class="row">
           <div class="col-md-3 col-md-offset-3">
               <p>Please Enter a Symptoms</p>
               
                

              

           </div>
            <div class="col-md-2">
                <asp:DropDownList ID="DropDownList1" value="Select any symptom"  runat="server" Height="29px" Width="182px">
                    <asp:ListItem>--Select any  symptoms-- </asp:ListItem>
                    <asp:ListItem Value="1">Headache</asp:ListItem>
                    <asp:ListItem Value="2">Fever</asp:ListItem>

                </asp:DropDownList>
       </div>
      </div>
   </div>
    <hr />
    <div id="div1"style="background-color:antiquewhite; height:300px;">

    </div>
    <div id="div2"style="background-color:aqua;height:200px;"></div>
    <div>
        
    </div>
</asp:Content>
