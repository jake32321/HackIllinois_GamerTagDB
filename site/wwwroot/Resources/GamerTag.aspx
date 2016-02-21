<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GamerTag.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Gamer-Tag Database</title>
    <link rel="stylesheet" type="text/css" href="homeStyle.css" />
</head>
<body>
    <form id="form1" runat="server">
    <header>
        Gamer-Tag Database
    </header>
        <nav>
            <table>
                <tr>
                    <h3> Actions: </h3>
                </tr>
                <tr>
                    <td>
                        <a href ="./GamerTag.aspx">Add New Entry</a>
                    </td>
                </tr>
                <tr>
                    <a href ="./ViewAll.aspx">View All Entries</a>
                </tr>
            </table>
            <br/>
            <a href="https://orgsync.com/22120/chapter"><img src="./Resources/acm.png" width="100" height="100" /></a>
            <a href="https://salukilan.com"><img src="./Resources/salukilan.png" width="84" height="110" /></a>
        </nav>
    <section>
        <article> 
        <p>
            Welcome To The Gamer-Tag Database
        </p>
        <p>
            <asp:ImageButton ID="liveImg" runat="server" ImageUrl="~/Resources/live.png" OnClick="liveImg_Click" />
            <asp:ImageButton ID="psnImg" runat="server" ImageUrl="~/Resources/psn.png" OnClick="psnImg_Click" />
            <asp:ImageButton ID="steamImg" runat="server" ImageUrl="~/Resources/steam.png" OnClick="steamImg_Click" />
            <asp:ImageButton ID="wiiuImg" runat="server" ImageUrl="~/Resources/wiiu.png" OnClick="wiiuImg_Click" />
        </p>
            <table align="center">
                <tr>
                    <td>
                        Name:&nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                        <asp:TextBox ID="name" runat="server" BackColor="Black" CssClass="textbox" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Games:&nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                        <asp:TextBox ID="games" runat="server" BackColor="Black" CssClass="textbox" />
                    </td>
                </tr>
                <tr>
                    <!-- ASP panel for Live ID -->
                    <asp:Panel ID="livePanel" runat="server" Visible="False" HorizontalAlign="Center">
                        <td>
                            Live:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td>
                            <asp:TextBox ID="live" runat="server" BackColor="Black" CssClass="textbox" />
                        </td>
                    </asp:Panel>
                </tr>
                <tr>
                     <asp:Panel ID="psnPanel" runat="server" Visible="False" HorizontalAlign="Center">
                         <td>
                             PSN:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         </td>
                         <td>
                             <asp:TextBox ID="psn" runat="server" BackColor="Black" CssClass="textbox" />
                         </td>
                     </asp:Panel>
                </tr>
                <tr>
                    <asp:Panel ID="steamPanel" runat="server" Visible="False" HorizontalAlign="Center">
                        <td>
                             Steam:&nbsp;&nbsp;
                        </td>
                        <td>
                            <asp:TextBox ID="steam" runat="server" BackColor="Black" CssClass="textbox" />
                        </td>
                    </asp:Panel>
                </tr>
                <tr>
                    <asp:Panel ID="wiiuPanel" runat="server" Visible="False" HorizontalAlign="Center">
                        <td>
                            WiiU:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td>
                            <asp:TextBox ID="wiiu" runat="server" BackColor="Black" CssClass="textbox" />
                        </td>
                    </asp:Panel>
                </tr>
            </table>   
            <p>
                <asp:Button ID="verifyButton" runat="server" Text="Verify" BackColor="Black" OnClick="verifyButton_Click" />
                <asp:Button ID="clearButton" runat="server" Text="Clear All" BackColor="Black" OnClick="clearButton_Click" />
            </p>
            <p>
                <asp:Label ID="outputLabel" runat="server"></asp:Label>
            </p>
            <asp:Panel ID="delPanel" runat="server" Visible ="False" HorizontalAlign="Center">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Delete Key:&nbsp;&nbsp;
                <asp:TextBox ID="delete" runat="server" BackColor="Black" CssClass="textbox" MaxLength="6" TextMode="Password" />
                &nbsp;&nbsp;(Optional 6 chars)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </asp:Panel>
            <p>
                <asp:Button ID="submitButton" runat="server" Text="Submit" BackColor="Black" OnClick="submitButton_Click" Visible="False" />
            </p>
            <p>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GamerTagDBConnectionString %>" SelectCommand="SELECT [live], [name], [psn], [steam], [wiiu] FROM [Table]"></asp:SqlDataSource>
            </p>
        </article>
     </section>        
    <footer>
        <p><small>
        &copy; Copyright 2015 Ethan Richardson & Jake Reed<br />
        </small></p>
    </footer>
    </form>
</body>
</html>
