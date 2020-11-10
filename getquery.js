
    function callandgetresults() {
        let xhr = new XMLHttpRequest();
        var userquery = document.getElementById('query-box').value  // first element in DOM  (index 0) with name="txtJob"


        // 2. Configure it: GET-request for the URL /article/.../load
        xhr.open('GET', 'http://localhost/api/index.php?query='+userquery);

        // 3. Send the request over the network
        xhr.send();

        // 4. This will be called after the response is received
        xhr.onload = function() {
        if (xhr.status != 200) { // analyze HTTP status of the response
            alert(`Error ${xhr.status}: ${xhr.statusText}`); // e.g. 404: Not Found
        } else { // show the result
            document.getElementById("result").innerHTML = xhr.response; 
            // alert(`Done, got ${xhr.response.length} bytes`); // response is the server
        }
        };

        xhr.onerror = function() {
        alert("Request failed");
        };
    }