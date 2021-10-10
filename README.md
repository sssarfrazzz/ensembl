# ensembl

##Excercise
-Using the Perl API on the latest human data for Ensembl release 104, convert coordinates on chromosome 10, from 25.000 to 30.000 to the same region in GRCh37.



AssembleConverter.pl contains code for above Problem statement. 
This project uses Perl API for Ensembl release 104. 
Instruction to install Perl API can be found at http://www.ensembl.org/info/docs/api/api_installation.html

##Use below command to run the code and its expected output. 

```sh
perl AssemblyConverter.pl
#input slice chromosome:GRCh38:10:25000:30000:1

 GRCh37 Projections 
chromosome:GRCh37:HG905_PATCH:75000:80000:1
chromosome:GRCh37:10:70936:71781:1
chromosome:GRCh37:10:71784:72184:1
chromosome:GRCh37:10:72185:73544:1
chromosome:GRCh37:10:73546:75937:1
```




##Alternatives
-Describe at least one other way of retrieving the same information, along with its advantages and disadvantages.

Enseml has provided multiple Web tools. One of them is Assembly Converter. It can be found at URL: https://grch37.ensembl.org/Homo_sapiens/Tools/AssemblyConverter


#Advantages
-No need to write code or any installation of perl API needed to get the data. 
-Easy to use and online tutorial available
-Input can be raw data pasted in the portal, Upload a file or provide a file URL. 
-Supports multiple formats
-We can save job for future use

#Disadvantage
-Assembly converter available for Homo Sapiens only
 

