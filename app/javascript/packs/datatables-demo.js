// Call the dataTables jQuery plugin

console.log("Data  js file loaded");

$(document).ready(function() {
 

  $('#dataTable').DataTable( {
        order: [[2, 'asc']],
        rowGroup: {
            dataSrc: 2
        }
    } );
});
