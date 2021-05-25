<?php include "head.php"?>
<body class="product-page gold">
<?php include "header.php"?>
<div id="content-wrapper">
    <figure id="zoom-fig" class="zoom" onmousemove="zoom(event)">
        <img id="zoom-img" src="" />
    </figure>
    <div id="image-wrapper">
        <img id="thumb-gal-01" class="thumbnail it_selected" src="" alt="">
        <img id="thumb-gal-02" class="thumbnail" src="" alt="">
    </div>
    <div id="description">
        <h4 id="nombre_vestido"></h4>
        <p class="modelo">Modelo: <span id="sku"></span></p>
        <p class="coleccion">Colección: <span id="coleccion"></span></p>
        <p class="color">Color: 
            <span id="selector-colores" class="colores">
                
            </span>
        </p>
        <div class="caracteristicas">
            <table cellspacing="12" cellpadding="12">
                <tr>
                    <td>Corte</td>
                    <td id="infoCorte" class="lower" ></td>
                </tr>
                <tr>
                    <td>Material</td>
                    <td id="infoMaterial" class="lower"></td>
                </tr>
                <tr>
                    <td>Colores</td>
                    <td id="infoColor" class="lower"></td>
                </tr>
                <tr>
                    <td>Características</td>
                    <td id="infoCaracteristicas" class="lower"></td>
                </tr>
                <tr>
                    <td>Tallas</td>
                    <td id="infoTallas" class="lower"></td>
                </tr>
                <tr>
                    <td>Caida</td>
                    <td id="infoCaida" class="lower"></td>
                </tr>
            </table>
        </div>
        <div class="link-redes">
            <p>Share:</p>
            <a href="">
                <svg width="14" height="26" viewBox="0 0 14 26" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M13.0839 14.6241L13.8079 9.92086H9.27177V6.86376C9.27177 5.57773 9.90712 4.32108 11.9388 4.32108H14V0.315998C14 0.315998 12.1235 0 10.3356 0C6.59736 0 4.15198 2.25608 4.15198 6.33465V9.92086H0V14.6241H4.15198V26H9.26438V14.6241H13.0839Z"/>
                </svg>
            </a>                    
            <a href="">
                <svg width="28" height="29" viewBox="0 0 28 29" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <g clip-path="url(#clip0)">
                        <path d="M14 3.21934C17.7406 3.21934 18.1836 3.23574 19.6547 3.30137C21.0219 3.36152 21.7602 3.59121 22.2523 3.78262C22.9031 4.03418 23.3734 4.34043 23.8602 4.82715C24.3523 5.31934 24.6531 5.78418 24.9047 6.43496C25.0961 6.92715 25.3258 7.6709 25.3859 9.03262C25.4516 10.5092 25.468 10.9521 25.468 14.6873C25.468 18.4279 25.4516 18.8709 25.3859 20.342C25.3258 21.7092 25.0961 22.4475 24.9047 22.9397C24.6531 23.5904 24.3469 24.0607 23.8602 24.5475C23.368 25.0397 22.9031 25.3404 22.2523 25.592C21.7602 25.7834 21.0164 26.0131 19.6547 26.0732C18.1781 26.1389 17.7352 26.1553 14 26.1553C10.2594 26.1553 9.81641 26.1389 8.34531 26.0732C6.97813 26.0131 6.23984 25.7834 5.74766 25.592C5.09688 25.3404 4.62656 25.0342 4.13984 24.5475C3.64766 24.0553 3.34688 23.5904 3.09531 22.9397C2.90391 22.4475 2.67422 21.7037 2.61406 20.342C2.54844 18.8654 2.53203 18.4225 2.53203 14.6873C2.53203 10.9467 2.54844 10.5037 2.61406 9.03262C2.67422 7.66543 2.90391 6.92715 3.09531 6.43496C3.34688 5.78418 3.65313 5.31387 4.13984 4.82715C4.63203 4.33496 5.09688 4.03418 5.74766 3.78262C6.23984 3.59121 6.98359 3.36152 8.34531 3.30137C9.81641 3.23574 10.2594 3.21934 14 3.21934ZM14 0.698242C10.1992 0.698242 9.72344 0.714648 8.23047 0.780273C6.74297 0.845898 5.72031 1.08652 4.83438 1.43105C3.91016 1.79199 3.12813 2.26777 2.35156 3.0498C1.56953 3.82637 1.09375 4.6084 0.732813 5.52715C0.388281 6.41856 0.147656 7.43574 0.0820313 8.92324C0.0164063 10.4217 0 10.8975 0 14.6982C0 18.499 0.0164063 18.9748 0.0820313 20.4678C0.147656 21.9553 0.388281 22.9779 0.732813 23.8639C1.09375 24.7881 1.56953 25.5701 2.35156 26.3467C3.12813 27.1232 3.91016 27.6045 4.82891 27.96C5.72031 28.3045 6.7375 28.5451 8.225 28.6107C9.71797 28.6764 10.1938 28.6928 13.9945 28.6928C17.7953 28.6928 18.2711 28.6764 19.7641 28.6107C21.2516 28.5451 22.2742 28.3045 23.1602 27.96C24.0789 27.6045 24.8609 27.1232 25.6375 26.3467C26.4141 25.5701 26.8953 24.7881 27.2508 23.8693C27.5953 22.9779 27.8359 21.9607 27.9016 20.4732C27.9672 18.9803 27.9836 18.5045 27.9836 14.7037C27.9836 10.9029 27.9672 10.4271 27.9016 8.93418C27.8359 7.44668 27.5953 6.42402 27.2508 5.53809C26.9063 4.6084 26.4305 3.82637 25.6484 3.0498C24.8719 2.27324 24.0898 1.79199 23.1711 1.43652C22.2797 1.09199 21.2625 0.851367 19.775 0.785742C18.2766 0.714648 17.8008 0.698242 14 0.698242Z"/>
                        <path d="M14 7.50684C10.0297 7.50684 6.80859 10.7279 6.80859 14.6982C6.80859 18.6686 10.0297 21.8896 14 21.8896C17.9703 21.8896 21.1914 18.6686 21.1914 14.6982C21.1914 10.7279 17.9703 7.50684 14 7.50684ZM14 19.3631C11.4242 19.3631 9.33516 17.274 9.33516 14.6982C9.33516 12.1225 11.4242 10.0334 14 10.0334C16.5758 10.0334 18.6648 12.1225 18.6648 14.6982C18.6648 17.274 16.5758 19.3631 14 19.3631Z"/>
                        <path d="M23.1547 7.22237C23.1547 8.15205 22.4 8.90127 21.4758 8.90127C20.5461 8.90127 19.7969 8.14658 19.7969 7.22237C19.7969 6.29268 20.5516 5.54346 21.4758 5.54346C22.4 5.54346 23.1547 6.29815 23.1547 7.22237Z"/>
                    </g>
                    <defs>
                        <clipPath id="clip0">
                            <rect width="28" height="28" transform="translate(0 0.698242)"/>
                        </clipPath>
                    </defs>
                </svg>
            </a>                    
            <a href="">
                <svg width="20" height="27" viewBox="0 0 20 27" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <g clip-path="url(#clip0)">
                        <path fill-rule="evenodd" clip-rule="evenodd" d="M8.36551 17.6124C8.34362 17.6887 8.32172 17.7574 8.30712 17.8185C7.35821 21.7029 7.25603 22.5652 6.27792 24.3739C5.81077 25.2286 5.29252 26.0451 4.70858 26.8235C4.64289 26.9151 4.58449 27.022 4.45311 26.9991C4.30712 26.9609 4.29982 26.8312 4.27792 26.7091C4.12464 25.5262 4.03705 24.3433 4.07354 23.1528C4.12464 21.6036 4.30712 21.0694 6.21953 12.652C6.24873 12.5222 6.21953 12.4154 6.17573 12.3009C5.71588 11.0112 5.62829 9.69862 6.02975 8.36312C6.89836 5.4937 10.0078 5.27239 10.5553 7.63813C10.8911 9.10337 10.0006 11.0189 9.32172 13.8577C8.75968 16.193 11.3874 17.8566 13.6429 16.1548C15.7159 14.5827 16.5261 10.8052 16.3728 8.13417C16.0735 2.79981 10.4823 1.64746 6.93486 3.36453C2.86916 5.33344 1.94216 10.5991 3.78157 13.0107C4.01515 13.3159 4.19033 13.5067 4.11734 13.812C4.00055 14.2927 3.89836 14.7811 3.76697 15.2619C3.67208 15.6206 3.38741 15.7503 3.04435 15.6053C2.36551 15.323 1.80347 14.8651 1.34362 14.2775C-0.225727 12.2551 -0.670982 8.26391 1.38741 4.88318C3.67208 1.13615 7.92756 -0.382502 11.8035 0.0753842C16.4385 0.624847 19.3655 3.93689 19.913 7.69155C20.1611 9.40099 19.986 13.6212 17.6867 16.6051C15.0443 20.0316 10.7597 20.2605 8.78887 18.1542C8.63559 17.994 8.5115 17.8032 8.36551 17.6124Z"/>
                    </g>
                    <defs>
                        <clipPath id="clip0">
                            <rect width="20" height="27"/>
                        </clipPath>
                    </defs>
                </svg>
            </a>                    
        </div>
        <div class="swiper-container">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <img src="./img/vestido-hover.jpg" alt="">
                </div>
                <div class="swiper-slide">
                    <img src="./img/vestido-azul.jpg" alt="">
                </div>
                <div class="swiper-slide">
                    <img src="./img/vestido-hover.jpg" alt="">
                </div>
            </div>
            <div class="swiper-pagination"></div>
        </div>
        <div class="a-contain">
            <a href="donde-comprar.php" class="border-buton">Donde Comprar</a>
        </div>
    </div>
    </div>
    <div id="responsive-container" class="layout-product-2">
        <div id="description">
            <h4 id="nombre_vestido"></h4>
            <p class="modelo">Modelo: <span id="sku"></span></p>
            <p class="coleccion">Colección: <span id="coleccion"></span></p>
            <p class="color">Color: 
                <span id="selector-colores" class="colores">
                    
                </span>
            </p>
            <div class="link-redes">
                <p>Share:</p>
                <a href="">
                    <svg width="14" height="26" viewBox="0 0 14 26" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M13.0839 14.6241L13.8079 9.92086H9.27177V6.86376C9.27177 5.57773 9.90712 4.32108 11.9388 4.32108H14V0.315998C14 0.315998 12.1235 0 10.3356 0C6.59736 0 4.15198 2.25608 4.15198 6.33465V9.92086H0V14.6241H4.15198V26H9.26438V14.6241H13.0839Z"/>
                    </svg>
                </a>                    
                <a href="">
                    <svg width="28" height="29" viewBox="0 0 28 29" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <g clip-path="url(#clip0)">
                            <path d="M14 3.21934C17.7406 3.21934 18.1836 3.23574 19.6547 3.30137C21.0219 3.36152 21.7602 3.59121 22.2523 3.78262C22.9031 4.03418 23.3734 4.34043 23.8602 4.82715C24.3523 5.31934 24.6531 5.78418 24.9047 6.43496C25.0961 6.92715 25.3258 7.6709 25.3859 9.03262C25.4516 10.5092 25.468 10.9521 25.468 14.6873C25.468 18.4279 25.4516 18.8709 25.3859 20.342C25.3258 21.7092 25.0961 22.4475 24.9047 22.9397C24.6531 23.5904 24.3469 24.0607 23.8602 24.5475C23.368 25.0397 22.9031 25.3404 22.2523 25.592C21.7602 25.7834 21.0164 26.0131 19.6547 26.0732C18.1781 26.1389 17.7352 26.1553 14 26.1553C10.2594 26.1553 9.81641 26.1389 8.34531 26.0732C6.97813 26.0131 6.23984 25.7834 5.74766 25.592C5.09688 25.3404 4.62656 25.0342 4.13984 24.5475C3.64766 24.0553 3.34688 23.5904 3.09531 22.9397C2.90391 22.4475 2.67422 21.7037 2.61406 20.342C2.54844 18.8654 2.53203 18.4225 2.53203 14.6873C2.53203 10.9467 2.54844 10.5037 2.61406 9.03262C2.67422 7.66543 2.90391 6.92715 3.09531 6.43496C3.34688 5.78418 3.65313 5.31387 4.13984 4.82715C4.63203 4.33496 5.09688 4.03418 5.74766 3.78262C6.23984 3.59121 6.98359 3.36152 8.34531 3.30137C9.81641 3.23574 10.2594 3.21934 14 3.21934ZM14 0.698242C10.1992 0.698242 9.72344 0.714648 8.23047 0.780273C6.74297 0.845898 5.72031 1.08652 4.83438 1.43105C3.91016 1.79199 3.12813 2.26777 2.35156 3.0498C1.56953 3.82637 1.09375 4.6084 0.732813 5.52715C0.388281 6.41856 0.147656 7.43574 0.0820313 8.92324C0.0164063 10.4217 0 10.8975 0 14.6982C0 18.499 0.0164063 18.9748 0.0820313 20.4678C0.147656 21.9553 0.388281 22.9779 0.732813 23.8639C1.09375 24.7881 1.56953 25.5701 2.35156 26.3467C3.12813 27.1232 3.91016 27.6045 4.82891 27.96C5.72031 28.3045 6.7375 28.5451 8.225 28.6107C9.71797 28.6764 10.1938 28.6928 13.9945 28.6928C17.7953 28.6928 18.2711 28.6764 19.7641 28.6107C21.2516 28.5451 22.2742 28.3045 23.1602 27.96C24.0789 27.6045 24.8609 27.1232 25.6375 26.3467C26.4141 25.5701 26.8953 24.7881 27.2508 23.8693C27.5953 22.9779 27.8359 21.9607 27.9016 20.4732C27.9672 18.9803 27.9836 18.5045 27.9836 14.7037C27.9836 10.9029 27.9672 10.4271 27.9016 8.93418C27.8359 7.44668 27.5953 6.42402 27.2508 5.53809C26.9063 4.6084 26.4305 3.82637 25.6484 3.0498C24.8719 2.27324 24.0898 1.79199 23.1711 1.43652C22.2797 1.09199 21.2625 0.851367 19.775 0.785742C18.2766 0.714648 17.8008 0.698242 14 0.698242Z"/>
                            <path d="M14 7.50684C10.0297 7.50684 6.80859 10.7279 6.80859 14.6982C6.80859 18.6686 10.0297 21.8896 14 21.8896C17.9703 21.8896 21.1914 18.6686 21.1914 14.6982C21.1914 10.7279 17.9703 7.50684 14 7.50684ZM14 19.3631C11.4242 19.3631 9.33516 17.274 9.33516 14.6982C9.33516 12.1225 11.4242 10.0334 14 10.0334C16.5758 10.0334 18.6648 12.1225 18.6648 14.6982C18.6648 17.274 16.5758 19.3631 14 19.3631Z"/>
                            <path d="M23.1547 7.22237C23.1547 8.15205 22.4 8.90127 21.4758 8.90127C20.5461 8.90127 19.7969 8.14658 19.7969 7.22237C19.7969 6.29268 20.5516 5.54346 21.4758 5.54346C22.4 5.54346 23.1547 6.29815 23.1547 7.22237Z"/>
                        </g>
                        <defs>
                            <clipPath id="clip0">
                                <rect width="28" height="28" transform="translate(0 0.698242)"/>
                            </clipPath>
                        </defs>
                    </svg>
                </a>                    
                <a href="">
                    <svg width="20" height="27" viewBox="0 0 20 27" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <g clip-path="url(#clip0)">
                            <path fill-rule="evenodd" clip-rule="evenodd" d="M8.36551 17.6124C8.34362 17.6887 8.32172 17.7574 8.30712 17.8185C7.35821 21.7029 7.25603 22.5652 6.27792 24.3739C5.81077 25.2286 5.29252 26.0451 4.70858 26.8235C4.64289 26.9151 4.58449 27.022 4.45311 26.9991C4.30712 26.9609 4.29982 26.8312 4.27792 26.7091C4.12464 25.5262 4.03705 24.3433 4.07354 23.1528C4.12464 21.6036 4.30712 21.0694 6.21953 12.652C6.24873 12.5222 6.21953 12.4154 6.17573 12.3009C5.71588 11.0112 5.62829 9.69862 6.02975 8.36312C6.89836 5.4937 10.0078 5.27239 10.5553 7.63813C10.8911 9.10337 10.0006 11.0189 9.32172 13.8577C8.75968 16.193 11.3874 17.8566 13.6429 16.1548C15.7159 14.5827 16.5261 10.8052 16.3728 8.13417C16.0735 2.79981 10.4823 1.64746 6.93486 3.36453C2.86916 5.33344 1.94216 10.5991 3.78157 13.0107C4.01515 13.3159 4.19033 13.5067 4.11734 13.812C4.00055 14.2927 3.89836 14.7811 3.76697 15.2619C3.67208 15.6206 3.38741 15.7503 3.04435 15.6053C2.36551 15.323 1.80347 14.8651 1.34362 14.2775C-0.225727 12.2551 -0.670982 8.26391 1.38741 4.88318C3.67208 1.13615 7.92756 -0.382502 11.8035 0.0753842C16.4385 0.624847 19.3655 3.93689 19.913 7.69155C20.1611 9.40099 19.986 13.6212 17.6867 16.6051C15.0443 20.0316 10.7597 20.2605 8.78887 18.1542C8.63559 17.994 8.5115 17.8032 8.36551 17.6124Z"/>
                        </g>
                        <defs>
                            <clipPath id="clip0">
                                <rect width="20" height="27"/>
                            </clipPath>
                        </defs>
                    </svg>
                </a>                    
            </div>
            <div class="a-contain">
                <a href="donde-comprar.php" class="border-buton">Donde Comprar</a>
            </div>
        </div>
        <div class="swiper-container">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <img src="./img/vestido-hover.jpg" alt="">
                </div>
                <div class="swiper-slide">
                    <img src="./img/vestido-azul.jpg" alt="">
                </div>
                <div class="swiper-slide">
                    <img src="./img/vestido-hover.jpg" alt="">
                </div>
            </div>
            <div class="swiper-pagination"></div>
        </div>
    </div>
    <div id="responsive-container" class="container-650px">
        <h4 id="nombre_vestido"></h4>
        <div class="swiper-container">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <img src="./img/vestido-hover.jpg" alt="">
                </div>
                <div class="swiper-slide">
                    <img src="./img/vestido-azul.jpg" alt="">
                </div>
                <div class="swiper-slide">
                    <img src="./img/vestido-hover.jpg" alt="">
                </div>
            </div>
            <div class="swiper-pagination"></div>
        </div>
        <div id="description">
            <p class="modelo">Modelo: <span id="sku"></span></p>
            <p class="coleccion">Colección: <span id="coleccion"></span></p>
            <p class="color">Color: 
                <span id="selector-colores" class="colores">
                    
                </span>
            </p>
            <div class="link-redes">
                <p>Share:</p>
                <a href="">
                    <svg width="14" height="26" viewBox="0 0 14 26" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M13.0839 14.6241L13.8079 9.92086H9.27177V6.86376C9.27177 5.57773 9.90712 4.32108 11.9388 4.32108H14V0.315998C14 0.315998 12.1235 0 10.3356 0C6.59736 0 4.15198 2.25608 4.15198 6.33465V9.92086H0V14.6241H4.15198V26H9.26438V14.6241H13.0839Z"/>
                    </svg>
                </a>                    
                <a href="">
                    <svg width="28" height="29" viewBox="0 0 28 29" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <g clip-path="url(#clip0)">
                            <path d="M14 3.21934C17.7406 3.21934 18.1836 3.23574 19.6547 3.30137C21.0219 3.36152 21.7602 3.59121 22.2523 3.78262C22.9031 4.03418 23.3734 4.34043 23.8602 4.82715C24.3523 5.31934 24.6531 5.78418 24.9047 6.43496C25.0961 6.92715 25.3258 7.6709 25.3859 9.03262C25.4516 10.5092 25.468 10.9521 25.468 14.6873C25.468 18.4279 25.4516 18.8709 25.3859 20.342C25.3258 21.7092 25.0961 22.4475 24.9047 22.9397C24.6531 23.5904 24.3469 24.0607 23.8602 24.5475C23.368 25.0397 22.9031 25.3404 22.2523 25.592C21.7602 25.7834 21.0164 26.0131 19.6547 26.0732C18.1781 26.1389 17.7352 26.1553 14 26.1553C10.2594 26.1553 9.81641 26.1389 8.34531 26.0732C6.97813 26.0131 6.23984 25.7834 5.74766 25.592C5.09688 25.3404 4.62656 25.0342 4.13984 24.5475C3.64766 24.0553 3.34688 23.5904 3.09531 22.9397C2.90391 22.4475 2.67422 21.7037 2.61406 20.342C2.54844 18.8654 2.53203 18.4225 2.53203 14.6873C2.53203 10.9467 2.54844 10.5037 2.61406 9.03262C2.67422 7.66543 2.90391 6.92715 3.09531 6.43496C3.34688 5.78418 3.65313 5.31387 4.13984 4.82715C4.63203 4.33496 5.09688 4.03418 5.74766 3.78262C6.23984 3.59121 6.98359 3.36152 8.34531 3.30137C9.81641 3.23574 10.2594 3.21934 14 3.21934ZM14 0.698242C10.1992 0.698242 9.72344 0.714648 8.23047 0.780273C6.74297 0.845898 5.72031 1.08652 4.83438 1.43105C3.91016 1.79199 3.12813 2.26777 2.35156 3.0498C1.56953 3.82637 1.09375 4.6084 0.732813 5.52715C0.388281 6.41856 0.147656 7.43574 0.0820313 8.92324C0.0164063 10.4217 0 10.8975 0 14.6982C0 18.499 0.0164063 18.9748 0.0820313 20.4678C0.147656 21.9553 0.388281 22.9779 0.732813 23.8639C1.09375 24.7881 1.56953 25.5701 2.35156 26.3467C3.12813 27.1232 3.91016 27.6045 4.82891 27.96C5.72031 28.3045 6.7375 28.5451 8.225 28.6107C9.71797 28.6764 10.1938 28.6928 13.9945 28.6928C17.7953 28.6928 18.2711 28.6764 19.7641 28.6107C21.2516 28.5451 22.2742 28.3045 23.1602 27.96C24.0789 27.6045 24.8609 27.1232 25.6375 26.3467C26.4141 25.5701 26.8953 24.7881 27.2508 23.8693C27.5953 22.9779 27.8359 21.9607 27.9016 20.4732C27.9672 18.9803 27.9836 18.5045 27.9836 14.7037C27.9836 10.9029 27.9672 10.4271 27.9016 8.93418C27.8359 7.44668 27.5953 6.42402 27.2508 5.53809C26.9063 4.6084 26.4305 3.82637 25.6484 3.0498C24.8719 2.27324 24.0898 1.79199 23.1711 1.43652C22.2797 1.09199 21.2625 0.851367 19.775 0.785742C18.2766 0.714648 17.8008 0.698242 14 0.698242Z"/>
                            <path d="M14 7.50684C10.0297 7.50684 6.80859 10.7279 6.80859 14.6982C6.80859 18.6686 10.0297 21.8896 14 21.8896C17.9703 21.8896 21.1914 18.6686 21.1914 14.6982C21.1914 10.7279 17.9703 7.50684 14 7.50684ZM14 19.3631C11.4242 19.3631 9.33516 17.274 9.33516 14.6982C9.33516 12.1225 11.4242 10.0334 14 10.0334C16.5758 10.0334 18.6648 12.1225 18.6648 14.6982C18.6648 17.274 16.5758 19.3631 14 19.3631Z"/>
                            <path d="M23.1547 7.22237C23.1547 8.15205 22.4 8.90127 21.4758 8.90127C20.5461 8.90127 19.7969 8.14658 19.7969 7.22237C19.7969 6.29268 20.5516 5.54346 21.4758 5.54346C22.4 5.54346 23.1547 6.29815 23.1547 7.22237Z"/>
                        </g>
                        <defs>
                            <clipPath id="clip0">
                                <rect width="28" height="28" transform="translate(0 0.698242)"/>
                            </clipPath>
                        </defs>
                    </svg>
                </a>                    
                <a href="">
                    <svg width="20" height="27" viewBox="0 0 20 27" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <g clip-path="url(#clip0)">
                            <path fill-rule="evenodd" clip-rule="evenodd" d="M8.36551 17.6124C8.34362 17.6887 8.32172 17.7574 8.30712 17.8185C7.35821 21.7029 7.25603 22.5652 6.27792 24.3739C5.81077 25.2286 5.29252 26.0451 4.70858 26.8235C4.64289 26.9151 4.58449 27.022 4.45311 26.9991C4.30712 26.9609 4.29982 26.8312 4.27792 26.7091C4.12464 25.5262 4.03705 24.3433 4.07354 23.1528C4.12464 21.6036 4.30712 21.0694 6.21953 12.652C6.24873 12.5222 6.21953 12.4154 6.17573 12.3009C5.71588 11.0112 5.62829 9.69862 6.02975 8.36312C6.89836 5.4937 10.0078 5.27239 10.5553 7.63813C10.8911 9.10337 10.0006 11.0189 9.32172 13.8577C8.75968 16.193 11.3874 17.8566 13.6429 16.1548C15.7159 14.5827 16.5261 10.8052 16.3728 8.13417C16.0735 2.79981 10.4823 1.64746 6.93486 3.36453C2.86916 5.33344 1.94216 10.5991 3.78157 13.0107C4.01515 13.3159 4.19033 13.5067 4.11734 13.812C4.00055 14.2927 3.89836 14.7811 3.76697 15.2619C3.67208 15.6206 3.38741 15.7503 3.04435 15.6053C2.36551 15.323 1.80347 14.8651 1.34362 14.2775C-0.225727 12.2551 -0.670982 8.26391 1.38741 4.88318C3.67208 1.13615 7.92756 -0.382502 11.8035 0.0753842C16.4385 0.624847 19.3655 3.93689 19.913 7.69155C20.1611 9.40099 19.986 13.6212 17.6867 16.6051C15.0443 20.0316 10.7597 20.2605 8.78887 18.1542C8.63559 17.994 8.5115 17.8032 8.36551 17.6124Z"/>
                        </g>
                        <defs>
                            <clipPath id="clip0">
                                <rect width="20" height="27"/>
                            </clipPath>
                        </defs>
                    </svg>
                </a>                    
            </div>
            <div class="a-contain">
                <a href="donde-comprar.php" class="border-buton">Donde Comprar</a>
            </div>
        </div>
    </div>
    <div class="detalles-producto">
        <div class="caracteristicas">
        <table cellspacing="12" cellpadding="12">
                <tr>
                    <td>Corte</td>
                    <td id="infoCorte" class="lower" ></td>
                </tr>
                <tr>
                    <td>Material</td>
                    <td id="infoMaterial" class="lower"></td>
                </tr>
                <tr>
                    <td>Colores</td>
                    <td id="infoColor" class="lower"></td>
                </tr>
                <tr>
                    <td>Características</td>
                    <td id="infoCaracteristicas" class="lower"></td>
                </tr>
                <tr>
                    <td>Tallas</td>
                    <td id="infoTallas" class="lower"></td>
                </tr>
                <tr>
                    <td>Caida</td>
                    <td id="infoCaida" class="lower"></td>
                </tr>
            </table>
        </div>
        <h3>Detalles del Producto</h3>
        <!-- <h4>Nombre vestido</h4>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>
        <ul>
            <li>Lorem ipsum dolor sit amet</li>
            <li>Lorem ipsum dolor sit amet</li>
            <li>Lorem ipsum dolor sit amet</li>
        </ul> -->
        <h4>cuidados</h4>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
    </div>
</div>
<section class="otros">
    <h3>Otras opciones</h3>
        <div class="vestidos-container">
            <a href="" class="container-vestidos">
                <img class="image-prim" src="./img/vestido-azul.jpg" alt="">
                <img class="image-secondary" src="./img/vestido-hover.jpg" alt="">
                <span class="hover">ver más</span>
                <p class="n-vestido">Nombre vestido</p >
            </a>
            <a href="" class="container-vestidos">
                <img class="image-prim" src="./img/vestido-azul.jpg" alt="">
                <img class="image-secondary" src="./img/vestido-hover.jpg" alt="">
                <span class="hover">ver más</span>
                <p class="n-vestido">Nombre vestido</p >
            </a>
            <a href="" class="container-vestidos">
                <img class="image-prim" src="./img/vestido-azul.jpg" alt="">
                <img class="image-secondary" src="./img/vestido-hover.jpg" alt="">
                <span class="hover">ver más</span>
                <p class="n-vestido">Nombre vestido</p >
            </a>
        </div>
        <div class="swiper-container">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <a href="product-page.php" class="container-vestidos">
                        <img class="image-prim" src="./img/vestido-azul.jpg" alt="">
                        <img class="image-secondary" src="./img/vestido-hover.jpg" alt="">
                        <span class="hover">ver más</span>
                        <p class="n-vestido">Nombre vestido</p >
                    </a>
                </div>
                <div class="swiper-slide">
                    <a href="product-page.php" class="container-vestidos">
                        <img class="image-prim" src="./img/vestido-azul.jpg" alt="">
                        <img class="image-secondary" src="./img/vestido-hover.jpg" alt="">
                        <span class="hover">ver más</span>
                        <p class="n-vestido">Nombre vestido</p >
                    </a>
                </div>
                <div class="swiper-slide">
                    <a href="product-page.php" class="container-vestidos">
                        <img class="image-prim" src="./img/vestido-azul.jpg" alt="">
                        <img class="image-secondary" src="./img/vestido-hover.jpg" alt="">
                        <span class="hover">ver más</span>
                        <p class="n-vestido">Nombre vestido</p >
                    </a>
                </div>
            </div>
            <div class="swiper-pagination"></div>
        </div>
    </section>
<!--?php include "footer.php"?-->

<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

<script src="js/swiper-6.4.5.min.js"></script>
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

<script src="js/producto.js"></script>
</body>
</html>    