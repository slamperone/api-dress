<?php include "head.php"?>
<body class="diana-color">
<?php include "header.php"?>
<div class="overlay-black"></div>
    <div id="section-video">
        <div class="overlay-video"></div>
        <img class="video-desktop" src="./img/video-dg.jpg " alt="">
        <img class="video-responsive" src="./img/video-responsive.jpg" alt="">
        <a href="" class="flecha-before">enamórate</a>
    </div>
    <div class="banner-nina">
        <img class="banner-desk" src="./img/banner.jpg" alt="">
        <img class="banner-mob" src="./img/banner-mobile.png" alt="">
        <a href="" class="flecha-before flecha-gris">enamórate</a>
    </div>
    <section id="escaparate">
        <h1>Escaparate</h1>
        <?php include "vestidos.php"?>
        <a href="" class="flecha-before flecha-gris descubre">descubre más</a>
    </section>
    <section id="form-container">
        <?php include "formulario.php"?>
    </section>
    <section id="donde-comprar">
        <img src="./img/mapa-mexico.svg" alt="">
        <div class="text-contain">
            <h3>¿DÓNDE COMPRAR?</h3>
            <p>Localiza tu tienda</p>
            <a href="">buscar</a>
        </div>
    </section>
    <section id="newsletter">
        <h3>¡MANTENTE A LA VANGUARDIA!</h3>
        <p>Sé la primera en recibir las últimas noticias sobre tendecias, promociones y mucho más</p>
        <form action="" class="form-news">
            <p>
                <input maxlength="80" name="email" size="20" type="text" required="" class="sinvalidar" />
                <label for="">Introduce tu email</label>
            </p>
            <button type="submit" name="enviar" class="enviar boton">suscribete</button>
        </form>
    </section>
<?php include "footer.php"?>    
</body>
</html>

<script src="./js/swiper-6.4.5.min.js"></script>
<!-- Initialize Swiper -->
<script>
    var swiper = new Swiper('.swiper-container', {
    slidesPerView: 2,
    spaceBetween: 30,
    pagination: {
        el: '.swiper-pagination',
        clickable: true,
    },
    breakpoints: {
        320: {
            slidesPerView: 1,
            spaceBetween: 30,
        },
        // when window width is >= 480px
        480: {
            slidesPerView: 1,
            spaceBetween: 0,
        },
        // when window width is >= 640px
        890: {
            slidesPerView: 1,
            spaceBetween: 20,
        },
        
    }
   
});
</script>
