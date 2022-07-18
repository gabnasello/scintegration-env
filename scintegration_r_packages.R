options(unzip = "internal") # not sure it is necessary, put it here after looking at https://github.com/r-lib/devtools/issues/1722#issuecomment-370019534

#####------ FROM notebooks and Dockerfile of theis tutorial for sc-data analysis -------######

options(install.packages.compile.from.source = 'always')

update.packages(ask=FALSE, repos='https://ftp.gwdg.de/pub/misc/cran/')

######------------######

# Install scran
BiocManager::install('scran')