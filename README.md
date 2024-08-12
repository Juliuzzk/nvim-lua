# Nvim-Lua

## Configuracion personal de Nvim

From 0 to Testing2
Nvim Personal Config

### KeyMaps

#### Reemplazar

- :%s/palabra/reemplazo
  - %: todo el archivo
  - '<,'>s: dentro del bloque visual

#### Ejecutar Comando

- :g/palabra/normal dd
  - :g! <- busca en todo lo contrario

##### Borrar desde puntero hasta letra

- df \<letra\>
- diw: Elimina palabra bajo el cursor
- dw: Elimina desde cursor hasta el final de la palabra

#### Borrar entre medio de corchetes, parentesis

- di\<caracter\>: Elimina lo que este entremedio

#### Buscar desde punto hasta letra

- f \<letra\>: buscar hacia adelante
- \<shift\>f: buscar hacia atras

#### Saltar entre cambios

- <CTRL>o: vuelve hacia atras

#### Insertar

- \<shift\> i: Insertar al principio de la linea
- \<shift\> a: Insertar al final de la linea
- \<shift\> o: Crear una linea antes y entrar en modo insertar
- o: Crear una linea despues y entrar en modo insertar

#### Seleccionar

- gv: volver a seleccionar ultima
- vip: seleccionar todo el parrafo
- ggVG: seleccionar todo el archivo

#### Vim Surround

- cs\<a\>\<b\>: Cambia bracket a por b, solamenta usado para carecteres de cierre, "'{[(
- ysiw\<a\>: Encierra una palabra entre a
  -i: Corresponde a la cantidad de palabras a encerrar, i = 1, se puede cambiar por 2,3,4..n
- yss\<a\>: Encierra la linea completa en a
- ds\<a\>: Borra a que encierren al punto en donde se encuentre el cursor
- S\<a\>: Encierra seleccion en a

##### Notas:

- \<shift\> + letra: letra en mayuscula
