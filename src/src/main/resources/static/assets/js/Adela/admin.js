let id;
const tbody = $("#tbody")

fetch("/api/product/getProducts")
    .then(response => response.json())
    .then(data => {
        displayProduct(data.data.list);
    })
    .catch(err => console.log(err));

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
    console.log(34)
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

function goToUpdate(element) {
    event.preventDefault();
    const tr = $(element).closest("tr");
    const idUpdate = tr.find(".id").text();
    id = idUpdate;
    $("#product-name").val(tr.find(".name").text());
    $("#price").val(parseInt(tr.find(".price").text().replace("đ", "")));
    $("#size").val(tr.find(".size").text());
    $(".btn-add-product").addClass("d-none");
    $(".update-product").removeClass("d-none");
}

//handle update
$(".update-product").on("click", () => {
    const data = {
        id: id,
        productName: $("#product-name").val(),
        price: $("#price").val(),
        size: $("#size").val(),

    };
    const category = $("#category").val();
    const subCategory = $("#sub-category").val();
    if(category !== "Bánh kem" && subCategory !== "Bánh cho trẻ em") {
        data.category = category;
        data.subCategory = subCategory;
    }

    fetch("/api/product/update", {
        method: "POST",
        headers: {
            'Content-Type': 'application/json',
            'X-CSRF-TOKEN': $(".csrf").val(),
        },
        body: JSON.stringify(data),
    })
        .then(res => res.json())
        .then(data => {
            if(data.statusCode === 200)
            {
                location.reload();
                $(".btn-add-product").removeClass("d-none");
                $(".update-product").addClass("d-none");
            }

        })
        .catch(err => console.log(err))

});
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

//search
$("#search").on("input", ()=> {
    let inputValue = $("#search").val();
    $.ajax({
        type: "GET",
        url: `/api/product/get-list-search?keywords=${inputValue}`,
        contentType: "application/json; charset=utf-8",
        success: function (data) {
            // Xử lý dữ liệu trả về ở đây
            displayProduct(data.data.listSearch);
        },
        error: function (error) {
            // Xử lý lỗi nếu có
            console.error("Error:", error);
        }
    });
})

function showMessage(message) {
    alert(message);
}

function displayProduct(list) {
    tbody.empty();
    list.map(p => {
        const html =`<tr>
                        <td class="id">${p.id}</td>
                        <td>
                            <!-- Assuming 'image' is the field for image path in your Product class -->
                            <img src="${p.imageUrl}" alt="Product Image" style="max-width: 100px; max-height: 100px;">
                        </td>
                        <td class="name" >${p.productName}</td>
                        <td class="size">${p.size}</td>
                        <td class="price" > ${p.price} đ</td>

                        <td class="category">${p.category}</td>
                        <td class="sub-category">${p.subCategory}</td>
                        <td>
                            <a href="" data-toggle="modal" data-target="#confirmDeleteModal" onclick="confirmDelete(this)">Xóa  |</a>
                            <a href="" onclick="goToUpdate(this)">Sửa</a>
                        </td>
                    </tr>`
        tbody.append(html);
    })
}