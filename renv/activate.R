local({
  # renv activate script — se genera automáticamente con renv::init()
  # Si este archivo está vacío, ejecuta renv::init() en la consola de R
  # para inicializar el entorno y generar el renv.lock con los paquetes del proyecto.
  if (file.exists("renv.lock")) {
    if (!requireNamespace("renv", quietly = TRUE)) {
      install.packages("renv")
    }
    renv::autoload()
  }
})
