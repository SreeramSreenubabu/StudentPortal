<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="ForgottPassword.aspx.cs" Inherits="SVUniversity.Student.ForgottPassword" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">

    <h1>
        <center>Student Forgot Password</center>
    </h1>
    <br />
    <center>
        <b>
            <span style="color: red;">Note :</span><span>Please Enter Below Fields As Per Your 10th Class</span>
        </b>
    </center>
    <br />

    <div class="col-md-12">

        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-1">
                <label>Date Of Birth</label>
                <%--             <asp:RequiredFieldValidator ID="rfvStudentUsername" runat="server" ControlToValidate="txtstudentusername" ForeColor="Red" ErrorMessage="Name Is Required *"></asp:RequiredFieldValidator>--%>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtdateofbirth" TextMode="Date" runat="server" placeholder="YYYY-MM-DD" AutoCompleteType="Disabled" Height="40px" Width="250px" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-md-4"></div>
        </div>
    </div>
    <br />

    <div class="col-md-12">
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-1">
                <label>Full Name</label>
                <%--             <asp:RequiredFieldValidator ID="rfvStudentPassword" runat="server" ControlToValidate="txtfathername" ForeColor="Red" ErrorMessage="F/O Is Required *"></asp:RequiredFieldValidator>--%>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtstudentfullname" runat="server" AutoCompleteType="Disabled" Height="40px" CssClass="form-control" Width="250px"></asp:TextBox>
            </div>
            <div class="col-md-4"></div>
        </div>
    </div>

    <br />

    <div class="col-md-12">
        <div class="row">
            <div class="col-md-5"></div>
            <div class="col-md-1">
                <asp:Button ID="BtnStudentForgotpasswordSubmit" runat="server" Text="Proceed" OnClick="BtnStudentForgotpasswordSubmit_Click" CssClass="btn btn-success"></asp:Button>
            </div>
            <div class="col-md-4">
                <asp:HyperLink ID="hyperlinkforgottpassword" runat="server" NavigateUrl="~/Student/StudentLogin.aspx" Text="Go Back To Login" Font-Underline="false" Font-Size="Medium"></asp:HyperLink>
            </div>
            <div class="col-md-2"></div>
        </div>
    </div>
    <br />
    <div class="col-md-12" id="ForgotUsernamepasswordMgs" runat="server" visible="false">
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <div class="row alert alert-success">
<%--                    <asp:Label ID="lblMsg" runat="server"><span>Note:</span></asp:Label>--%>
                   <span>Dont Share Your Password & Username With Anyone</span>
                    <center>
                        <asp:GridView ID="gv" runat="server" Visible="false" BorderStyle="None" AutoGenerateColumns="False" GridLines="None">
                            <Columns>
                                <asp:TemplateField HeaderText="Student Username" HeaderStyle-ForeColor="Green" SortExpression="Email">
                                    <ItemTemplate>
                                        <asp:Label ID="lblUsername" runat="server" Text='<%# Eval("Email") %>'> </asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField></asp:TemplateField>
                                <asp:TemplateField></asp:TemplateField>
                                <asp:TemplateField></asp:TemplateField>
                                <asp:TemplateField></asp:TemplateField>
                                <asp:TemplateField HeaderText="Password" HeaderStyle-ForeColor="Green" SortExpression="Contact_No">
                                    <ItemTemplate>
                                        <asp:Label ID="lblPassword" runat="server" Text='<%# Eval("Contact_No") %>'> </asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </center>
                </div>
            </div>
            <div class="col-md-4"></div>
        </div>
    </div>

</asp:Content>
