let id;

$('#category').on('change', function () {
    // Get the selected category value
    let selectedCategory = $(this).val();

    // Make an AJAX call to the /get-sub-category API
    $.ajax({
        type: 'GET',
        url: '/api/product/get-sub-category',
        data: { category: selectedCategory },
        success: function (response) {
            // Update the sub-category select options
            let subCategories = response.data.subCategory;
            let subCategorySelect = $('#sub-category');

            // Clear existing options
            subCategorySelect.empty();

            // Add new options based on the API response
            $.each(subCategories, function (index, subCategory) {
                subCategorySelect.append('<option value="' + subCategory + '">' + subCategory + '</option>');
            });
        },
        error: function (error) {
            console.error('Error fetching sub-categories:', error);
        }
    });
});


//add product
$(".btn-add-product").on('click', () => {
    if(validateForm()) {
        let form = document.getElementById("from-add-product");
        let formData = new FormData(form);

        // Make an AJAX call to the API endpoint
        fetch(form.action, {
            method: 'POST',
            body: formData
        })
            .then(response => response.json())
            .then(data => {
                // Assuming data contains the added product details
                if(data.statusCode === 200)
                    window.location.reload();
            })
            .catch(error => console.error('Error:', error));
    }
})

function confirmDelete(element) {
    const productId = $(element).closest("tr").find(".id").text();
    id = productId;
}

function removeProduct() {
    $.ajax({
        url: "/api/product/delete/" + id,
        type: "GET",
        success: function(data) {
            // Handle success, e.g., reload the page
            location.reload();
        },
        error: function(error) {
            // Handle error, display a message, etc.
            alert("Error deleting product. Please try again.");
        }
    });
}
function validateForm() {
    var productName = document.getElementById("product-name").value;
    var price = document.getElementById("price").value;
    var category = document.getElementById("category").value;
    var subCategory = document.getElementById("sub-category").value;
    var size = document.getElementById("size").value;
    var imageInput = document.getElementById("product-images");

    // Validate product name
    if (productName.trim() === "") {
        showMessage("Vui lòng nhập tên sản phẩm");
        return false;
    }

    // Validate price (assuming it should be a positive number)
    if (isNaN(price) || parseFloat(price) <= 0) {
        showMessage("Vui lòng nhập giá sản phẩm hợp lệ");
        return false;
    }

    // Validate category
    if (category.trim() === "") {
        showMessage("Vui lòng chọn danh mục");
        return false;
    }

    // Validate sub-category
    if (subCategory.trim() === "") {
        showMessage("Vui lòng chọn danh mục con");
        return false;
    }

    // Validate size
    if (size.trim() === "") {
        showMessage("Vui lòng chọn kích thước");
        return false;
    }

    // Validate image input (assuming at least one image is required)
    if (imageInput.files.length === 0) {
        showMessage("Vui lòng chọn ít nhất một ảnh sản phẩm");
        return false;
    }

    return true;
}

function showMessage(message) {
    alert(message);
}