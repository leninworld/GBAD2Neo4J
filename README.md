# GBAD2Neo4J

<b>Purpose:</b>
Convert GBAD formatted graph files into Neo4J graph cql files.

<b>Input:</b> GBAD formatted graph file.

<b>Output:</b> cql file which can used with cypher-shell to load the graphs into Neo4J graph database.
The cql file can be imported to neo4j using cypher-shell as below shown example.

Example:

./cypher-shell -u username -p password "call apoc.cypher.runFile('/pathToFile/fileName.cql')"

<b>Introduction to GBAD:</b>
GBAD is a tool developed by Dr. William (Bill) Eberle at Tennessee Tech University. It takes graph input files and outputs anomalies (i.e., edges and vertices) found using minimum descriptive length approach.

<b>Sample:</b> Sample GBAD graph file format for a triangle that has three nodes named "Integrity", "Intelligent", and "Energy"
and edges with label "with" among them (see file "triangle.g" under src/data):

XP # 1

v 1 "Integrity"

v 2 "Intelligent"

v 3 "Energy"

d 1 2 "with"

d 2 3 "with"

d 3 1 "with"



