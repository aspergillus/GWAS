# GWAS

*****Instruction to start web application**** 

1) install plumber, remotes and gwasrapidd from remotes packages 
2) after installing all packages open plumber.R from start_api folder
3) click on RUN API and copy the port from api
  for example:- 
  Running swagger Docs at http://127.0.0.1:7262/__docs__/
  7262 will be your port

4) Paste the port into getquery.js and details.html
  for example:- 
  xhr.open('GET', 'http://127.0.0.1:7262/Query?query='+userquery);
  
5) open localhost/folder_name/index.html and search for traits.
  
