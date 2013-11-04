package controllers

import play.api.mvc._
import play.api.Routes
import play.api.libs.EventSource

object MainController extends Controller {

  /**
   * The index page.  This is the main entry point, seeing as this is a single page app.
   */
  def index(path: String) = Action {
    val palette = List("KijiTable")
    Ok(views.html.index(palette))
  }

  /** The javascript router. */
  def router = Action { implicit req =>
    Ok(
      Routes.javascriptRouter("routes")(
      )
    ).as("text/javascript")
  }

  /** Server Sent Events endpoint. */
//  def events = Action {
//    Ok.feed(EventDao.stream &> EventSource()).as(EVENT_STREAM)
//  }
}
