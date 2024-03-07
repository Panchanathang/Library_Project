<%@ Page Title="Penalty Details" Language="C#" MasterPageFile="~/Admin/AdminSite.Master" AutoEventWireup="true" CodeBehind="Penalty.aspx.cs" Inherits="Library_Project.Admin.Penalty" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <script src="../datatable/js/jquery.dataTables.min.js"></script>

 <script type="text/javascript">
     $(document).ready(function () {
         $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
     });

 </script>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2>Penalty Payment Details</h2>
                <hr />
                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
