create table pitangacos.Products(
	productID int not null AUTO_INCREMENT,
    category varchar(100) not null,
    `name` varchar(200) not null,
    `range` varchar(100) not null,
    content varchar(100) not null,
    imageURL varchar(200) not null,
    price decimal(6,2) not null,
    currentPrice decimal(6,2), 
	
	primary key (productID)
);

insert into pitangacos.products (category,`name`,`range`, content, imageURL, price,currentPrice)
values  ("makeup","Corretivo Alta Cobertura Aquarela", "AQUARELA", "8ml", "images/corretivo_natura.jpg",32.90, 22.90),
		("makeup","Base Nude Me Sérum FPS18", "UNA", "30ml", "images/base nude.jpg", 190.90, 144.90),
        ("makeup", "Delineador Color & Precisão Aquarela", "AQUARELA", "3.5ml", "images/delineador.jpg", 29.90,19.90),
        ("makeup", "Batom Líquido Matte Faces", "FACES", "3.5ml", "images/batom_matte.jpg", 25.90,19.90),
        ("perfume", "Kaiak Pulso", "KAIAK", "100ml", "images/kaiak-pulso.jpg", 121.90, null),
        ("perfume", "Luna Intenso", "LUNA", "50ml", "images/luna-intenso.jpg",139.90, 99.90),
        ("perfume", "Humor Próprio", "HUMOR", "75ml", "images/humor-proprio.jpg", 104.90,79.90),
        ("dailycare","Creme Desodorante Nutritivo Manga Rosa e Água de Coco", "TODODIA", "400ml", "images/creme-mangarosa-aguacoco.jpg", 46.90, null),
        ("dailycare", "Kit Tododia Sabonete em Barra Algodão", "TODODIA", "3 caixas com 5 unidades de 90g cada", "images/sabonete-algodao.jpg", 59.70, 47.70),
        ("dailycare", "Néctar Hidratante para Mãos Maracujá", "EKOS", "75g", "images/hidratanteMaos-maracuja.jpg", 37.50,19.90),
        ("dailycare","Refil Shampoo Patauá", "EKOS", "300ml", "images/shampoo-refil-pataua.jpg", 22.60,17.90),
        ("dailycare", "Creme de Pentear Brilho Intenso Cabelos Cacheados", "LUMINA", "300ml", "images/cremePentear-cabelosCacheados.jpg", 37.80,26.40),
        ("beard", "Gel de Limpeza", "HOMEM", "115g", "images/gel-limpeza-facial.jpg", 42.50,19.50),
        ("beard", "Creme de Barbear", "HOMEM", "75g", "images/creme-barbear.jpg", 33.90,25.90);

