<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Appointment.aspx.cs" Inherits="WebApplication2.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div  style="background-image:url(slider2.png);height:800px;width:100%;" class="img-responsive">
         <div class="row">
            <div class="wrap-login col-md-8 col-md-offset-2" style="opacity:0.8; background-color:#1B3146;color:white;">
           <div style="text-align:center"> <h3 > Appointment </h3>
                        </div>
  <div class="form-group">
   
     <asp:TextBox ID="TextBox2" runat="server" placeholder="Your Name"></asp:TextBox>
      
  </div>
  <div class="form-group">
  
     <asp:TextBox ID="TextBox1" runat="server" placeholder="Your Email" TextMode="Password"></asp:TextBox>
  </div>
                
 <div class="form-group">
   
     <asp:TextBox ID="TextBox3" runat="server" placeholder="Symptoms"></asp:TextBox>
      
  </div>

                <div class="gaps">
				<p>Gender</p>	
					<select class="form-control">
						<option></option>
						<option>Male</option>
						<option>Female</option>
					</select>
			</div>

               <br />
                <br />



                <div class="form-group">
   
     <asp:TextBox ID="TextBox4" runat="server" placeholder="Username"></asp:TextBox>
      
  </div>
   <asp:button ID="appointment" runat="server" type="submit" name="Submit" class="btn btn-default" Text="Next" />
      
                
               

                </div>
            
            </div>
        
        </div>
    

</asp:Content>
