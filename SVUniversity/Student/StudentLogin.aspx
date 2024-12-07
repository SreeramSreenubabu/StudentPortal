<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="StudentLogin.aspx.cs" Inherits="SVUniversity.Student.StudentLogin" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <h1>
        <center>Student Login</center>
    </h1>
    <br />

    <div class="col-md-12" id="LogindvMgs" runat="server" visible="false">
        <div class="row alert alert-success">
            <asp:Label ID="lblMsg" runat="server"></asp:Label>
        </div>
    </div>

    <div class="col-md-12">

        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-1">
                <label>Username</label>
                <%--             <asp:RequiredFieldValidator ID="rfvStudentUsername" runat="server" ControlToValidate="txtstudentusername" ForeColor="Red" ErrorMessage="Name Is Required *"></asp:RequiredFieldValidator>--%>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtstudentusername" runat="server" AutoCompleteType="Disabled" Height="40px" Width="250px" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-md-4"></div>
        </div>
    </div>
    <br />

    <div class="col-md-12">
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-1">
                <label>Password</label>
                <%--             <asp:RequiredFieldValidator ID="rfvStudentPassword" runat="server" ControlToValidate="txtfathername" ForeColor="Red" ErrorMessage="F/O Is Required *"></asp:RequiredFieldValidator>--%>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtpassword" runat="server" AutoCompleteType="Disabled" TextMode="Password" Height="40px" CssClass="form-control" Width="250px"></asp:TextBox>
            </div>
            <div class="col-md-4"></div>
        </div>
    </div>

    <br />

    <div class="col-md-12">
        <div class="row">
            <div class="col-md-5"></div>
            <div class="col-md-1">
                <asp:Button ID="BtnStudentLogin" runat="server" Text="Login" OnClick="BtnStudentLogin_Click" CssClass="btn btn-success"></asp:Button>
            </div>
            <div class="col-md-4">
                <asp:HyperLink ID="hyperlinkforgottpassword" runat="server" NavigateUrl="~/Student/ForgottPassword.aspx" Text="Forgot Username & Password" Font-Underline="false" Font-Size="Medium"></asp:HyperLink>
                <%--                <asp:Button ID="BtnCancel" runat="server" Text="Cancel" OnClick="BtnCancel_Click" CssClass="btn btn-danger"></asp:Button>--%>
            </div>
            <div class="col-md-2"></div>
        </div>
    </div>
    <br />
    <div class="col-md-12">
        <div class="row">
            <div class="col-md-5"></div>
            <div class="col-md-5">
                <asp:HyperLink ID="hyperlinkforregistration" runat="server" NavigateUrl="~/Student/StudentRegistration.aspx" Text="Not Registered yet / Register Now" Font-Underline="false" Font-Size="Medium"></asp:HyperLink>
            </div>
            <div class="col-md-2"></div>
        </div>
    </div>

</asp:Content>
