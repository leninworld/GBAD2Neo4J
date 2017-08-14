# GBAD2Neo4J

<b>Purpose:</b>
Convert GBAD formatted graph files into Neo4J graph cql files and then load into neo4j graph database.


<b>Introduction to GBAD:</b>
GBAD is a graph-based library developed by Dr. William (Bill) Eberle from Tennessee Tech University. It takes graph input files and outputs anomalies (i.e., edges and vertices) found using minimum descriptive length approach. You dont need GBAD to run the scripts in this repository, but in case you just want it, you can be downloaded from [here](http://users.csc.tntech.edu/~weberle/gbad/download.html). Related paper using this library can be found [here](http://ailab.wsu.edu/adgs/pdfs/MookiahVAST2014.pdf) and [here](http://www.aaai.org/ocs/index.php/FLAIRS/FLAIRS15/paper/download/10378/10281).

<b>Prerequisite:</b>
1) Neo4J installed and running.
2) IntelliJ IDE or similar.

<b>Steps:</b>
1) Import this cloned project from github into IntelliJ.

2) Run "Convert_GBAD_2_Neo3J_Cypher.scala" file after changing values for variables inputFilename , outputFilename , and baseFolder.

      <b>Input:</b> GBAD formatted graph file (read further below for sample file examples).

      <b>Output:</b> cql file which can used with cypher-shell to load the graphs into Neo4J graph database.
The cql file can be imported to neo4j using cypher-shell as shown in next step.

3) Take the <outputFile>.cql file from baseFolder and run it using neo4j-shell (or) cypher-shell. In my experiment, neo4j-shell is faster than cypher-shell.

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
Sample Triangle graph from Neo4J generated using GBAD2Neo4J is shown here below:

![Triangle](https://github.com/leninworld/GBAD2Neo4J/blob/master/src/images/triangle.png)

Sample graph from Neo4J generated generated using GBAD2Neo4J is shown here below:

![Sample](https://github.com/leninworld/GBAD2Neo4J/blob/master/src/images/sampleoutputGraph.png)




