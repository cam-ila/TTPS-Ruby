## E-Vader:

 ####  Pasos para ejecutar la aplicacion:
```sh
$ git clone https://github.com/cam-ila/TTPS-Ruby
$ cd TTPS-Ruby 
$ bundle install
$ bundle exec rake db:migrate
$ bundle exec rake db:seed
$ bundle exec rails server
```
#### Funcionamiento
Permite la creacion de:
-  Clientes: los datos obligatorios de un cliente son nombre, apellido, mail, dni y CUIL/CUIT, estos dos ultimos son unicos.
- Personas: a las cuales se le realizan las facturas, con los campos nombre y CUIL/CUIT, este ultimo es unico.
- Facturas, estas poseen una descripcion, un monto, una fecha, el cliente que la realizo y la persona a la cual se la realizó. Todos sus campos son obligatorios.
#
En la descripcion de un Cliente se pueden ver su edad, el monto total facturado por año y las cinco personas a las que mas le facturo en el año.
