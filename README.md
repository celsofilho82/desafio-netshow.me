# Desafio Netshow.me

## Detalhes do desafio

O desafio consiste em que você crie uma estrutura de visualização de vídeos.

## Critérios de aceitação

+ 1 - Para realizar o desafio é necessário implementar uma autenticação. Você pode utilizar uma Gem para isso (Ex: Devise)
+ 2 - É necessário criar um usuário que poderá criar vídeos.
+ 3 - O vídeo deve ter nome e url (url com uma extensão .m3u8).
+ 4 - Um usuário somente poderá realizar o CRUD de seus próprios vídeos.
+ 5 - Criar uma tela para visualização do acervo de vídeos do usuário.
+ 6 - Criar uma tela para a visualização do vídeo que poderá ser acessada por qualquer usuário e deverá conter um player, o nome e a quantidade de visualizações do vídeo
+ 7 - Contabilizar o view do vídeo quando o player disparar o evento 'start' (incrementar a contagem dos videos view).

# Implementação

## Dependências

+ Ruby 2.6.5
+ Rails 5.2
+ Simple_form
+ Webpacker '4.x'
+ Devise
+ Pundit
+ Cloudinary '1.12.0'
+ Postgres

## Instruções para deploy

```
git clone https://github.com/celsofilho82/desafio-netshow.me.git
cd desafio-netshow.me
bundle install
rails db:create db:migrate
rails s
Aplicação disponível no endereço http://localhost:3000/

```
**OBS:** Localmente para realizar o upload de fotos no perfil do usuário é necessário criar uma conta no serviço Cloudnary (https://cloudinary.com/users/register/free) e inserir no arquivo **.env** a sua API Key

```
# .env
CLOUDINARY_URL=cloudinary://298522699261255:Qa1ZfO4syfbOC-***********************8

```

## Endereço da aplicação no Heroku

https://desafio-netshow-me.herokuapp.com/

## Critérios de aceitação atendidos:

+ 1 - Implementar autenticação.[ok]
+ 2 - Criar um usuário que poderá criar vídeos.[ok]
+ 3 - Vídeo com nome e url (url com uma extensão .m3u8).[ok]
+ 4 - Usuário somente poderá realizar o CRUD de seus próprios vídeos.[ok]
+ 5 - Tela para visualização do acervo de vídeos.[ok]
+ 6 - Tela para visualização do vídeo acessada por qualquer usuário deverá conter um player e o nome do video.[ok]

+ **OBS:** O critério nº 7 **não foi atendido**. Não consegui implementar a contagem de views quando o player dispara o evento start e por conta disso não inclui a contagem de view na tela de visualização.
