<%@ Page Title="" Language="C#" MasterPageFile="~/MasterHome.Master" AutoEventWireup="true" CodeBehind="physics.aspx.cs" Inherits="Sci_Instruments.userHome.physics" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .c1 {
            width: 200px;
            height: 300px;
            margin: 12px;
            padding: 12px;
            display: flex;
            justify-content: space-between;
        }

            .c1 img {
                object-fit: cover;
            }

        #slider {
            width: 100%;
            height: 300px;
            overflow: hidden;
            position: relative;
        }

            #slider img {
                width: 100%;
                height: 100%;
                object-fit: cover;
                position: absolute;
                top: 0;
                left: 0;
                opacity: 0;
                transition: opacity 0.5s ease-in-out;
            }

                #slider img.active {
                    opacity: 1;
                }
    </style>

    <script type="text/javascript">
  window.addEventListener('load', function () {
    var images = document.querySelectorAll('#slider img');
    var currentIndex = 0;
    var interval = setInterval(changeImage, 2000);

    function changeImage() {
      images[currentIndex].classList.remove('active');
      currentIndex = (currentIndex + 1) % images.length;
      images[currentIndex].classList.add('active');
    }
  });
</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div id="slider">
            <img src="image1.jpg" alt="Image 1" />
            <img src="image2.jpg" alt="Image 2" />
            <img src="image3.jpg" alt="Image 3" />
        </div>
    </div>



    <asp:Repeater runat="server" ID="d1">
        <HeaderTemplate>
            <ul>
        </HeaderTemplate>

        <ItemTemplate>
            <li>
                <div class="card c1">
                    <img src="<../<%#Eval("product_images") %>" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title"><%#Eval("product_name") %></h5>
                        <p class="card-text"><%#Eval("product_description") %></p>
                        <strong class="card-price"><%#Eval("product_price") %></strong>
                    </div>
                </div>
            </li>
            <footertemplate>
    </ul>
</footertemplate>
        </ItemTemplate>
    </asp:Repeater>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:registerConnectionString %>" SelectCommand="SELECT * FROM [add_product]"></asp:SqlDataSource>

</asp:Content>
