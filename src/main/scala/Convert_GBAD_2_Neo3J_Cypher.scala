import scala.io.Source
import java.io.File
import scala.collection.mutable.HashMap
import scala.collection.mutable.ArrayBuffer
import java.io.PrintWriter
import scala.util.Try

/*
*   Author      : Lenin Mookiah
*   Email       : lenin.world@gmail.com
*   Description : Convert GBAD graph file into CYPHER scripts that can create nodes and relationships when can be run in Neo4J database.
* */

object Convert_GBAD_2_Neo3J_Cypher extends App  {

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
      //
      //      CREATE (n2892:XP60 {name:15})-[:has]->(n2893:XP60 {name:24});
      //  ----------------------------------------------------------------------------
      var newEdge = ""
      var isInteger = Try(currEdge.toInt).isSuccess
      // This will be considered as float or double, and hence numeric
      if(currEdge.indexOf(".") >=0 ){
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

      //      var outString: String = "(n" + currSourceNodeNameInteger + ":XP" + counterForXP + " {name:" + currSourceNode + "})-[:" + newEdge + "]->(n" + currDestinationNodeNameInteger+
      //                                  ":XP"+counterForXP + " {name:"+ currDestinationNode + "})"

      var outString: String = "(n" + currSourceNode + ":XP" + counterForXP + " {name:" + currSourceNode + "})-[:" + newEdge + "]->(n" + currDestinationNode+
        ":XP"+counterForXP + " {name:"+ currDestinationNode + "})"

      return outString
    } catch {
      case ex: IllegalArgumentException => print(ex +  ex.getMessage)
        return ""
    }
    return ""
  }

  // convert GBAD to Neo4J
  def Convert_GBAD_2_Neo3J_Cypherfn(inFile:String, outFile:String): Unit = {
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

      writer.append("CREATE ")

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
        //
        if( arr.length == 3  && line.indexOf("XP # ") == -1 && line.indexOf("v ") >= 0 ) {
          currVertexID = Integer.valueOf(arr(1))
          var currVertexName = arr(2)
          currVertexName = currVertexName.replaceAll("\"","")
          arrVertexIDandName += currVertexName

          //            println("vertexID:" + currVertexID + " vertexName:" + currVertexName.replaceAll("\"","")
          //                    +" "+arrVertexIDandName.size+" arrVertexIDandName(0):"+ arrVertexIDandName(0) )
        }
        //
        if(arr.length == 4) {
          currSourceNode = arr(1)
          currDestinationNode = arr(2)
          currEdge = arr(3)
          currEdge = currEdge.replaceAll("\"","").replace("(","").replace(")","")

          //          println("atom. directed?:" + currSourceNode + " " +currDestinationNode)
          currSourceNodeNameInteger += 1
          currDestinationNodeNameInteger = currSourceNodeNameInteger + 1

          // Create nodes and edges
          currCSQLstatement = createNodesAndEdges(counterForXP,
            currSourceNode,
            currDestinationNode,
            currEdge,
            arrVertexIDandName,
            currSourceNodeNameInteger,
            currDestinationNodeNameInteger
          )
          println(currCSQLstatement)

          if(conccurrCSQLstatement.length() == 0) {
            conccurrCSQLstatement = currCSQLstatement
            writer.append(currCSQLstatement)
          }
          else {
            conccurrCSQLstatement += "," + currCSQLstatement
            writer.append(","+currCSQLstatement)
          }
          writer.flush()

        }
      }

      // last one
      println("last counterForXP:" + counterForXP +   " arrVertexIDandName.size:"+arrVertexIDandName.size)

      currCSQLstatement = createNodesAndEdges(counterForXP, currSourceNode, currDestinationNode,
        currEdge, arrVertexIDandName, currSourceNodeNameInteger, currDestinationNodeNameInteger )

      writer.append(","+currCSQLstatement)
      writer.flush()

    } catch {
      case ex: IllegalArgumentException => print(ex +  ex.getMessage)
    }
  }

  // change baseFolder name here
  val baseFolder = "/Users/lenin/Dropbox/#problems/p19/C995_only/"
  // change input file name here
  var inputFilename   = "C995_OUTPUT_3.g"
  inputFilename   = baseFolder + inputFilename
  // change output file name here
  var outputFilename   = "C995_OUTPUT_3_output.csql"
  outputFilename   = baseFolder + outputFilename

  // convert GBAD to Neo4J
  Convert_GBAD_2_Neo3J_Cypherfn(inputFilename, outputFilename)

}