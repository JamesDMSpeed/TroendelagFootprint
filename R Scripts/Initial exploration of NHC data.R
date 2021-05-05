#Initial exploration of Trøndelag NHC data
#In light of proposed study on Trøndelag ecological footprint of environmental change


#Libraries
library(rgbif)
library(raster)
library(sp)

o_ntnu<-occ_search(institutionCode='ntnu-vm;trh')
#o_ntnu_vm<-occ_search(institutionCode='ntnu-vm')
#o_trh<-occ_search(institutionCode='trh')
o_ntnu_dl<-occ_download("institutionCode=ntnu-vm", 'institutionCode=trh', type="or",
                        format='SIMPLE_CSV',
                        pwd='********',user='jamesspeed',email='james.speed@ntnu.no')


odat<-occ_download_get(o_ntnu_dl,path='Data/GBIF downloads/',overwrite=T)
oimp<-occ_download_import(odat)
