=begin
Write a function that when given a URL as a string, parses out just the domain name and returns it as a string. For
example:
domain_name("http://github.com/carbonfive/raygun") == "github"
domain_name("http://www.zombie-bites.com") == "zombie-bites"
domain_name("https://www.cnet.com") == "cnet"

input:url as a string
output:string (name in the url)
explicit requirements:
  -parse out the domain name from the url and return it
datastructures
input:string //"https://www.cnet.com"
output: string // 'cnet'
intermediate: //
helper:
you have mulitple different possible leading strings and trailing strings 
preffix     suffix
"http://"   '.com'
'www.'      '.co.jp'
'https://'  '.ru'

algorithm
there are 3 preffixes that are all completely different, with the knoledge that I have now
all I can think of is to manually swap all three possiblity with an empty string 

then with that removed we go from "http://google.com" to 'google.com'
all of the suffix start with a '.' so with a string what we can do is split it up into an array where the delimeter is 
'.' and then simply return the first value of the array ['google', 'com']
=end

def domain_name(url)
  url.gsub!("http://" , '')
  url.gsub!("https://" , '')
  url.gsub!("www." , '')
  url.split('.')[0]
end
p domain_name("http://google.com") == "google"
p domain_name("http://google.co.jp") == "google"
p domain_name("www.xakep.ru") == "xakep"
p domain_name("https://youtube.com") == "youtube"