
import java.io._
import org.apache.http.HttpEntity
import org.apache.http.HttpResponse
import org.apache.http.client.ClientProtocolException
import org.apache.http.client.HttpClient
import org.apache.http.client.methods.HttpGet
import org.apache.http.impl.client.DefaultHttpClient
import scala.collection.mutable.StringBuilder
import scala.xml.XML


object ScalaApacheHttpRestClient {

  def main(args: Array[String]) {

    val content = getRestContent("http://rss.nytimes.com/services/xml/rss/nyt/Education.xml")

    println("got->"+content)

//    val xmlContent = XML.loadString(content)
//    val temp = (xml \\ "channel" \\ "item" \ "condition" \ "@temp") text
//    val extractText = (xml \\ "channel" \\ "item" \ "condition" \ "@text") text

  }

  /**
    * Return content from the URL
    */
  def getRestContent(httpUrl:String): String = {
    var outText = ""
    val client = new DefaultHttpClient()
    val response = client.execute(new HttpGet(httpUrl))
    val entity = response.getEntity()

    if (entity != null) {
      val inStream = entity.getContent()
      outText = scala.io.Source.fromInputStream(inStream).getLines.mkString
      inStream.close
    }
    client.getConnectionManager().shutdown()
    return outText
  }

}