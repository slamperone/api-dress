<div class="form-wrapper">
    <h3>QUEREMOS <span class="little">SABER DE TI</span></h3>
    <p>Ingresa tus datos, nos pondremos en contacto a la brevedad</p>
    <form action="" id="formulario" class="formulario">
        <ul>
            <li>
                <input id="nombre" maxlength="50" name="nombre" size="20" type="text" required="" class="sinvalidar" onBlur="validarNombre('nombre')" oninput="validarNombre('nombre')"/>
                <label for="nombre">Nombre</label>
            </li>
            <li>
                <input id="email" maxlength="80" name="email" size="20" type="text" required="" class="sinvalidar" onBlur="validarCorreo('email')" oninput="validarCorreo('email')" />
                <label for="email">Correo</label>
            </li>
            <li>
                <input id="telefono" maxlength="13" name="telefono" size="20" type="text" required="" class="sinvalidar" onBlur="validarTelefono('telefono')" oninput="validarTelefono('telefono')" onkeypress="return isNumberKey(event)"/>
                <label for="telefono">Teléfono</label>
            </li>
            <li>
                <textarea name="mensaje" id="mensaje" cols="30" rows="10"></textarea>
                <label for="mensaje">Mensaje</label>
            </li>
        </ul>               
        <button type="submit" name="enviar" class="enviar boton flecha-before" onclick="validacion()">ENVIAR</button>
    </form>
</div>      