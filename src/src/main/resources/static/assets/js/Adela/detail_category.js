let currentProducts
let productSubCategory
//url của trang hiện tại
var path = window.location.pathname;
const regex = /\/([^\/]+)\/?$/;
var lastSegment = path.match(regex)[1];

const apiUrl = `http://localhost:8080/api/product/get-product-by-category/${lastSegment}`;
//lấy thẻ div chứa các sản phẩm
const divWapper = $(".row_13");

//fetch data theo category
async function fetchDataFromApi(apiUrl) {
    try {
        const response = await fetch(apiUrl);

        if (!response.ok) {
            throw new Error('Network response was not ok');
        }

        return await response.json();
    } catch (error) {
        console.error('Error fetching data:', error);
        throw error;
    }
}


//lấy sub category
async function getProductBySubCategory(element) {
    event.preventDefault();
    //subCategory
    let subCategory = element.getAttribute("href").match(regex)[1];
    const dataAPI = await fetchDataFromApi(apiUrl);
    currentProducts = dataAPI.data;

    //xoá tất cả class is-active
    $(".sub-category").removeClass("is-active-sub-category");
    // thêm vào phần tử vừa click
    $(element).addClass("is-active-sub-category");


    //data theo subcategory
    productSubCategory = currentProducts.filter(p =>  p.subCategory === subCategory)
    displayProduct(productSubCategory);
}

function lowToHighFilter(element) {
    event.preventDefault();
    productSubCategory.sort((a,b) => a.price - b.price);
    displayProduct(productSubCategory);
}

function highToLowFilter() {
    event.preventDefault();
    productSubCategory.sort((a,b) => b.price - a.price);
    displayProduct(productSubCategory);
}



//hiển thị sản phẩm theo filter
function displayProduct(arr) {
    divWapper.empty();
    arr.map(product => {
        const div = `<div class="col-md-4 col-sm-4 col-xs-6 col-480-12">
                            <div class="row_2">
                                <div class="box_prod clearfix">
                                    <a href="/product/get-detail/${product.id}" class="/assets/img_prod fadeInDown wow prod_h_1"><img class="w_100" src="${product.imageUrl}" alt=""/></a>
                                    <div class="clearfix"></div>
                                    <div class="sub_prod clearfix">
                                        <div class="price_prod fadeInLeft wow">${product.price.toLocaleString('vi-VN', { style: 'currency', currency: 'VND' })}</div>
                                        <h3 class="name_prod fadeInRight wow"><a href="">${product.productName}</a></h3>
                                        <div class="clearfix clearfix-5"></div>
                                        <a href="" class="add_prod_cart fadeInUp wow">Thêm vào giỏ hàng +</a>
                                    </div>
                                </div>
                            </div>
                        </div>`

        divWapper.append(div);
    })
}


