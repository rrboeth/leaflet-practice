install.packages("leaflet")
require(leaflet)

my_map <- leaflet() %>% 
  addTiles()
my_map

my_map <- my_map %>%
  addMarkers(lat=40.730610, lng=-73.935242, 
             popup="NYC")
my_map

NYCicon <- makeIcon(
  iconUrl = "https://upload.wikimedia.org/wikipedia/commons/0/09/NYC_Logo_Wolff_Olins.svg",
  iconWidth = 31*215/230, iconHeight = 31,
  iconAnchorX = 31*215/230/2, iconAnchorY = 16
)

nycLatLong <- data.frame(
  lat = c(40.730610),
  lng = c(-73.935242))

nYCsites <- c(
  "<a href='https://www.nycgo.com/</a>")

nycLatLong %>% 
  leaflet() %>%
  addTiles() %>%
  addMarkers(icon = NYCicon, popup = nYCsites)
