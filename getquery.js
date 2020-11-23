var input = document.getElementById("query-box");

// Execute a function when the user releases a key on the keyboard
input.addEventListener("keyup", function(event) {
  // Number 13 is the "Enter" key on the keyboard
  if (event.keyCode === 13) {
    // Cancel the default action, if needed
    event.preventDefault();
    // Trigger the button element with a click
    document.getElementById("get-results").click();
  }
});

function callandgetresults() {
    let xhr = new XMLHttpRequest();

    var userquery = document.getElementById('query-box').value  
    // first element in DOM  (index 0) with name="txtJob"

    // 2. Configure it: GET-request for the URL 
    xhr.open('GET', 'http://127.0.0.1:7262/Query?query='+userquery);

    // 3. Send the request over the network
    xhr.send();

    // 4. This will be called after the response is received
    xhr.onload = function() {
    if (xhr.status != 200) { // analyze HTTP status of the response
        alert(`Error ${xhr.status}: ${xhr.statusText}`); // e.g. 404: Not Found
    } else { 
        // show the result
        var data = xhr.response;
        var jsonResponse = JSON.parse(data);
        
        const options = jsonResponse[0].split(',')

        var table = document.getElementById("Number_of_data");
        var count=1

        options.forEach(option => {
            var row = table.insertRow(count);

            splitted = option.split(': ');
            var cell1 = row.insertCell(0);
            var cell2 = row.insertCell(1);
            cell1.innerHTML = `<a href = "http://127.0.0.1/tool/details.html?of=${splitted[0]}&query=${userquery}">` + splitted[0] + '</a>';
            cell2.innerHTML = splitted[1];
            count++;
        });

    }
    };

    xhr.onerror = function() {
    alert("Request failed");
    };
} 