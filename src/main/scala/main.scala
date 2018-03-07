import java.io.File

import com.typesafe.config.ConfigFactory
import Convert_GBAD_2_Neo4J_Cypher.{baseFolder, confFile, inputFilename, isSOPprint, outputFilename, _}
import Convert_GBAD_2_JSON._
/*
*   Author      : Lenin Mookiah
*   Email       : lenin.world@gmail.com
*   Description : Main object to call a list of methods
* */

object main extends App  {

  // change baseFolder name here
  var baseFolder = ""
  // change input file name here
  var inputFilename = ""
  // change output file name here
  var outputFilename = ""
  // print SOP = {1,2}
  var isSOPprint:Int = -1
  var JsonType:Int = -1 // can be {1,2}
  // configuration file
  var confFile = "/Users/lenin/Dropbox/workspace_workplace/GBAD2Neo4J/conf/application.conf"

  println("/**********************************************************/")
  println("Usage: " + "java -jar gbad2neo4j.jar <Option> <ConfigFile>")
  println("\n")
  println("Example for running convert GBAD to Neo4J:" + "GBADhelper.jar 1 /Users/lm/GBAD2Neo4J/conf/application.conf")
  println("\n")
  println("Option values = {1,2} ")
  println("1: Convert_GBAD_2_Neo4J_Cypher (Converting GBAD to Neo4J Cypher)")
  println("2: Convert_GBAD_2_JSON (Converting GBAD to JSON format)")
  println("\n")

//  val input = scala.io.StdIn.readLine()

  if (args.length < 2 ) {
    println("Hello, I need at least two parameter!!!")
    System.exit(1)
  }
  println("/**********************************************************/")

  // getting values from command line
  val input = args(0).toInt
      confFile = args(1)
  // Load Configuration
  var  config = ConfigFactory.parseFile(new File(confFile))
  // GBAD to Neo4J output
  if(input == 1) {
    println("Running GBAD to Neo4J conversion....." )
    baseFolder = config.getString("Source.generic.baseFolder")
    inputFilename = baseFolder + config.getString("Source.GBAD2Neo4J.inputFilename")
    outputFilename = baseFolder + config.getString("Source.GBAD2Neo4J.outputFilename")
    isSOPprint = config.getInt("Source.isSOPprint") //debug => 1 = level 1 debug

    println("<!--^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^--> read from config ( for Cypher out ) ")
    println( "baseFolder:" + baseFolder +"\ninputFilename:" + inputFilename + "\noutputFilename:"+outputFilename )
    println("<!--^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^-->")

    // convert GBAD to Neo4J
    Convert_GBAD_2_Neo4J_Cypherfn(inputFilename, outputFilename, isSOPprint)
  }
  // run GBAD to JSON output
  if(input == 2) {
    println("Running GBAD to JSON conversion....." )
    baseFolder = config.getString("Source.generic.baseFolder")
    inputFilename = baseFolder + config.getString("Source.GBAD2JSON.inputFilename")
    outputFilename = baseFolder + config.getString("Source.GBAD2JSON.outputFilename")
    JsonType = config.getInt("Source.GBAD2JSON.JsonType")
    isSOPprint = config.getInt("Source.isSOPprint") //debug => 1 = level 1 debug

    println("<!--^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^--> read from config (JSON) ")
    println( "baseFolder:" + baseFolder +"\ninputFilename:" + inputFilename + "\noutputFilename:" + outputFilename )
    println("<!--^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^-->")

    // convert GBAD to JSON (gives one type of JSON output file)
    if (JsonType == 1)
      Convert_GBAD_2_JSON_1(inputFilename, outputFilename, isSOPprint)
    else if (JsonType == 2)
      Convert_GBAD_2_JSON_2(inputFilename, outputFilename, isSOPprint)

  }

}