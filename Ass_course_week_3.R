oauth_endpoints("github")
myapp <- oauth_app("github",
                   key = "fb6a1403fd5f06d84b91",
                   secret = "48265dbf09a37a26ac80320b8de3d6cddcd6f3e3")
github_token <- oauth2.0_token(oauth_endpoints("github"), myapp)
gtoken <- config(token = github_token)
req <- GET("https://api.github.com/users/jtleek/repos", gtoken)
stop_for_status(req)
content(req)


x <- readLines(con=url("http://www.cpc.ncep.noaa.gov/data/indices/wksst8110.for"))

# Skip 4 lines
x <- x[-(1:4)]

mydata <- data.frame(var1 = substr(x,1,10),
                     var2 = substr(x, 16,19),
                     var3 = substr(x, 20, 23),
                     var4 = substr(x, 29, 32)  # and so on and so on
)