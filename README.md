# Nvim-Lua

## Configuracion personal de Nvim

From 0 to Hero
Nvim Personal Config

### KeyMaps

#### Reemplazar
* :%s/palabra/reemplazo
  * %: todo el archivo
  * '<,'>: dentro del bloque visual


#### Ejecutar Comando

* :g/palabra/normal dd
  * :g! <- busca en todo lo contrario

##### Borrar desde puntero hasta letra

* df \<letra\>
* diw: Elimina palabra bajo el cursor
* dw: Elimina desde cursor hasta el final de la palabra

#### Buscar desde punto hasta letra
* f \<letra\>: buscar hacia adelante
* \<shift\>f: buscar hacia atras


#### Insertar
* \<shift\> i: Insertar al principio de la linea
* \<shift\> a: Insertar al final de la linea
* \<shift\> o: Crear una linea antes y entrar en modo insertar
* o: Crear una linea despues y entrar en modo insertar

#### Seleccionar
* gv: volver a seleccionar ultima

##### Notas:
* \<shift\> + letra: letra en mayuscula§
