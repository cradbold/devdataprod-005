---

title       : Dataset Exploration
substitle   : Perusing 'datasets' R Library
author      : Conrad Warmbold
job         : 
framework   : io2012
highlighter : highlight.js
widgets     : []
mode        : selfcontained
 
--- 

The 'datasets' library contains the following datasets -- which one should you use?


```
##   [1] "AirPassengers"         "BJsales"              
##   [3] "BJsales.lead"          "BOD"                  
##   [5] "CO2"                   "ChickWeight"          
##   [7] "DNase"                 "EuStockMarkets"       
##   [9] "Formaldehyde"          "HairEyeColor"         
##  [11] "Harman23.cor"          "Harman74.cor"         
##  [13] "Indometh"              "InsectSprays"         
##  [15] "JohnsonJohnson"        "LakeHuron"            
##  [17] "LifeCycleSavings"      "Loblolly"             
##  [19] "Nile"                  "Orange"               
##  [21] "OrchardSprays"         "PlantGrowth"          
##  [23] "Puromycin"             "Seatbelts"            
##  [25] "Theoph"                "Titanic"              
##  [27] "ToothGrowth"           "UCBAdmissions"        
##  [29] "UKDriverDeaths"        "UKgas"                
##  [31] "USAccDeaths"           "USArrests"            
##  [33] "USJudgeRatings"        "USPersonalExpenditure"
##  [35] "VADeaths"              "WWWusage"             
##  [37] "WorldPhones"           "ability.cov"          
##  [39] "airmiles"              "airquality"           
##  [41] "anscombe"              "attenu"               
##  [43] "attitude"              "austres"              
##  [45] "beaver1"               "beaver2"              
##  [47] "cars"                  "chickwts"             
##  [49] "co2"                   "crimtab"              
##  [51] "discoveries"           "esoph"                
##  [53] "euro"                  "euro.cross"           
##  [55] "eurodist"              "faithful"             
##  [57] "fdeaths"               "freeny"               
##  [59] "freeny.x"              "freeny.y"             
##  [61] "infert"                "iris"                 
##  [63] "iris3"                 "islands"              
##  [65] "ldeaths"               "lh"                   
##  [67] "longley"               "lynx"                 
##  [69] "mdeaths"               "morley"               
##  [71] "mtcars"                "nhtemp"               
##  [73] "nottem"                "npk"                  
##  [75] "occupationalStatus"    "precip"               
##  [77] "presidents"            "pressure"             
##  [79] "quakes"                "randu"                
##  [81] "rivers"                "rock"                 
##  [83] "sleep"                 "stack.loss"           
##  [85] "stack.x"               "stackloss"            
##  [87] "state.abb"             "state.area"           
##  [89] "state.center"          "state.division"       
##  [91] "state.name"            "state.region"         
##  [93] "state.x77"             "sunspot.month"        
##  [95] "sunspot.year"          "sunspots"             
##  [97] "swiss"                 "treering"             
##  [99] "trees"                 "uspop"                
## [101] "volcano"               "warpbreaks"           
## [103] "women"
```

---

While learning R, I've created an app to help you explore each of the 'datasets' items.  From dropdowns, you can select both a dataset and a function to apply to that dataset:


```
## [1] "summary" "str"     "head"    "tail"    "print"   "class"   "names"
```

---

Additionally, when a dataset is selected, its default table and plot are rendered.  Datasets that don't render directly are manually coerced as shown below:


```r
if (class(dataset) %in% c('ts', 'list', 'table', 'factor', 'numeric', 'character')) { 
    dataset <- as.data.frame(dataset)
}
```

---

Visit the [Data Exploration](https://cradbold.shinyapps.io/devdataprod-005/) now to see it in action!
