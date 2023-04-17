# This trick via this page: https://www.gnu.org/software/gawk/manual/html_node/Splitting-By-Content.html
BEGIN {
   FPAT = "([^,]+)|(\"[^\"]+\")"
}

#Because we may have double quoted fields on any of them we abstract the function to handle the double quotes.
function strip_double_quotes(str)
{
      if (substr(str, 1, 1) == "\"") {
      len = length(str)
      str = substr(str, 2, len-2)
   }
   return str
}

#This causes the first line to be skipped.
#We skip the first line because it contains field names and we don't need them here.
NR==1{next} 
{
   #Sanitize the inputs
   $2 = strip_double_quotes($2)
   $5 = strip_double_quotes($5)
   $6 = strip_double_quotes($6)
   
   # Add the cleanly imported data to our seeds script
   print("Streetfood.Repo.insert!(%Streetfood.Business{applicant: \"" $2 "\", location_description: \"" $5 "\", address: \""$6"\"})")
}