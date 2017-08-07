
import scala.io.Source
import java.io.{FileNotFoundException, IOException}

// CLASS
//class Convert_GBAD_2_Neo3J_Cypher {
//  def helloWorld() { println("hey") }
//}

/*
*   Author: Lenin Mookiah
*   Email : lenin.world@gmail.com
* */

// OBJECT
object Convert_GBAD_2_Neo3J_Cypher extends App  {

  // convert GBAD to Neo4J
  def Convert_GBAD_2_Neo3J_Cypherfn(inFile:String): Unit = {
    try{

      println("inFile:"+inFile);

      for (line <- Source.fromFile(inFile).getLines) {
          println(line)

          var arr = line.split("\\s+")

           println("atom. "+arr.length +" "+arr(0) + " "+arr(1)+" "+arr(2))

      }

    } catch{
      case ex: IllegalArgumentException => print(ex+  ex.getMessage)
    }
  }

  val baseFolder = "/Users/lenin/Dropbox/#problems/p19/C995_only/"
  var filename = "C995_OUTPUT_3.g"
      filename = baseFolder + filename

  // convert GBAD to Neo4L
  Convert_GBAD_2_Neo3J_Cypherfn(filename);

}