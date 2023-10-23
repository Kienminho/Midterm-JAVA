//set trạng thái trang hiện tại
$(window).on("load", function() {
    let activePageIndex = localStorage.getItem("activePageIndex");
    if (activePageIndex) {
        $(".page-index").removeClass("active");

        $(`.page-number li a:contains(${activePageIndex})`).closest("li").addClass("active");
        localStorage.clear();
    }
});

let currentProducts //số lượng sản phẩm theo category
let productSubCategory // số lượng sản phẩm theo sub category
//url của trang hiện tại
var path = window.location.pathname;
const regex = /\/([^\/]+)\/?$/;
var lastSegment = path.match(regex)[1];

const apiUrl = `http://localhost:8080/api/product/get-product-by-category/${lastSegment}`;
//lấy thẻ div chứa các sản phẩm
const divWapper = $(".row_13");

//fetch data theo category - v1
// async function fetchDataFromApi(apiUrl) {
//     try {
//         const response = await fetch(apiUrl);
//
//         if (!response.ok) {
//             throw new Error('Network response was not ok');
//         }
//
//         return await response.json();
//     } catch (error) {
//         console.error('Error fetching data:', error);
//         throw error;
//     }
// }

//fetch data theo category
fetch(apiUrl)
    .then(response => {
        if (!response.ok) {
            throw new Error(`Network response was not ok: ${response.statusText}`);
        }
        return response.json();
    })
    .then(data => {
        // Lưu dữ liệu vào biến globalData
        currentProducts = data.data;
        console.log(currentProducts);
        numberPage(Math.ceil(currentProducts.length/9));
        //console.log(Math.ceil(currentProducts.length/9));
    })
    .catch(error => {
        // Xử lý lỗi ở đây
        console.error('Fetch error:', error);
    });





//lấy sub category
async function getProductBySubCategory(element) {
    event.preventDefault();
    //subCategory
    let subCategory = element.getAttribute("href").match(regex)[1];
    console.log(subCategory);
    // const dataAPI =  await fetchDataFromApi(apiUrl);
    // currentProducts = dataAPI.data;

    //xoá tất cả class is-active
    $(".sub-category").removeClass("is-active-sub-category");
    // thêm vào phần tử vừa click
    $(element).addClass("is-active-sub-category");

    //data theo subcategory
    productSubCategory = currentProducts.filter(p =>  p.subCategory === subCategory);
    //tính toán số page
    numberPage(Math.ceil(productSubCategory.length/9));
    displayProduct(productSubCategory);
}

function lowToHighFilter() {
    event.preventDefault();
    productSubCategory.sort((a,b) => a.price - b.price);
    displayProduct(productSubCategory);
}

function highToLowFilter() {
    event.preventDefault();
    productSubCategory.sort((a,b) => b.price - a.price);
    displayProduct(productSubCategory);
}

//sort theo size

function allSize() {
    event.preventDefault();
    displayProduct(productSubCategory);
}
function sizeS() {
    console.log(1111)
    event.preventDefault();
    const productSizeS = productSubCategory.filter(p => p.size ==="S");
    displayProduct(productSizeS);

}
function sizeM() {
    event.preventDefault();
    const productSizeM = productSubCategory.filter(p => p.size ==="M");
    displayProduct(productSizeM);

}
function sizeL() {
    event.preventDefault();
    const productSizeL = productSubCategory.filter(p => p.size ==="L");
    displayProduct(productSizeL);

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


//chuyển đến page tương ứng
function goToPage(element) {
    event.preventDefault();

    //lưu phần tử chứa class active vào local
    let pageIndex = element.textContent;
    localStorage.setItem("activePageIndex", pageIndex);
    window.location = path+ `?pageIndex=${pageIndex}`;
}

//tính toán số trang
//nếu number== 1 thì chỉ có một trang
function numberPage(number) {
    let li;
    const wrapperLi = $(".page-number");
    if(number===1) {

        li = `<li class="active"><a href="">1</a></li>`;
        wrapperLi.empty();
        wrapperLi.append(li)
        return;
    }
    wrapperLi.empty(); //làm rỗng
    for (let i = 1; i <= number; i++) {
        if(i===1)  li = `<li class="page-index active"><a  href="" onclick="goToPage(this)">${i}</a></li>`
        else
            li = `<li class="page-index"><a href="" onclick="goToPage(this)">${i}</a></li>`

        wrapperLi.append(li)
    }

}



//chia trang trang cho sản phẩm theo sub Category

