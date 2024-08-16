<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- <script src= "https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"></script>
<script src= "https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"></script>
<script src= "https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="./style.css"></script> -->



<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script><title>Insert title here</title>

<title>Insert title here</title>
</head>
<body>

<% 
String nombre = (String)request.getAttribute("nombre");
String empresa = (String)request.getAttribute("empresa");
String direccion = (String)request.getAttribute("direccion");
String rut = (String)request.getAttribute("rut");
String ciudad = (String)request.getAttribute("ciudad");
String pais = (String)request.getAttribute("pais");


int precioTotalButterfly = (Integer)request.getAttribute("precioTotalButterfly");
int precioTotalClasicaHorizontal = (Integer)request.getAttribute("precioTotalButterfly");
int precioTotalPortapasaporte = (Integer)request.getAttribute("precioTotalButterfly");
int precioTotalPortaretrato = (Integer)request.getAttribute("precioTotalButterfly");
int precioTotalCinturon = (Integer)request.getAttribute("precioTotalButterfly");


int cantButterfly = (Integer)request.getAttribute("cantButterfly");
int cantClasicaHorizontal = (Integer)request.getAttribute("cantClasicaHorizontal");
int cantPortapasaporte = (Integer)request.getAttribute("cantPortapasaporte");
int cantPortaretrato = (Integer)request.getAttribute("cantPortaretrato");
int cantCinturon = (Integer)request.getAttribute("cantCinturon");


int valorTotal = (Integer)request.getAttribute("valorTotal");
%>


<div class="container mt-5 mb-5">
    <div class="row d-flex justify-content-center">
        <div class="col-lg-8">
            <div class="card">
                <div class="upper p-4">
                    <div class="d-flex justify-content-between">
                        <div class="amount"> <span class="text-primary font-weight-bold"><%= nombre %></span>
                            <h4>$200,000</h4> <small>Thursday,September 24th</small>
                        </div>
                        <div class="d-flex flex-row align-items-center">
                            <div class="add"> <span class="font-weight-bold d-block"><%= empresa %></span> <span class="font-weight-bold d-block"><%= rut %></span> <small><%=  direccion %><%=  ciudad %><%=  pais %></small> </div> <img src="https://i.imgur.com/HKne8Oc.jpg" width="60" class="rounded-circle">
                        </div>
                    </div>
                    <hr>


				<div style="padding-top: 50px;">
					<table class="table table-striped table-light">
						<thead>
							<tr>
								<th scope="col">ITEM</th>
								<th scope="col">DESCRIPCION</th>
								<th scope="col">VALOR UNIDAD</th>
								<th scope="col">CANTIDAD</th>
								<th scope="col">VALOR TOTAL</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>Mascarilla Sust. Butterfly</td>
								<td>Masc./Cuerdas rep./Ecotela filter</td>
								<td>$34890</td>
								<td><%= cantButterfly %></td>
								<td><%= precioTotalButterfly %></td>
							</tr>
							<tr>
								<td>Billetera Clásica Horizontal RFID</td>
								<td>Cabretilla/Hilo encerado/RFID protection</td>
								<td>$32180</td>
								<td><%= cantClasicaHorizontal  %></td>
								<td><%= precioTotalClasicaHorizontal %></td>
							</tr>
							<tr>
								<td>Portapasaporte RFID</td>
								<td>Cabretilla/Hilo encerado/RFID protection</td>
								<td>$29750</td>
								<td><%= cantPortapasaporte %></td>
								<td><%= precioTotalPortapasaporte %></td>
							</tr>
							<tr>
								<td>Billetera Portaretrato RFID</td>
								<td>Cabretilla/Hilo encerado/RFID protection</td>
								<td>$26580</td>
								<td><%= cantPortaretrato %></td>
								<td><%= precioTotalPortaretrato %></td>
							</tr>
							<tr>
								<td>Cinturón Cuero</td>
								<td>Casual Elegante/ Suela/ 3,5 ml espesor</td>
								<td>$19150</td>
								<td><%= cantCinturon %></td>
								<td><%= precioTotalCinturon %></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="row">
					<div class="col-lg-4 col-sm-5"></div>
					<div class="col-lg-4 col-sm-5 ml-auto">
                <div class="table-responsive-sm">
                 <table class="table table-striped">
                      <thead>
                         <tr>
                             <th class="center">#</th>
                             <th>Item</th>
                             <th>Descripcion</th>
                             <th class="right">Precio</th>
                             <th class="center">Cantidad</th>
                             <th class="right">Total</th>
                         </tr>
                     </thead>
                     <tbody>
                         <tr>
                             <td class="center">1</td>
                             <td class="left strong">Mascarilla Sustentable Butterfly</td>
                             <td class="left">Mascarilla/Cuerdas repuesto/Filtros de ecotela</td>
                             <td class="right">$34890</td>
                             <td><%= cantButterfly %></td>
                             <td><%= precioTotalButterfly %></td>
                         </tr>
                         <tr>
                             <td class="center">2</td>
                             <td class="left">Billetera Clásica Horizontal RFID</td>
                             <td class="left">Cuero cabretilla/Hilo encerado/RFID protection</td>
                             <td class="right">$32180</td>
                             <td><%= cantClasicaHorizontal %></td>
                             <td><%= precioTotalClasicaHorizontal %></td>                             
                         </tr>
                         <tr>
                             <td class="center">3</td>
                             <td class="left">Portapasaporte RFID</td>
                             <td class="left">Cuero cabretilla/Hilo encerado/RFID protection</td>
                             <td class="right">$29750</td>
                             <td><%= cantPortapasaporte %></td>
                             <td><%= precioTotalPortapasaporte %></td>                             
                         </tr>
                         <tr>
                             <td class="center">4</td>
                             <td class="left">Billetera Portaretrato RFID</td>
                             <td class="left">Cuero cabretilla/Hilo encerado/RFID protection</td>
                             <td class="right">$26580</td>
                             <td><%= cantPortaretrato %></tr>
                             <td><%= precioTotalPortaretrato %></td>
                         <tr>
                             <td class="center">5</td>
                             <td class="left">Cinturón Cuero</td>
                             <td class="left">Casual Elegante/ Suela/ 3,5 ml espesor/</td>
                             <td class="right">$19150</td>
                             <td><%= cantCinturon %></tr>
                             <td><%= precioTotalCinturon %></td>
                     </tbody>
                 </table> 
                 
             </div> 

                    <hr>
                    <div class="transaction mt-2">
                        <div class="d-flex justify-content-between">
                            <div class="d-flex flex-row align-items-center"> <i class="fa fa-check-circle-o"></i> <span class="ml-2">Subtotal </span> </div> <span class="font-weight-bold">$200,00</span>
                        </div>
                    </div>
                    <div class="transaction mt-2">
                        <div class="d-flex justify-content-between">
                            <div class="d-flex flex-row align-items-center"> <i class="fa fa-check-circle-o"></i> <span class="ml-2">Discount (20%) </span> </div> <span class="font-weight-bold">8% - $16000</span>
                        </div>
                    </div>
                    <div class="transaction mt-2">
                        <div class="d-flex justify-content-between">
                            <div class="d-flex flex-row align-items-center"> <i class="fa fa-check-circle-o"></i> <span class="ml-2">VAT (10%) </span> </div> <span class="font-weight-bold">8% - $16000</span>
                        </div>
                    </div>
                    <div class="transaction mt-2">
                        <div class="d-flex justify-content-between">
                            <div class="d-flex flex-row align-items-center"> <i class="fa fa-check-circle-o"></i> <span class="ml-2">Total </span> </div> <span class="font-weight-bold"><%= valorTotal %></span>
                        </div>
                    </div>
                </div>
                <div class="lower bg-primary p-4 py-5 text-white d-flex justify-content-between">
                    <div class="d-flex flex-column"> <span>Cost including service charges</span> <small>This nuber may change depending on replair and your home conditions</small> </div>
                    <h3><%= valorTotal %></h3>
                </div>
            </div>
        </div>
    </div>
</div>

<script src= "https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>


</body>
</html>