import java.io.{File, PrintWriter}

import Convert_GBAD_2_Neo4J_Cypher.{baseFolder, inputFilename, isSOPprint, outputFilename}

import scala.io.Source
import com.typesafe.config.{Config, ConfigFactory}

/*
*   Author      : Lenin Mookiah
*   Email       : lenin.world@gmail.com
*   Description : Convert GBAD graph file into JSON file so that it can be easily imported into Neo4J
* */

object Convert_GBAD_2_JSON extends App  {

    /*
      * SAMPLE json OUTPUT file
       [
        [{
            "xp": "1"
          },
          {
            "type": "v",
            "index": "1",
            "name": "Integrity"
          },
          {
            "type": "v",
            "index": "2",
            "name": "Intelligent"
          }, {
            "xp": "1",
            "type": "v",
            "index": "3",
            "name": "Energy"
          }, {
            "type": "d",
            "index1": "1",
            "index2": "2",
            "edge": "with"
          }
        ]
      ]

     */

  // convert GBAD to Neo4J
  def Convert_GBAD_2_JSON_1(inFile:String, outFile:String, isSOPprint:Int): Unit = {
    try{
      println("Given Input File:"+inFile)
      println("Given Output File:"+outFile)

      var currSourceNode = ""
      var currDestinationNode = ""
      var currEdge = ""
      // output file
      val writer = new PrintWriter(new File(outFile))

      var counterForXP = 0
      var currVertexID :Integer = 0
      var currSourceNodeNameInteger :Integer = 0
      var currDestinationNodeNameInteger :Integer = 0


      var concVertexJSONstring = ""
      var concEdgeJSONstring = ""
      var concFinal = ""
      // start of JSON in out
      writer.append("["+"\n")
      writer.flush()

      // read each line
      for (line <- Source.fromFile(inFile).getLines) {
        concVertexJSONstring = ""
        concEdgeJSONstring = ""
        //
        if(line.indexOf("XP # ") >= 0) {
          // println("counterForXP:" + counterForXP +   " arrVertexIDandName.size:"+arrVertexIDandName.size)

          counterForXP += 1
        }
        var arr = line.split("\\s+")

          /*
            *   Vertex
            *
           */
        if( arr.length == 3  && line.indexOf("XP # ") == -1 && line.indexOf("v ") >= 0 ) {
          currVertexID = Integer.valueOf(arr(1))
          var currVertexName = arr(2)
              currVertexName = currVertexName.replaceAll("\"","")
              // expected json => {"xp": "1","type": "v","index": "1","name": "Integrity"}

              var jsonVertex =  s"""{ "xp" :"$counterForXP",
                                | "type":"v",
                                | "index":"$currVertexID",
                                | "name":"$currVertexName"}, """.stripMargin
              jsonVertex = jsonVertex+"\n"

              if(concVertexJSONstring.length == 0)
                concVertexJSONstring = jsonVertex
              else
                concVertexJSONstring += jsonVertex

          //            println("vertexID:" + currVertexID + " vertexName:" + currVertexName.replaceAll("\"","")
          //                    +" "+arrVertexIDandName.size+" arrVertexIDandName(0):"+ arrVertexIDandName(0) )
        }
          /*
            * edge relationships between pair of nodes
            *
           */
        if(arr.length == 4) {
          currSourceNode = arr(1)
          currDestinationNode = arr(2)
          currEdge = arr(3)
          currEdge = currEdge.replaceAll("\"","").replace("(","").replace(")","")

          // println("atom. directed?:" + currSourceNode + " " +currDestinationNode)
          currSourceNodeNameInteger += 1
          currDestinationNodeNameInteger = currSourceNodeNameInteger + 1

          // expected json: {"type": "d", "index1": "1", "index2": "2", "edge": "has"}

          var jsonEdgeString = s"""{"type": "d",
                                   | "index1": "$currSourceNode" ,
                                   | "index2": "$currDestinationNode" ,
                                   | "edge": "$currEdge"
                                   |},""".stripMargin
          jsonEdgeString = jsonEdgeString + "\n"

          if(concEdgeJSONstring.length == 0)
            concEdgeJSONstring = jsonEdgeString
          else
            concEdgeJSONstring += jsonEdgeString

//          println("jsonEdgeString:" + jsonEdgeString);

        }

        var conc = concVertexJSONstring + concEdgeJSONstring

        if(line.indexOf("XP #") == -1) {
          conc = conc.substring(0, conc.length - 1)
          concFinal += conc
        }
      }
      // final before writing
      concFinal = concFinal.substring(0, concFinal.length - 1)
      // writing into output file
      writer.append(concFinal)
      writer.flush()

      writer.append("]"+"\n")
      writer.flush()

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
  var isSOPprint = -1

  // load the configuration file
  val config = ConfigFactory.parseFile(new File("/Users/lenin/Dropbox/GBAD2Neo4J/conf/application.conf"))

  baseFolder = config.getString("Source.GBAD2JSON.baseFolder")
  inputFilename = baseFolder + config.getString("Source.GBAD2JSON.inputFilename")
  outputFilename = baseFolder + config.getString("Source.GBAD2JSON.outputFilename")
  isSOPprint = 0 //debug => 1 = level 1 debug

  println("<!--^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^--> read from config (JSON) ")
  println( "baseFolder:" + baseFolder +"\ninputFilename:" + inputFilename + "\noutputFilename:"+outputFilename )
  println("<!--^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^-->")

  // convert GBAD to JSON (gives one type of JSON output file)
  Convert_GBAD_2_JSON_1(inputFilename, outputFilename, isSOPprint)

}