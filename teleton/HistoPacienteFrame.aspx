﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HistoPacienteFrame.aspx.cs" Inherits="HistoPacienteFrame" EnableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
<form id="form1" runat="server">
   <div id = "content">
       <div id="navcenter">
        <div id="titulo">
        </div>
 
    <div class="cajas"> 
      
                <fieldset>
                <ul class="list">
                    <li class="field" >
                        <asp:Label ID="lb_Paciente" runat="server" Font-Bold="True" ForeColor="Red"  ></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lb_Expe" runat="server" Text="" Font-Bold="true" ForeColor="Red"></asp:Label>
                        <br />
                        <asp:TextBox ID="txt_historial" runat="server" Height="83px" 
                            TextMode="MultiLine" Width="96%" BorderStyle="Outset" Enabled="False"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btn_guardar"  CssClass="boton" runat="server" Text="Guardar" 
                            onclick="btn_guardar_Click" Enabled="False" BackColor="#CC0000" 
                            BorderColor="Black" ForeColor="White" />
                    </li>
                </ul>            
       </fieldset>
   
        <br />
        <div>
   

            <fieldset>

                <asp:GridView ID="grd_Historial" CssClass="Grid" runat="server" Width="100%" 
                    AutoGenerateColumns="False" DataKeyNames="Fecha" AllowPaging="True" 
                    onpageindexchanging="grd_Historial_PageIndexChanging" > 
                    <HeaderStyle Height="18px" BackColor="Black" ForeColor="White" />
                    <pagerstyle backcolor="ControlLight"/>
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:ImageButton ID="Ver" runat="server" CausesValidation="False" 
                                CommandName="View" ImageUrl="~/imagenes/view.png" OnClick="Ver_Click" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField HeaderText="Fecha" DataField="Fecha" ReadOnly="true" SortExpression="Fecha"/>
                        <asp:BoundField HeaderText="Expediente" DataField="n_expediente" ReadOnly="true" SortExpression="Expediente"/>
                        <asp:BoundField HeaderText="Doctor" DataField="username" ReadOnly="true" SortExpression="Usuario"/>
                        <asp:BoundField HeaderText="Historial" DataField="historial" ReadOnly="true" Visible="false" SortExpression="historial" />
                    </Columns>
                    <RowStyle Height="20px" />
                    <SelectedRowStyle ForeColor="Red" />
                </asp:GridView>
                <br />
         </fieldset>
        </div>

    </div>
     </div>
     </form>
</body>
</html>
