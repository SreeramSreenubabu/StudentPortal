<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="StudentRegistration.aspx.cs" Inherits="SVUniversity.StudentRegistration" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <h1>
        <center>Student Registration</center>
    </h1>
    <br />
    <div class="col-md-12" id="RegSuccessMgs" runat="server" visible="false">
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <div class="row alert alert-success">
                    <asp:Label ID="lblRegSuccessMgsMsg" runat="server" Visible="false" Text="😊 Registration Successfully Compleated......"></asp:Label>
                </div>
            </div>
            <div class="col-md-2">
                <asp:HyperLink ID="HyperlinkRedirectStudentToLoginPage" BorderStyle="Dotted" Width="200px" runat="server" NavigateUrl="~/Student/StudentLogin.aspx" Font-Underline="false" Font-Size="Medium" Text="Go To Student Login"></asp:HyperLink>
            </div>
            <div class="col-md-2"></div>
        </div>
    </div>


    <div class="col-md-12">
        <div class="row">
            <div class="col-md-1">
            </div>
            <div class="col-md-2">
                <label>Student Full Name</label>
                <asp:RequiredFieldValidator ID="rfvstudentfullname" runat="server" ControlToValidate="txtstudentfullname" ForeColor="Red" ErrorMessage="Name Is Required *"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="Regexstudentfullname" runat="server" ErrorMessage="Must Be In Characters *" ControlToValidate="txtstudentfullname" ValidationExpression="^[A-Za-z]*$" />
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtstudentfullname" runat="server" MaxLength="100" oncopy="return false" onpaste="return false" oncut="return false" AutoCompleteType="Disabled" Height="40px" Width="250px" CssClass="form-control" TabIndex="1" ToolTip="Enter Student Full Name"></asp:TextBox>
            </div>
            <div class="col-md-1"></div>


            <div class="col-md-2">
                <label>Father Name</label>
                <asp:RequiredFieldValidator ID="rfvfathername" runat="server" ControlToValidate="txtfathername" ForeColor="Red" ErrorMessage="F/O Is Required *"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="Regexfathername" runat="server" ForeColor="Red" ErrorMessage="Must Be In Characters *" ControlToValidate="txtfathername" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtfathername" runat="server" MaxLength="100" oncopy="return false" onpaste="return false" oncut="return false" AutoCompleteType="Disabled" Height="40px" CssClass="form-control" Width="250px" Style="text-transform: uppercase" TabIndex="2" ToolTip="Enter Father Name"></asp:TextBox>
            </div>
            <div class="col-md-2"></div>
        </div>
    </div>


    <br />

    <div class="col-md-12">
        <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-2">
                <label>Mother Name</label>
                <asp:RequiredFieldValidator ID="rfvmothername" runat="server" ControlToValidate="txtmothername" ForeColor="Red" ErrorMessage="M/O Is Required *"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="Regexmothername" runat="server" ForeColor="Red" ErrorMessage="Must Be In Characters *" ControlToValidate="txtmothername" ValidationExpression="[A-Za-z]*$"></asp:RegularExpressionValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtmothername" runat="server" MaxLength="100" oncopy="return false" onpaste="return false" oncut="return false" AutoCompleteType="Disabled" CssClass="form-control" Height="40px" Width="250px" Style="text-transform: uppercase" TabIndex="3" ToolTip="Enter Mother Name"></asp:TextBox>
            </div>
            <div class="col-md-1"></div>

            <div class="col-md-2">
                <label>Gender</label>
                <asp:RequiredFieldValidator ID="rfvgender" runat="server" ControlToValidate="rbtgender" ForeColor="Red" ErrorMessage="Gender Is Required *"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:RadioButtonList ID="rbtgender" runat="server" TabIndex="4" ToolTip="Select Gender">
                    <asp:ListItem Text="Male"></asp:ListItem>
                    <asp:ListItem Text="Female"></asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div class="col-md-2"></div>
        </div>
    </div>

    <br />

    <div class="col-md-12">
        <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-2">
                <label>Date Of Birth</label>
                <asp:RequiredFieldValidator ID="rfvdateofbirth" runat="server" ControlToValidate="txtdateofbirth" ForeColor="Red" ErrorMessage="DOB Is Required *"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtdateofbirth" runat="server" TextMode="Date" CssClass="form-control" Height="40px" Width="250px" TabIndex="5" ToolTip="Enter Date Of Birth"></asp:TextBox>
            </div>
            <div class="col-md-1"></div>

            <div class="col-md-2">

                <label>Group Of PG</label>
                <asp:RequiredFieldValidator ID="rfvgroupofintermediate" runat="server" ControlToValidate="ddlgroupofPG" ForeColor="Red" ErrorMessage="Group Is Required *"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:DropDownList ID="ddlgroupofPG" runat="server" CssClass="form-control" Height="40px" Width="250px" TabIndex="6" ToolTip="Select PG Group">
                    <asp:ListItem Value="">---------  Select Group  -------------</asp:ListItem>
                    <asp:ListItem Text="M.B.A"></asp:ListItem>
                    <asp:ListItem Text="M.C.A"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col-md-2"></div>
        </div>
    </div>

    <br />

    <div class="col-md-12">
        <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-2">
                <label>Year Of PG</label>
                <asp:RequiredFieldValidator ID="rfvyearofPG" runat="server" ControlToValidate="ddlyearofPG" ForeColor="Red" ErrorMessage="Year Is Required *"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:DropDownList ID="ddlyearofPG" runat="server" CssClass="form-control" Height="40px" Width="250px" TabIndex="7" ToolTip="Select Year Of PG">
                    <asp:ListItem Value="">---------  Select Year  -------------</asp:ListItem>
                    <asp:ListItem Text="1st Year"></asp:ListItem>
                    <asp:ListItem Text="2nd Year"></asp:ListItem>
                </asp:DropDownList>


            </div>
            <div class="col-md-1"></div>
            <div class="col-md-2">
                <label>Contact No</label>
                <asp:RequiredFieldValidator ID="rfvcontactno" runat="server" ControlToValidate="txtcontactno" ForeColor="Red" ErrorMessage="Contact Is Required *"></asp:RequiredFieldValidator>
                <%--                                <asp:CompareValidator runat="server" ControlToValidate="txtcontactno" Type="Integer" Operator="DataTypeCheck" ForeColor="Red" Text="Must be a number *" />--%>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtcontactno" runat="server" oncopy="return false" onpaste="return false" oncut="return false" MaxLength="10" AutoCompleteType="Disabled" CssClass="form-control" Height="40px" Width="250px" TabIndex="8" ToolTip="Enter Your Contact Number"></asp:TextBox>
            </div>
            <div class="col-md-2"></div>
        </div>
    </div>

    <br />

    <div class="col-md-12">
        <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-2">

                <label>Full Address</label>
                <asp:RequiredFieldValidator ID="rfvaddress" runat="server" ControlToValidate="txtfulladdress" ForeColor="Red" ErrorMessage="Address Is Required *"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtfulladdress" runat="server" oncopy="return false" onpaste="return false" oncut="return false" MaxLength="300" TextMode="MultiLine" AutoCompleteType="Disabled" CssClass="form-control" Height="70px" Width="600px" TabIndex="9" ToolTip="Enter Your Full Address With Pincode"></asp:TextBox>
            </div>
            <div class="col-md-1"></div>
            <div class="col-md-2">
                <label>Email</label>
                <asp:RequiredFieldValidator ID="rfvemail" runat="server" ControlToValidate="txtemail" ForeColor="Red" ErrorMessage="Address Is Required *"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtemail" runat="server" oncopy="return false" onpaste="return false" oncut="return false" TextMode="Email" AutoCompleteType="Disabled" CssClass="form-control" Height="40px" Width="250px" TabIndex="10" ToolTip="Enter Valid Email ID"></asp:TextBox>
            </div>
        </div>
    </div>

    <br />
    <br />

    <div class="col-md-12">
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-2">
                <asp:Button ID="BtnSubmit" runat="server" Text="Submit" OnClick="BtnSubmit_Click" Height="50px" Width="150px" Font-Size="Larger" CssClass="btn btn-success" TabIndex="11" ToolTip="Check Information Before Submit"></asp:Button>
            </div>
            <div class="col-md-1"></div>
            <div class="col-md-2">
                <asp:Button ID="BtnReset" runat="server" Text="Reset" CausesValidation="false" OnClick="BtnReset_Click" Height="50px" Width="150px" Font-Size="Larger" CssClass="btn btn-danger" TabIndex="12" ToolTip="Cancel To Reset The Form"></asp:Button>
            </div>
            <div class="col-md-1"></div>
        </div>
    </div>


</asp:Content>
