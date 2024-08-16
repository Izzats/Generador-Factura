<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1" />
<!-- <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU"
      crossorigin="anonymous"
    /> -->
    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script><title>Insert title here</title>
    
    
<title>DATOS DE FACTURA CLIENTE QUINDE</title>
</head>
<body>
<%
	HttpSession sesionUsuario = request.getSession();
	String nombreUsuario = (String)sesionUsuario.getAttribute("nombre");
	sesionUsuario.setAttribute("nombreUsuario", nombreUsuario);
%>
	
	<nav class="navbar navbar-expand navbar-dark bg-primary"> <a href="#menu-toggle" id="menu-toggle" class="navbar-brand"><span class="navbar-toggler-icon"></span></a> <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample02" aria-controls="navbarsExample02" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
            <div class="collapse navbar-collapse" id="navbarsExample02">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active"> <a class="nav-link" href="#">Bienvenido: <%= nombreUsuario %> <span class="sr-only">(current)</span></a> </li>
                    <li class="nav-item active"> <a class="nav-link" href="logout">Cerrar Sesion<span class="sr-only">(current)</span></a> </li>
                    
                </ul>
                <form class="form-inline my-2 my-md-0"> </form>
            </div>
      </nav>

<div>
    <div class="container mt-5 mb-5">
      <form action="procesaFactura" method="POST">
        <div class="row">
          <div class="col-sm">
            <label for="nombre">Nombre Completo</label>
            <input
              type="text"
              class="form-control"
              id="nombre"
              name="nombre"
              placeholder="Nombre Completo"
              required
              style="width: 300px"
            />
          </div>
          <div class="col-sm">
            <label for="empresa">Empresa</label>
            <input
              type="text"
              class="form-control"
              id="empresa"
              name="empresa"
              required
              placeholder="Empresa"
              style="width: 300px"
            />
          </div>
          <div class="col-sm">
            <label for="rut">Rut</label>
            <input
              type="text"
              class="form-control"
              id="rut"
              name="rut"
              required
              placeholder="Rut"
              style="width: 300px"
            />
          </div>
        </div>

        <div class="row">
          <div class="col-sm">
            <label for="direccion">Direccion</label>
            <input
              type="text"
              class="form-control"
              id="direccion"
              name="direccion"
              placeholder="Direccion"
              required
              style="width: 300px"
            />
          </div>
          <div class="col-sm">
            <label for="ciudad">Ciudad</label>
            <input
              type="text"
              class="form-control"
              id="ciudad"
              name="ciudad"
              required
              placeholder="Ciudad"
              style="width: 300px"
            />
          </div>
          <div class="col-sm">
            <label for="pais">Pais</label>
            <input
              type="text"
              class="form-control"
              id="pais"
              name="pais"
              required
              placeholder="Pais"
              style="width: 300px"
            />
          </div>
        </div>
        
							<div style="padding-top:50px;">
								<table class="table table-striped table-light">
									<thead>
										<tr>
											<th scope="col">ITEM</th>
											<th scope="col">DESCRIPCION</th>
											<th scope="col">VALOR UNIDAD</th>
											<th scope="col">CANTIDAD</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>Mascarilla Sust. Butterfly</td>
											<td>Masc./Cuerdas rep./Ecotela filter</td>
											<td>$34890</td>
											<td><input class="form-control form-control-sm"
												type="number" name="butterfly" id="butterfly" placeholder="cantidad" required></td>
										</tr>
										<tr>
											<td>Billetera Clásica Horizontal RFID</td>
											<td>Cabretilla/Hilo encerado/RFID protecion.</td>
											<td>$32180</td>
											<td><input class="form-control form-control-sm"
												type="number" name="clasicahorizontal" id="clasicahorizontal" placeholder="cantidad" required></td>
										</tr>
										<tr>
											<td>Portapasaporte RFID</td>
											<td>Cabretilla/Hilo encerado/RFID protection</td>
											<td>$29750</td>
											<td><input class="form-control form-control-sm"
												type="number" name="portapasaporte" id="portapasaporte" placeholder="cantidad" required></td>
										</tr>
										<tr>
											<td>Billetera Portaretrato RFID</td>
											<td>Cabretilla/Hilo encerado/RFID protection</td>
											<td>$26580</td>
											<td><input class="form-control form-control-sm"
												type="number" name="portaretrato" id="portaretrato" placeholder="cantidad" required></td>
										</tr>
										<tr>
											<td>Cinturón Cuero</td>
											<td>Casual Elegante/Suela/3,5 ml espesor</td>
											<td>$19150</td>
											<td><input class="form-control form-control-sm"
												type="number" name="cinturon" id="cinturon" placeholder="cantidad" required></td>
										</tr>
									</tbody>
								</table>
								</div>
        


 <div
          style="
            margin: 0 auto;
            padding-left: 20px;
            padding-right: 20px;
            padding-bottom: 20px;
            float: right;
          "
        >
          <button type="submit" class="btn btn-info">Genera Factura</button>
          <button type="button" class="btn btn-outline-secondary">Limpiar</button>
        </div>

</body>
</html>