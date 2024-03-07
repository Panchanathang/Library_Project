<%@ Page Title="Book Penalty" Language="C#" MasterPageFile="~/Admin/AdminSite.Master" AutoEventWireup="true" CodeBehind="BookPenaltyEntry.aspx.cs" Inherits="Library_Project.Admin.BookPenaltyEntry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            font-family: Arial;
            font-size: 17px;
            padding: 8px;
        }

        * {
            box-sizing: border-box;
        }

        .row {
            display: -ms-flexbox; /* IE10 */
            display: flex;
            -ms-flex-wrap: wrap; /* IE10 */
            flex-wrap: wrap;
            margin: 0 -16px;
        }

        .col-25 {
            -ms-flex: 25%; /* IE10 */
            flex: 25%;
        }

        .col-50 {
            -ms-flex: 50%; /* IE10 */
            flex: 50%;
        }

        .col-75 {
            -ms-flex: 75%; /* IE10 */
            flex: 75%;
        }

        .col-25,
        .col-50,
        .col-75 {
            padding: 0 16px;
        }

        .container {
            background-color: #f2f2f2;
            padding: 5px 20px 15px 20px;
            border: 1px solid lightgrey;
            border-radius: 3px;
        }

        input[type=text] {
            width: 100%;
            margin-bottom: 20px;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        label {
            margin-bottom: 10px;
            display: block;
        }

        .icon-container {
            margin-bottom: 20px;
            padding: 7px 0;
            font-size: 24px;
        }

        a {
            color: #2196F3;
        }

        hr {
            border: 1px solid lightgrey;
        }

        span.price {
            float: right;
            color: grey;
        }

        /* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
        @media (max-width: 800px) {
            .row {
                flex-direction: column-reverse;
            }

            .col-25 {
                margin-bottom: 20px;
            }
        }
        .auto-style1 {
            width: 193px;
            height: 53px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row border align-content-center" id="A1" runat="server">
            Hi, &nbsp <asp:Label ID="lblMembername" runat="server" Text="Label" ForeColor="Red" Font-Size="Large"> </asp:Label>

            <p> &nbsp;Please Pay Penalty Amount:  &nbsp </p>
            <div>
                 ($)
                <asp:Label ID="lblfine" runat="server" Text="Label" Font-Bold="true"></asp:Label>
                <br />
                <asp:Button ID="btnNext" CssClass="btn btn-block btn-primary" runat="server" Text="Continue" OnClick="btnNext_Click" />
            </div>
        </div>
        
        <div class="row" id="A2" runat="server" visible="false">
            <div class="col-75">
                <div class="container">
                    <div class="row">
                        <div class="col-50">
                            <h3>Billing Address</h3>
                            <label for="fname"><i class="fa fa-user"></i>Full Name</label>
                            <asp:TextBox ID="txtFullName" runat="server" placeholder="John M. Doe"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Please enter Name" ForeColor="Red" ControlToValidate="txtFullName" ValidationGroup="paymentbtn"></asp:RequiredFieldValidator>
                            <label for="email"><i class="fa fa-envelope"></i>Email</label>
                            <asp:TextBox ID="txtEmail" runat="server" placeholder="john@example.com"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Please enter valid Email" ForeColor="Red" ControlToValidate="txtEmail" ValidationGroup="paymentbtn"></asp:RequiredFieldValidator>
                            <label for="adr"><i class="fa fa-address-card-o"></i>Address</label>
                            <asp:TextBox ID="txtaddress" runat="server" placeholder="542 W. 15th Street"></asp:TextBox>
                            <label for="city"><i class="fa fa-institution"></i>City</label>
                            <asp:TextBox ID="txtCity" runat="server" placeholder="New York"></asp:TextBox>


                            <div class="row">
                                <div class="col-50">
                                    <label for="province">Province</label>
                                    <asp:TextBox ID="txtprovince" runat="server" placeholder="ON"></asp:TextBox>
                                </div>
                                <div class="col-50">
                                    <label for="Postalcode">Postalcode</label>

                                    <asp:TextBox ID="txtzip" runat="server" placeholder="10001"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="col-50">
                            <h3>Payment</h3>
                            <label for="fname">Payments options</label>
                            <div class="icon-container">
                                <i> <img src="../Imgs/visa.png"  width="30" height="30" /></i>
                                <i>&nbsp; </i>
                                
                                <i> <img src="../Imgs/master.jpg"  width="30" height="30" /></i>
                                <i>&nbsp; </i>
                                <i>  <img src="../Imgs/Amex.jpg" width="30" height="30"/>
                                <i>&nbsp; </i>
                                <img class="auto-style1" src="../Imgs/paypal.png" /></i><br />
                              
                            </div>
                            <label for="cname">Amount</label>
                            <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtAmount" runat="server" ErrorMessage="enter amount" ValidationGroup="paymentbtn"></asp:RequiredFieldValidator>

                            <label for="cname">Payment Option</label>
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                                <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                <asp:ListItem Text="Cash" Value="Cash"></asp:ListItem>
                                <asp:ListItem Text="Card" Value="Card"></asp:ListItem>
                            </asp:DropDownList>
                            <label for="cname">Name on Card</label>
                            <asp:TextBox ID="txtNameOnCard" runat="server"></asp:TextBox>
                            <label for="ccnum">Credit card number</label>

                            <asp:TextBox ID="txtcardNumber" runat="server" placeholder="1111-2222-3333-4444"></asp:TextBox>
                            <label for="expmonth">Exp Month</label>

                            <asp:TextBox ID="txtExpmonth" runat="server" placeholder="September"></asp:TextBox>
                            <div class="row">
                                <div class="col-50">
                                    <label for="expyear">Exp Year</label>

                                    <asp:TextBox ID="txtexpyear" runat="server" placeholder="2018"></asp:TextBox>
                                </div>
                                <div class="col-50">
                                    <label for="cvv">CVV</label>

                                    <asp:TextBox ID="txtcvv" runat="server" placeholder="356"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                    </div>

                    <label>

                    <asp:CheckBox ID="chkboxSameasAddress" runat="server" Checked="true" />Shipping address same as billing
                    </label>

                    <asp:Button ID="btnsubmit" runat="server" class="btn btn-success" Text="Continue to checkout" OnClick="btnsubmit_Click" ValidationGroup="paymentbtn" />
<br />
<br />
<%--                    <asp:Button ID="btnpaypal" runat="server" class="btn btn-warning" Text="Continue to Paypal" OnClick="btnNext_Click" ValidationGroup="paymentbtn" />--%>
                    <a href="https://www.paypal.com/ca/signin" class="btn btn-warning" id="btnpaypal">Continue to Paypal</a>

                                   
                <BR />
                    <BR />

                </div>
            </div>
        </div>
        <asp:Label ID="lblredirectMsg" runat="server" Text="You will be redirected after 5 Second" Style="border:2px solid black; font-size:large"></asp:Label>
    </div>
</asp:Content>