// This code is taken from https://www.alvinalexander.com/source-code/scala/scala-http-post-client-example-java-uses-apache-httpclient

import java.io._
import org.apache.commons._
import org.apache.http._
import org.apache.http.client._
import org.apache.http.client.methods.HttpPost
import org.apache.http.impl.client.DefaultHttpClient
import java.util.ArrayList
import org.apache.http.message.BasicNameValuePair
import org.apache.http.client.entity.UrlEncodedFormEntity

//
object HttpPostTester {

  def main(args: Array[String]) {

    var url = "http://127.0.0.1:7474/db/data/transaction/commit"
    getRestContent(url);
  }

  def getRestContent(url:String): String = {

//  val url = "http://httpbin.org/post";
    val post = new HttpPost(url)
//      post.addHeader("comments","now")
//      post.addHeader("custemail","lenin@gmail.com")
//      post.addHeader("custname","323232324")
//      post.addHeader("custtel","Lenin")
//      post.addHeader("delivery","Lenin")
//      post.addHeader("size","medium")
//      post.addHeader("topping","bacon")

    val client = new DefaultHttpClient
    val params = client.getParams
    params.setParameter("foo", "bar")

    val nameValuePairs = new ArrayList[NameValuePair](1)
    nameValuePairs.add(new BasicNameValuePair("registrationid", "123456789"));
    nameValuePairs.add(new BasicNameValuePair("accountType", "GOOGLE"));
    post.setEntity(new UrlEncodedFormEntity(nameValuePairs));

    // send the post request
    val response = client.execute(post)
    println("--- HEADERS ---")
    response.getAllHeaders.foreach(arg => println(arg))

    return ""
  }

}
