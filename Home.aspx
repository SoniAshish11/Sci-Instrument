<%@ Page Title="" Language="C#" MasterPageFile="~/MasterHome.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Sci_Instruments.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container main">
        <div class="content">
            <div class="box col-sm-6">
                <img class="img-fluid" src="img/physics_instruments.jpg" alt="no image" />
            </div>
            <div class="box-description col-sm-6">
                Some important Physics Lab equipments include: Measuring equipments: Vernier calliper, micrometer screw gauge, measuring tape. Magnetic equipments: Bar magnets, iron fillings for magnetism. Optics: Lenses and Prism.
            </div>
        </div>
        <div class="content">

            <div class="box-description">
                The earliest laboratory according to the present evidence is a home laboratory of Pythagoras of Samos, the well-known Greek philosopher and scientist. This laboratory was created when Pythagoras conducted an experiment about tones of sound and vibration
                of string.
            </div>
            <div class="box">
                <img class="img-fluid" src="img/school.jpg" alt="no image" />
            </div>
        </div>


        <div class="image-container col-sm-12">
                        
                <h2 >Departments</h2>
            <div class="content">
                <div class="link1 col-sm-3 ">
                    <a href="physics.aspx">
                        <img src="img/phy.jpg" alt="Alternate Text" /></a>
                </div>
                <div class="link1 col-sm-3">
                    <a href="chemistry.aspx"> <img src="img/che.jpg" alt="Alternate Text" /> </a>
                </div>
                <div class="link1 col-sm-3">
                    <a href="bio.aspx"> <img src="img/bio1.jpg" alt="Alternate Text" /> </a>
                </div>



            </div>

                <h2>Instruments</h2>
            <div class="content">

                <div class="link1 col-sm-3">
                    <img class="img-thumbnail w-100 h-100" src="instruments/IMG3.jpg" alt="Alternate Text" />
                </div>
                <div class="link1 col-sm-3">
                    <img class="img-thumbnail w-100 h-100" src="instruments/IMG2.jpg" alt="Alternate Text" />
                </div>
                <div class="link1 col-sm-3">
                    <img src="instruments/IMG1.jpg" class="img-thumbnail w-100 h-100" alt="Alternate Text" />
                </div>



            </div>

            <div class="content col-sm-12">

                <div class="link1 col-sm-3">
                    <img class="img-thumbnail   w-100 h-100" src="instruments/IMG4.jpg" alt="Alternate Text" />
                </div>
                <div class="link1 col-sm-3">
                    <img class="img-thumbnail w-100 h-100" src="instruments/IMG5.jpg" alt="Alternate Text" />
                </div>
                <div class="link1 col-sm-3">
                    <img src="instruments/IMG6.jpg" class="img-thumbnail w-100 h-100" alt="Alternate Text" />
                </div>



            </div>
            <div class="content col-sm-12">

                <div class="link1 col-sm-3">
                    <asp:Repeater runat="server"></asp:Repeater>

                </div>
                <div class="link1 col-sm-3">
                    <img class="img-thumbnail w-100 h-100" src="instruments/IMG5.jpg" alt="Alternate Text" />
                </div>
                <div class="link1 col-sm-3">
                    <img src="instruments/IMG6.jpg" class="img-thumbnail w-100 h-100" alt="Alternate Text" />
                </div>



            </div>
        </div>




    </div>

</asp:Content>
