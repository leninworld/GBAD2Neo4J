# GBAD2Neo4J

<b>What can GBAD2Neo4J library do?</b>
1) It helps to convert GBAD graph file to Neo4J cypher cql file and then it can be dumped into Neo4J.
2) It helps to convert GBAD graph file into JSON file format.

<b>Introduction to GBAD:</b>
GBAD is a graph-based library developed by Dr. William (Bill) Eberle from Tennessee Tech University. It takes graph input files and outputs anomalies (i.e., edges and vertices) found using minimum descriptive length approach. Related paper using this library can be found [here](http://ailab.wsu.edu/adgs/pdfs/MookiahVAST2014.pdf) and [here](http://www.aaai.org/ocs/index.php/FLAIRS/FLAIRS15/paper/download/10378/10281). You dont need GBAD to run the scripts in this repository, but in case you just want it, you can be downloaded from [here](http://users.csc.tntech.edu/~weberle/gbad/download.html).

<b>Download:</b>

Download the jar file from [here](https://www.dropbox.com/s/mglyp7r5p4wlqrs/gbad2neo4j.jar?dl=0).

<b>Usage:</b> 

java -jar gbad2neo4j.jar \<Option\> \<ConfigFile\>

<b>Steps:</b>

1) Change the values in the config file for inputFilename , outputFilename , and baseFolder.
Sample configuration file is located in "GBAD2Neo4J/conf/application.conf". 

      a) Configuration under Source.GBAD2Neo4J is used when converting GBAD to Neo4J cypher .cql file.
 
      b) Configuration under Source.GBAD2JSON is used when converting GBAD to JSON file.

2) We assume you have "gbad2neo4j.jar" in current directory.

      a) Run below command for converting GBAD to Neo4J .cql.
      
            java -jar gbad2neo4j.jar 1 <path_to_config_file>

      b) Run below command for converting GBAD to JSON file.
      
            java -jar gbad2neo4j.jar 2 <path_to_config_file>
 
3) <b>Dumping into Neo4J</b>: Take the <outputFile>.cql file from baseFolder and run it using neo4j-shell (or) cypher-shell. In my experiment, neo4j-shell is faster than cypher-shell.

   Example:
   
   ./neo4j-shell -c < /pathToOutputFile/outputFile.cql
   
   ./cypher-shell -u username -p password "call apoc.cypher.runFile('/pathToOutputFile/outputFile.cql')"

<b>Sample:</b> Sample GBAD graph file format for a triangle that has three nodes named "Integrity", "Intelligent", and "Energy"
and edges with label "with" among them (see file "triangle.g" under src/data):

XP # 1

v 1 "Integrity"

v 2 "Intelligent"

v 3 "Energy"

d 1 2 "with"

d 2 3 "with"

d 3 1 "with"

----------------------------------------------------------------------------------------------------
==================================================================================== 
Sample Triangle graph inside Neo4J which is generated using GBAD2Neo4J:

![Triangle](https://github.com/leninworld/GBAD2Neo4J/blob/master/src/images/triangle.png)

Sample graph inside Neo4J which is generated using GBAD2Neo4J:

![Sample](https://github.com/leninworld/GBAD2Neo4J/blob/master/src/images/sampleoutputGraph.png)




