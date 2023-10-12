excel_reader <- function(path){
  files <- list.files(path)
  data <- list()
  for (file in files) {
    file_path <- paste0(path, file)
    if (file == 'postcode_to_LGA.xls'){
      dat <- import(file_path, sheet=4)
      colnames(dat) <- unlist(dat[5, ])
      dat <- dat[-(1:5),]
    }
    else{
      dat <- import(file_path, sheet=3)
      colnames(dat) <- unlist(dat[6, ])
      dat <- dat[-(1:6),]
    }
    data[[file]] <- dat
  }
  return(data)
}
