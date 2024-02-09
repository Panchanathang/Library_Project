<%@ Page Title="Member Update" Language="C#" MasterPageFile="~/Admin/AdminSite.Master" AutoEventWireup="true" CodeBehind="UpdateMemberDetails.aspx.cs" Inherits="Library_Project.Admin.UpdateMemberDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-4 border">
                <p></p>
                <div class="row">
                    <div class="col-12">
                        <div class="form-group">
                            <asp:TextBox ID="txtMemberID" CssClass="form-control" placeholder="Member ID" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Enter Member ID" ControlToValidate="txtMemberID" ForeColor="Red" ValidationGroup="btnsearch"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-12">
                        <div class="form-group">
                            <asp:Button ID="btnSearchMember" CssClass="btn btn-primary" runat="server" Text="Search" OnClick="btnSearchMember_Click" ValidationGroup="btnsearch" />
                            <asp:Button ID="BtnActiveMember" CssClass="btn btn-success" runat="server" Text="Active" OnClick="BtnActiveMember_Click" ValidationGroup="btnsearch" />
                            <asp:Button ID="btnPendingMember" CssClass="btn btn-info" ForeColor="Black" BackColor="Yellow" runat="server" Text="Pending" OnClick="btnPendingMember_Click" ValidationGroup="btnsearch" />
                            <asp:Button ID="btnDeactiveMember" CssClass="btn btn-danger" runat="server" Text="Deactive" ValidationGroup="btnsearch" OnClick="btnDeactiveMember_Click" />
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-12">
                        <div class="form-group">
                            <asp:TextBox ID="txtFullName" CssClass="form-control" placeholder="Full Name" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-12">
                        <div class="form-group">
                            <asp:TextBox ID="txtDOB" CssClass="form-control" placeholder="DOB" TextMode="Date" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-12">
                        <div class="form-group">
                            <asp:TextBox ID="txtContactNO" CssClass="form-control" placeholder="Contact No." runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-12">
                        <div class="form-group">
                            <asp:TextBox ID="txtEmail" CssClass="form-control" placeholder="Email" TextMode="Email" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>

                 <div class="row">
                    <div class="col-12">
                        <div class="form-group">
                            <asp:TextBox ID="txtAddress" CssClass="form-control" placeholder="Address" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-6">
                        <div class="form-group">
                        <asp:TextBox ID="txtCity" CssClass="form-control" placeholder="City" runat="server"></asp:TextBox>
                    </div>    
                    </div>

                    <div class="col-6">
                        <div class="form-group">
                            <asp:DropDownList ID="ddlprovince" CssClass="form-control" runat="server">
                                 <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                 <asp:ListItem Text="Alberta" Value="Alberta" />
                                 <asp:ListItem Text="British Columbia" Value="British Columbia" />
                                 <asp:ListItem Text="Manitoba" Value="Manitoba" />
                                 <asp:ListItem Text="New Brunswick" Value="New Brunswick" />
                                 <asp:ListItem Text="Newfoundland and Labrador" Value="Newfoundland and Labrador" />
                                 <asp:ListItem Text="Northwest Territories" Value="Northwest Territories" />
                                 <asp:ListItem Text="Nova Scotia" Value="Nova Scotia" />
                                 <asp:ListItem Text="Nunavut" Value="Nunavut" />
                                 <asp:ListItem Text="Ontario" Value="Ontario" />
                                 <asp:ListItem Text="Prince Edward Island" Value="Prince Edward Island" />
                                 <asp:ListItem Text="Quebec" Value="Quebec" />
                                 <asp:ListItem Text="Saskatchewan" Value="Saskatchewan" />
                                 <asp:ListItem Text="Yukon" Value="Yukon" />
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-12">
                        <div class="form-group">
                            <asp:TextBox ID="txtPostalcode" CssClass="form-control" placeholder="Postal code" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-sm-8">
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <h4>Members List</h4>
                <div class="table table-responsive">
                    <asp:GridView ID="GridView1" CssClass="table table-sm" runat="server" AutoGenerateColumns="false" AllowPaging="true" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting" PageSize="5" Font-Size="8" OnRowDataBound="GridView1_RowDataBound" OnDataBound="GridView1_DataBound">
                        <HeaderStyle BackColor="#0066FF" Font-Bold="true" ForeColor="White" />
                        <FooterStyle BackColor="#3366CC" />
                        <Columns>

                            <asp:TemplateField HeaderText="ID">
                                <ItemTemplate>
                                    <asp:Label ID="lblDisplayID" runat="server" Text='<%# Eval("member_id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Name">
                                <ItemTemplate>
                                    <asp:Label ID="lblDisplayName" runat="server" Text='<%# Eval("full_name") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtEditName" CssClass="" Text='<%# Eval("full_name") %>' runat="server"></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="DOB">
                                <ItemTemplate>
                                    <asp:Label ID="lblDisplaydob" runat="server" Text='<%# Eval("dob") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtEditdob" CssClass="" Text='<%# Eval("dob") %>' TextMode="Date" runat="server"></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>


                            <asp:TemplateField HeaderText="Contact">
                                <ItemTemplate>
                                    <asp:Label ID="lblDisplayContact" runat="server" Text='<%# Eval("contact_no") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtEditContact" CssClass="" Text='<%# Eval("contact_no") %>' runat="server"></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>


                            <asp:TemplateField HeaderText="Email">
                                <ItemTemplate>
                                    <asp:Label ID="lblDisplayEmail" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtEditEmail" CssClass="" Text='<%# Eval("email") %>' runat="server"></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Address">
                                <ItemTemplate>
                                    <asp:Label ID="lblDisplayAddress" runat="server" Text='<%# Eval("address") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtEditAddress" CssClass="" Text='<%# Eval("address") %>' runat="server"></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>

                           <asp:TemplateField HeaderText="City">
                        <ItemTemplate>
                            <asp:Label ID="lblDisplaycity" runat="server" Text='<%# Eval("city") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtEditcity" CssClass="" Text='<%# Eval("city") %>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                             
                            <asp:TemplateField HeaderText="Province">
                                <ItemTemplate>
                                    <asp:Label ID="lblDisplayProvnice" runat="server" Text='<%# Eval("province") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:Label ID="lblEditProvince" runat="server" Text='<%# Eval("province") %>' Visible="false"></asp:Label>
                                    <asp:DropDownList ID="ddlEditProvince" CssClass="" runat="server">
                                        <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                         <asp:ListItem Text="Alberta" Value="Alberta" />
                                         <asp:ListItem Text="British Columbia" Value="British Columbia" />
                                         <asp:ListItem Text="Manitoba" Value="Manitoba" />
                                         <asp:ListItem Text="New Brunswick" Value="New Brunswick" />
                                         <asp:ListItem Text="Newfoundland and Labrador" Value="Newfoundland and Labrador" />
                                         <asp:ListItem Text="Northwest Territories" Value="Northwest Territories" />
                                         <asp:ListItem Text="Nova Scotia" Value="Nova Scotia" />
                                         <asp:ListItem Text="Nunavut" Value="Nunavut" />
                                         <asp:ListItem Text="Ontario" Value="Ontario" />
                                         <asp:ListItem Text="Prince Edward Island" Value="Prince Edward Island" />
                                         <asp:ListItem Text="Quebec" Value="Quebec" />
                                         <asp:ListItem Text="Saskatchewan" Value="Saskatchewan" />
                                         <asp:ListItem Text="Yukon" Value="Yukon" />
                                    </asp:DropDownList>
                                </EditItemTemplate>
                            </asp:TemplateField>
                             
                            

                             
                            <asp:TemplateField HeaderText="Postalcode">
                                <ItemTemplate>
                                    <asp:Label ID="lblDisplaypostalcode" runat="server" Text='<%# Eval("postalcode") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtEditpostalcode" CssClass="" Text='<%# Eval("postalcode") %>' runat="server"></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>
                            
                             
                            
                            
                            <asp:TemplateField HeaderText="Status">
                                <ItemTemplate>
                                    <asp:Label ID="lblDisplayaccStatus" runat="server" Text='<%# Eval("account_status") %>'></asp:Label>
                                </ItemTemplate>
                                 
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Action">
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkEdit" class="table-link text-primary" runat="server" ToolTip="edit record" CommandName="Edit">
                                   <span class="fa-stack">
                                       <i class="fa fa-square  fa-stack-2x"> </i>
                                       <i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
                                   </span>
                                    </asp:LinkButton>
                                    <asp:LinkButton ID="lnkDelete" class="table-link text-danger" runat="server" Text="Delete" CommandName="Delete" ToolTip="Delete record" OnClientClick="return confirm('Do you want to delete this row?');">
                                   <span class="fa-stack">
                                       <i class="fa fa-square  fa-stack-2x"> </i>
                                       <i class=" fa fa-trash fa-stack-1x fa-inverse"></i>

                                   </span>
                                    </asp:LinkButton>

                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:LinkButton ID="lnkUpdate" class="table-link text-success" runat="server" Text="Update" CommandName="Update" ToolTip="Update record">
                                   <span class="fa-stack">
                                       <i class="fa fa-square  fa-stack-2x"> </i>
                                       <i class="fa fa-spinner fa-stack-1x fa-inverse"></i>
                                   </span>
                                    </asp:LinkButton>
                                    <asp:LinkButton ID="lnkCancel" class="table-link text-danger" runat="server" Text="Cancel" CommandName="Cancel" ToolTip="Cancel record">
                                   <span class="fa-stack">
                                       <i class="fa fa-square  fa-stack-2x"> </i>
                                       <i class=" fa fa-times-circle fa-stack-1x fa-inverse"></i>

                                   </span>
                                    </asp:LinkButton>
                                </EditItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <PagerSettings Mode="NumericFirstLast" PageButtonCount="4" FirstPageText="First" LastPageText="Last" />
                    </asp:GridView>
                </div>
            </div>

        </div>
    </div>
</asp:Content>