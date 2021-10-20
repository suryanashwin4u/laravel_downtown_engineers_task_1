function view_pop_up(pro_id, pro_name) {
    document.getElementById('product_id').value = pro_id;
    document.getElementById('product_value').value = pro_name;
    document.getElementById('id01').style.display = 'block';
}


function update_pro_data(product_id, product_name) {
    axios.post('/update_pro_name', {
            p_id: product_id,
            p_name: product_name,
        })
        .then(function (response) {
            if (response.data.msg === "Record updated successfully") {
                alert('Record updated successfully');
                document.getElementById('id01').style.display = 'none';
                // $("#id01").
                $('#p' + product_id).html(product_name);
            } else {
                $("#message").html(response.data.msg);
            }
        })
        .catch(function (error) {
            console.error("Unable to complete the request: " + error);
        })
}
