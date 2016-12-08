# script para crear un pkg de ejmeplo en Albacete
#install.packages(c("devtools", "roxygen2", "testthat", "knitr"))
#devtools::install_github("hadley/devtools")  #- Pb con i386
#install_dev_deps()

library(devtools)
has_devel()        #- chequea si tiene preparado el PC


create("C:/Users/perezp/Desktop/pkg77")   #- crea la estructura del pkg


#- 1) Modifico "DESCRIPTION"
use_mit_license(pkg = ".", copyright_holder = getOption("devtools.name", "<Author>"))

devtools::use_package_doc()   #- documenta el pkg2


#- 2) Ficheros de DATOS
#-    2a) Introduzco los datos en ./data/
#-    2b) Documento los ficheros de datos. He de crear fichero "data.R" en  ./R/
my_mtcars <- mtcars
devtools::use_data(my_mtcars)
#save(df, file="./datos/df")



#- 3) Las FUNCIONES
#-    3a) Introduzco las funciones en ./R/
#-    3b) Documentando las funciones (Roxygen comments)
#-        @param   @return   @examples  @exports   @import   @importFrom

devtools::document()          #- para procesar los roxygen comments de las funciones y datos.
                              #- se ha creado ./man/
                              #- se ha modificado "NAMESPACE"
?pkg4a
#- Ya podriamos cargar nuestro pkg desde LOCAL y usarlo o "BUILD & RELOAD"
install.packages("C:/Users/perezp/Desktop/pkg1", repos = NULL, type="source")
library(pkg1)


# USANDO my package ------------------------------------------------------------------------------------------

?my_fun_1
?esp
my_fun_2(3,2)
my_fun_1(my_mtcars)   #- Fallara si el PC no tiene instalados dplyr ni el operador %>%
my_fun_1(esp)
package?pkg1
example("my_mx2")


#- Volviendo a modificar  "DESCRIPTION" para asegurarnos de que dplyr y %>%  estan en el PC
Imports:
  dplyr,
  magrittr







# 4) LAS VIGNETTES ---------------------------------------------------------------------------------------------
devtools::use_vignette("my_vignette_1", pkg = ".")   #- crea ./vignettes/ y dentro "my-vignette.Rmd"
devtools::use_vignette("my_vignette_2", pkg = ".")   #- crea  "my-vignette2.Rmd"


#- 5) escribimos el contenido de las vignettes en RMarkdown y las CONSTRUIMOS
devtools::build_vignettes()   #- se almacenan en ./inst/





#- Para poder ver las vignettes hay que cerrar el Rproject y VOLVER a cargar el package desde LOCAL
install.packages("C:/Users/perezp/Desktop/pkg1", repos = NULL, type="source")
library(pkg1)


browseVignettes("pkg4444")  #- te muestra las vignettes que hay en el package
vignette("my-vignette")  #- te enseña una viñeta concreta

help(package = "pkg4444")





#----------- ALOJANDO EL PACKAGE en GITHUB
#- 1) En Github crear un repo que se llame igual que tu package; osea, "pkg1"
#- 2) En Git Bash (terminal):
#      a) cd c:/Users/perezp/Desktop/pkg1                   #- te situas en la carpeta donde esta el pkg en tu PC:
#      b) git init                                                       #- Inicializas el repo
#      c) git add .                                                      #- "Añades" Stagge el contenido del pkg
#      d) git commit --all --message "Creando el REPO"                   #- Commit inicial
#      e) git remote add origin https://github.com/perezp44/pkg1.git     #- origen en Github
#      f) git push -u origin master                                      #- subiendo los ficheros a Github




devtools::use_git()
# http://stat545.com/packages04_foofactors-package-01.html

#------------- INSTALANDO el PACKAGE alojado en GITHUB
devtools::install_github("username/packagename") #- instalar un pkg alojado en Github
devtools::install_github("perezp44/pkg1")





#----- ./inst/scripts_clase/
system.file("script_clase", "feo.R", package = "pkg1")
file.edit(system.file("script_clase", "feo.R", package = "pkg1"))

demo(package = "pkg1")                        #- lista los demos que hay
demo("feo2", package = "pkg1")




#----
help(package = "pkg1")    #- GOOD

devtools::install_github("perezp44/pkg2")


aa
