name := "workspace-graph-research"

version := "1.0"

scalaVersion := "2.12.3"

libraryDependencies += "org.apache.httpcomponents" % "httpclient" % "4.5.3"
libraryDependencies += "org.scala-lang" % "scala-xml" % "2.11.0-M4"
libraryDependencies +=  "org.scalaj" %% "scalaj-http" % "2.3.0"

// https://mvnrepository.com/artifact/org.neo4j.driver/neo4j-java-driver
libraryDependencies += "org.neo4j.driver" % "neo4j-java-driver" % "1.0.0-M01"

// https://mvnrepository.com/artifact/com.typesafe.play/play_2.11
libraryDependencies += "com.typesafe.play" % "play_2.11" % "2.6.3"

// https://mvnrepository.com/artifact/com.google.code.gson/gson
libraryDependencies += "com.google.code.gson" % "gson" % "1.7.1"


