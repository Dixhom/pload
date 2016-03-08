pload <- function(package.names, useBioconductor = FALSE) {
    for(i in 1:length(package.names)){
        p <- package.names[i]

        ip <- installed.packages()
        pcol <- which(colnames(ip) == "Package")
        is.installed <- match(p, ip[,pcol])

        if(!is.na(is.installed)){
            require(p, character.only = T)
            write(paste0("Package ", p, " loaded successsfully"), stdout())
        }
        else{
            ap <- available.packages()
            pcol <- which(colnames(ap) == "Package")
            is.on.CRAN <- match(p, ap[,pcol])

            if(is.on.CRAN){
                install.packages(p)
                require(p, character.only = T)
                write(paste0("Package ", p, " loaded successsfully"), stdout())
            }
            else{
                if(useBioconductor){
                    write(paste0("Installing from BioConductor"), stdout())
                    source("https://bioconductor.org/biocLite.R")
                    biocLite(p)
                }
                else{
                    write(paste0("Package not found"), stdout())
                }
            }
        }
    }
}
