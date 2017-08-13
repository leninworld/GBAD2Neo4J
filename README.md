# GBAD2Neo4J
Convert GBAD format files into Neo4J graphs with cql

<b>Introduction to GBAD:</b>
GBAD is a tool developed by Dr. William (Bill) Eberle at Tennessee Tech University.
It takes graph input files and outputs anomalies found using minimum descriptive length approach.

Sample GBAD graph file format for a triangle that has three nodes named "Integrity", "Intelligent", and "Energy"
and create edges with label "with" among them:

XP # 1

v 1 "Integrity"

v 2 "Intelligent"

v 3 "Energy"

d 1 2 "with"

d 2 3 "with"

d 3 1 "with"



