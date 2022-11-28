drop database Alimente;
CREATE  DATABASE Alimente;
USE Alimente ;
-- -----------------------------------------------------
-- usuario
-- -----------------------------------------------------
CREATE TABLE usuario (
  idusuario INT PRIMARY KEY auto_increment not null,
  nome VARCHAR(45) ,
  email VARCHAR(45) ,
  senha VARCHAR(45));
  
insert into usuario values 
(null, 'Beatriz','bia@gmail.com',123),
(null, 'Alecio','ale@gmail.com',1234),
(null, 'sthtrh','sthe@gmail.com',12345);  
-- -----------------------------------------------------
-- receitas
-- -----------------------------------------------------
CREATE TABLE receitas (
  idreceita INT primary key auto_increment,
  nomeR VARCHAR(45) NULL,
  tipo VARCHAR(45) NULL,
  fk_usuario INT,
    FOREIGN KEY (fk_usuario)
    REFERENCES usuario (idusuario)
);

insert into receitas (idreceita, nomeR, tipo) values
(null, 'Bolo de cenoura', 'doce'),
(null, 'Brigadeiro', 'doce'),
(null, 'Bruschetta', 'salgado'),
(null, 'Cookies', 'doce'),
(null, 'Geléia de jabuticaba', 'doce'),
(null, 'Massa fresca', 'salgado'),
(null, 'Mojito', 'bebida'),
(null, 'Petit gateau', 'doce'),
(null, 'Pipoca doce', 'doce'),
(null, 'Pudim', 'doce'),
(null, 'Strudel de maçã', 'doce'),
(null, 'Yakisoba', 'salgado');

-- -----------------------------------------------------
-- perfil
-- -----------------------------------------------------
CREATE TABLE perfil (
  idperfil INT NOT NULL,
  fk_usuario INT NOT NULL,
    FOREIGN KEY (fk_usuario)
    REFERENCES usuario (idusuario),
     PRIMARY KEY (idperfil, fk_usuario) 
);

insert into perfil values
(1,1),
(2,2),
(3,3);

create table sorteio (
idSorteio int primary key auto_increment,
fk_usuario INT NOT NULL,
    FOREIGN KEY (fk_usuario)
    REFERENCES usuario (idusuario),
fk_receita INT NOT NULL,
    FOREIGN KEY (fk_receita)
    REFERENCES receitas (idreceita)
);




