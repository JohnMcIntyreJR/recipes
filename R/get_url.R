#' Extracting the URL of a recipe bunny webpage
#'
#' We are taking the user parameter entries and parsing them into the URL link
#' @param ingredients A string containing each chosen ingredient, separated by a comma
#' @param type The desired type of food
#' @param page The chosen page of search results
#' @importFrom glue glue
#' @export
get_url = function(ingredients, type, page) {
  if (is.null(ingredients)) {
    glue::glue("http://www.recipepuppy.com/api/?q={type}&p={page}")
    } else {
      glue::glue("http://www.recipepuppy.com/api/?i={ingredients}&q={type}&p={page}")
    }
  }
