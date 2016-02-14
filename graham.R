library("rvest")
url <- "http://x-fin.com/stocks/screener/graham-formula/"

tickers <- url %>%
  read_html() %>%
  html_nodes(xpath='//*[@id="mn1"]/p[2]/span/text()')

tickers
