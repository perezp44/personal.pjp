library(devtools)

devtools::use_package("dplyr") #- añade Imports: dplyr al fichero DESCRIPTION
devtools::use_package("magrittr") #- añade Imports: dplyr al fichero DESCRIPTION




devtools::document()   #- una vez has documentado las funciones a mano para q se pasen a /man  .Rd (como el latex)

devtools::use_vignette("my_vignette") #- crea la estructura de una vignette
devtools::build_vignettes()           #- build the vignette


#- instalando el pkgdesde local
install.packages("C:/Users/perezp/Desktop/a_GIT_2016/personal.pjp", repos = NULL, type="source")
library(personal.pjp)


#- ver si van las funciones: SI
aa <- names_v_df_pjp(cars)
aa <- val_unicos_df_pjp(mtcars)
aa <- decimales_df_pjp(mtcars, nn = 2)
aa <- round_nice_pjp(0.00044, nn = 2 )   #- no funciona en df


?names_v_df_pjp
?val_unicos_df_pjp
browseVignettes("personal.pjp")
vignette("my_vignette.html")

?browseVignettes


#--- llevarlo a Github
#0) En Github crear un repo que se llame igual que tu package.
#1) en Git Bash te situas en la carpeta del package. en mi caso con:   cd c:/Users/perezp/Desktop/a_GIT_2016/personal.pjp
#2) Inicializas el repo vacio con :  `git init`
#3) Añades los archivos al repo: `git add .`  El punto indica que añades todos?
#4) Commit inicial: git commit --all --message "Creando el REPO"
#5) git remote add origin https://github.com/perezp44/personal.pjp.git
#6) git push -u origin master

#--------------- cargarlo desde Github



devtools::install_github('perezp44/personal.pjp')
  library(personal.pjp)

browseVignettes(package = "personal.pjp")

