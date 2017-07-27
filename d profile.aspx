<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="d profile.aspx.cs" Inherits="WebApplication2.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <style>
        .container{
            font-size:18px;
            background-color:azure;
        }
        #divp{
            background-color:antiquewhite;
        }
    </style>
    <div>
        <div class="row" id="divp"> 
            <div class="col-md-3 col-md-offset-5">
                <h3>Doctor Profile</h3>
            </div>
        </div>
    </div>
<div class="container">
    <div class="row">
        <div class="col-md-3 col-md-offset-2">
        <b>  <asp:Label ID="Lable" runat="server" Text="Name:"></asp:Label> </b>    &nbsp &nbsp &nbsp &nbsp  &nbsp <asp:Label ID="name" runat="server" Text="Ali"></asp:Label> <br /> <br />
            <b>  <asp:Label ID="Label1" runat="server" Text="Patient ID:"></asp:Label> </b>    &nbsp &nbsp  &nbsp <asp:Label ID="p_id" runat="server" Text="4521"></asp:Label> <br /> <br />
           <b>  <asp:Label ID="Label3" runat="server" Text="Age:"></asp:Label></b>   &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp <asp:Label ID="age" runat="server" Text="27"></asp:Label> <br /> <br />
             <b>  <asp:Label ID="Label2" runat="server" Text="Speciality:"></asp:Label> </b>    &nbsp &nbsp &nbsp &nbsp  &nbsp <asp:Label ID="Label4" runat="server" Text="Speciality"></asp:Label> <br /> <br />
          <b>   <asp:Label ID="Label5" runat="server" Text="Gender:"></asp:Label></b> &nbsp &nbsp &nbsp &nbsp    <asp:Label ID="gender" runat="server" Text="Male"></asp:Label>  <br /> <br />
             <b>   <asp:Label ID="Label7" runat="server" Text="Address:"></asp:Label></b>  &nbsp &nbsp &nbsp    <asp:Label ID="address" runat="server" Text="Madina Saida"></asp:Label>  <br /> <br />
                <b>   <asp:Label ID="Label9" runat="server" Text="City:"></asp:Label></b>  &nbsp&nbsp &nbsp &nbsp    <asp:Label ID="city" runat="server" Text="Gujrat"></asp:Label>  <br /> <br />
             <b>   <asp:Label ID="Label13" runat="server" Text="Country:"></asp:Label></b> &nbsp&nbsp &nbsp &nbsp    <asp:Label ID="country" runat="server" Text="Pakistan"></asp:Label>  <br /> <br />
             <b>   <asp:Label ID="Label15" runat="server" Text="Phone#:"></asp:Label></b>  &nbsp&nbsp&nbsp &nbsp    <asp:Label ID="number" runat="server" Text="0312-1234567"></asp:Label>  <br /> <br />
         <b>   <asp:Label ID="Label17" runat="server" Text="Email:"></asp:Label></b> &nbsp&nbsp &nbsp &nbsp    <asp:Label ID="email" runat="server" Text="abc@gmail.com"></asp:Label>  <br /> <br />

            


             </div>
        <asp:FileUpload ID="FileUpload2" runat="server" />
       <br /><br /><br />
        <div class="col-md-2 col-md-offset-2 ">
            <img src="nn.jpg" class="img-responsive img-circle" runat="server" id="imggg"/> <br />
           &nbsp &nbsp  &nbsp <asp:Button class="btn-default" ID="Button1" runat="server" Text="Change Image" OnClick="Button1_Click" />
        </div>
        <div class="col-md-1 col-md-offset-1">
            <asp:Button class="btn-default" ID="Button2" runat="server" Text="Change Profile"  />
        </div>
    </div>
</div>
    
</asp:Content>
