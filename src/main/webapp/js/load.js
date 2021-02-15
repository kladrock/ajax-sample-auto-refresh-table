$(document).ready(function () {
    loadData();
    setInterval(loadData, 5000); //refesh data every 5 seconds.
});

// Test train data
var testDataUrl = "https://raw.githubusercontent.com/kladrock/klad-rocks/main/trains.json"

function loadData() {
    $("#example").DataTable();
    $.ajax({
        type: 'GET',
        url: testDataUrl,
        contentType: "text/plain",
        dataType: 'json',
        success: function (data) {
            let trainsData = data;
            populateScheduleTable(trainsData);
        },
        error: function (e) {
            console.log("There was an error executing the request!");
            console.log("error: " + JSON.stringify(e));
        }
    });
}

// populate the data table with train data
function populateScheduleTable(data) {
    console.log("Populating the schedule.");
    // clear old data.
    $("#example").DataTable().clear();

    Object.keys(data.trains).forEach(function(key) {
        $('#example').dataTable().fnAddData([
            key,
            data.trains[key].train_number,
            data.trains[key].departure,
            data.trains[key].destination,
            data.trains[key].arrival,
            data.trains[key].trip_time
        ]);
    })
}
