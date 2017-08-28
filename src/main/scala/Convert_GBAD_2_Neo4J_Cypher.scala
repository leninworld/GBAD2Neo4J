import scala.io.Source
import java.io.File

import scala.collection.mutable.HashMap
import scala.collection.mutable.ArrayBuffer
import java.io.PrintWriter

import Convert_GBAD_2_JSON.baseFolder
import Convert_GBAD_2_Neo4J_Cypher.isSOPprint
import com.typesafe.config.ConfigFactory

import scala.util.Try

/*
*   Author      : Lenin Mookiah
*   Email       : lenin.world@gmail.com
*   Description : Convert GBAD graph file into CYPHER scripts that can create nodes and relationships when can be run in Neo4J graph database.
* */

object Convert_GBAD_2_Neo4J_Cypher{

  // process and return create nodes and edges line for .csql
  def createNodesAndEdges(counterForXP:Integer ,
                          currSourceNode:String,
                          currDestinationNode:String,
                          currEdge: String,
                          arrVertexIDandName:ArrayBuffer[String],
                          currSourceNodeNameInteger: Integer,
                          currDestinationNodeNameInteger: Integer
                         ): String = {
    try {

      //  ----------------------------------------------------------------------------
      //   example creating two nodes with example
      //  ----------------------------------------------------------------------------
      //  create (n1:XP1 {name:"Krishna" })-[:HELLO]->(n2:XP1 {name:"Arjun"}),
      //         (n3:XP1 {name:"Ceasor"})-[:BYE]->(n4:XP1 {name:"Lenin"});
      //  ----------------------------------------------------------------------------
      //  // Creating triangle
      //  ----------------------------------------------------------------------------
      //      CREATE (n1:XP1 {id:"1XP1", name:"A"});
      //      CREATE (n2:XP1 {id:"2XP1", name:"B"});
      //      CREATE (n3:XP1 {id:"3XP1", name:"C"});
      //      MATCH (n1:XP1 {id:"1XP1"}),(n2:XP1 {id:"2XP1"}) CREATE (n1)-[:has]->(n2);
      //      MATCH (n1:XP1 {id:"2XP1"}),(n2:XP1 {id:"3XP1"}) CREATE (n1)-[:has]->(n2);
      //      MATCH (n1:XP1 {id:"3XP1"}),(n2:XP1 {id:"1XP1"}) CREATE (n1)-[:has]->(n2);
      //  ----------------------------------------------------------------------------
      var newEdge = ""
      var isInteger = Try(currEdge.toInt).isSuccess
      // This will be considered as float or double, and hence numeric
      if(currEdge.indexOf(".") >= 0 ){
        newEdge = currEdge.replace(".","dot")
      }
      else if(isInteger==true){ //check if its integer value
        //        println("isInteger:"+isInteger+" "+currEdge)
        if(isInteger){
          newEdge = "label {val:" + currEdge + "}"
        }
      }
      else{
          newEdge = currEdge
      }

      var xpStringSource = currSourceNode + "XP" +counterForXP
      var xpStringDestination = currDestinationNode + "XP" +counterForXP

      var outString: String = s"""MATCH (n1:XP$counterForXP {id:"$xpStringSource"}),(n2:XP$counterForXP {id:"$xpStringDestination"}) CREATE (n1)-[:$newEdge]->(n2);\n"""

      if(isSOPprint == 1)
        println(outString+"<---")

      return outString
    } catch {
      case ex: IllegalArgumentException => print(ex +  ex.getMessage)
        return ""
    }
    return ""
  }

  // convert GBAD to Neo4J
  def Convert_GBAD_2_Neo4J_Cypherfn(inFile:String, outFile:String, isSOPprint: Int): Unit = {
    try{
      println("Given Input File:"+inFile)
      println("Given Output File:"+outFile)

      var currSourceNode = ""
      var currDestinationNode = ""
      var currEdge = ""
      var currCSQLstatement : String = ""
      val writer = new PrintWriter(new File(outFile))

      var mapVertexIDVertexName = HashMap.empty[String, String]
      var array = ArrayBuffer[scala.collection.mutable.HashMap[String, String]]()
      var counterForXP = 0
      var arrVertexIDandName = new scala.collection.mutable.ArrayBuffer[String]()
      var currVertexID :Integer = 0
      var currSourceNodeNameInteger :Integer = 0
      var currDestinationNodeNameInteger :Integer = 0
      var conccurrCSQLstatement = ""

      // read each line
      for (line <- Source.fromFile(inFile).getLines) {
        //
        if(line.indexOf("XP # ") >= 0) {
          //            println("counterForXP:" + counterForXP +   " arrVertexIDandName.size:"+arrVertexIDandName.size)

          counterForXP += 1
          arrVertexIDandName = new scala.collection.mutable.ArrayBuffer[String]()
        }
        var arr = line.split("\\s+")
        //          arrVertexIDandName = new scala.collection.mutable.ArrayBuffer[String]()

        // vertex
        if( arr.length == 3  && line.indexOf("XP # ") == -1 && line.indexOf("v ") >= 0 ) {
          currVertexID = Integer.valueOf(arr(1))
          var currVertexName = arr(2)
              currVertexName = currVertexName.replaceAll("\"","")
              arrVertexIDandName += currVertexName

              if(currVertexName.indexOf("val=") >= 0 )
                currVertexName = currVertexName.substring(currVertexName.indexOf("val=")+4, currVertexName.length())
              else if(currVertexName.indexOf("idx:") >= 0)
                currVertexName = currVertexName.substring(currVertexName.indexOf("idx:")+4, currVertexName.length())

              //create nodes
              writer.append("CREATE (n1:XP"+counterForXP+" {id:\""+currVertexID+"XP"+counterForXP+"\", name:\""+currVertexName+"\"});\n")
              writer.flush()

          //            println("vertexID:" + currVertexID + " vertexName:" + currVertexName.replaceAll("\"","")
          //                    +" "+arrVertexIDandName.size+" arrVertexIDandName(0):"+ arrVertexIDandName(0) )
        }
        // edge relationships between pair of nodes
        if(arr.length == 4) {
          currSourceNode = arr(1)
          currDestinationNode = arr(2)
          currEdge = arr(3)
          currEdge = currEdge.replaceAll("\"","").replace("(","").replace(")","")

          //          println("atom. directed?:" + currSourceNode + " " +currDestinationNode)
          currSourceNodeNameInteger += 1
          currDestinationNodeNameInteger = currSourceNodeNameInteger + 1

          // Create nodes and edges from relationship between two nodes
          currCSQLstatement = createNodesAndEdges(counterForXP,
                                                  currSourceNode,
                                                  currDestinationNode,
                                                  currEdge,
                                                  arrVertexIDandName,
                                                  currSourceNodeNameInteger,
                                                  currDestinationNodeNameInteger
                                                )

          if(isSOPprint == 1)
            println("curr SQL:"+currCSQLstatement)
            // output
            writer.append(currCSQLstatement)
            writer.flush()

        }
      }

      // last relationship exists in the file
      if(isSOPprint == 1)
        println("last counterForXP:" + counterForXP +   " arrVertexIDandName.size:"+arrVertexIDandName.size)



//      currCSQLstatement = createNodesAndEdges(counterForXP,
//                                              currSourceNode,
//                                              currDestinationNode,
//                                              currEdge,
//                                              arrVertexIDandName,
//                                              currSourceNodeNameInteger,
//                                              currDestinationNodeNameInteger )
//
//      writer.append(currCSQLstatement)
//      writer.flush()

      // run cypher
      // ./cypher-shell -u neo4j -p  "call apoc.cypher.runFile('/Users/lenin/Dropbox/C995_only/C995_OUTPUT_3_output.cql')"


    } catch {
      case ex: IllegalArgumentException => print(ex +  ex.getMessage)
    }
  }

  // change baseFolder name here
  var baseFolder = ""
  // change input file name here
  var inputFilename = ""
  // change output file name here
  var outputFilename = ""
  // print SOP = {1,2}
  var isSOPprint:Int = -1

  var confFile = "/Users/lenin/Dropbox/GBAD2Neo4J/conf/application.conf"

  // load the configuration file
  val config = ConfigFactory.parseFile(new File(confFile))

      baseFolder = config.getString("Source.GBAD2Neo4J.baseFolder")
      inputFilename = baseFolder + config.getString("Source.GBAD2Neo4J.inputFilename")
      outputFilename = baseFolder + config.getString("Source.GBAD2Neo4J.outputFilename")
      isSOPprint = config.getInt("Source.isSOPprint") //debug => 1 = level 1 debug

  println("<!--^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^--> read from config ( for Cypher out ) ")
  println( "baseFolder:" + baseFolder +"\ninputFilename:" + inputFilename + "\noutputFilename:"+outputFilename )
  println("<!--^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^-->")

  // convert GBAD to Neo4J
  Convert_GBAD_2_Neo4J_Cypherfn(inputFilename, outputFilename, isSOPprint)

}