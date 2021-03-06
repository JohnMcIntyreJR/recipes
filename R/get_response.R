#' Getting a response from a server
#'
#' Taken from rtypeform package created by Colin Gillespie
#' @param api An application programming interface key to authenticate a user to an API
#' @param url The url of the webpage
#' @importFrom httr user_agent GET content
#' @importFrom jsonlite fromJSON
#' @export
get_response = function(api, url) {
  authorization = get_authorization(api)
  ua = httr::user_agent("https://github.com/JohnMcIntyreJR/getrecipes")

  resp = httr::GET(url, authorization, ua)
  cont = httr::content(resp, "text", encoding = "UTF-8")
  content = jsonlite::fromJSON(cont)

  check_api_response(resp, content)
  content
}
