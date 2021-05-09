// let xhr = new XMLHttpRequest;

// xhr.open('GET', 'products.php', true);

// xhr.onload = function() {
//     let content = '';
//     let data = JSON.parse(this.response);
//     let dollarUSLocale = Intl.NumberFormat('id-ID', {style:'currency', currency: 'IDR'});
//     data.message.forEach((item) => {
//         content += `
//         <div class="product">
//             <div class="product-image"><img src="img/${item.image}"></div>
//             <div class="product-description">
//                 <div class="name">${item.name}</div>
//                 <div class="pricing">${dollarUSLocale.format(item.price)}</div>
//             </div>  
//         </div>
//         `;
//     })
//     document.getElementById('product-container').innerHTML = content
// }

// xhr.send();
function show(limit, page) {
    $.get('products.php?api_key=abcd', function(data) {
        let content = '';
        let dollarUSLocale = Intl.NumberFormat('id-ID', {style:'currency', currency: 'IDR'});;
        
        // pagination start

        let cur_page = parseInt(page);
        let total_page = Math.ceil(data.message.length/limit);

        $("#cur_page").text(cur_page+1);
        $("#total_page").text(total_page);

        // looping properties
        let offset = cur_page*limit;
        let length = limit*(cur_page+1);

        if(length>=data.message.length) {
            length = data.message.length;
        }
        // pagination end

        // loop

        for(var i = offset; i< length; i++) {
            content += `
                <div class="product">
                    <div class="product-image"><img src="img/${data.message[i].image}" loading="lazy"></div>
                    <div class="product-description">
                        <div class="name">${data.message[i].name}</div>
                        <div class="pricing">${dollarUSLocale.format(data.message[i].price)}</div>
                    </div>  
                </div>
                `;
        }

        console.log('limit: ' + limit);
        console.log('page: ' + page);
        console.log('cur_page: ' + cur_page);
        console.log('total_page: ' + total_page);
        console.log('offset: ' + offset);
        console.log('length: ' + length);

        $('#product-container').html(content);
    })

}

show(6, 0);

$(".page-item").on('click', function(e) {
    e.preventDefault();
    let key = $(this).attr("data");
    let total = $("#total_page").text();
    let cur_page = $('#cur_page').text();
    let page = parseInt(cur_page)-1;
    let length = parseInt(total)-1;
    console.log(page);
    if(key=="prev") {
        if(page<=0){
            page = 0;
        } else {
            page--;
        }
    } else if(key=="next") {
        if(page>=length) {
            page=length;
        } else {
            page++;
        }
    }
    show(6, page);

})

$('#keyword-product').on('keyup', function(e) {
    let content = '';
    let keyword = document.getElementById('keyword-product');
    let idrFormat = Intl.NumberFormat('id-ID', {style: 'currency', currency: 'IDR'})
    console.log(keyword.value);
    if(e.keyCode == 13) {
        $.get(`product.php?api_key=abcd&keyword=${keyword.value}`, function(data) {
            $.each(data.message, function(i, item) {
                content += `
                    <div class="product">
                        <div class="product-image"><img src="img/${item.image}" loading="lazy"></div>
                        <div class="product-description">
                            <div class="name">${item.name}</div>
                            <div class="pricing">${idrFormat.format(item.price)}</div>
                        </div>  
                    </div>
                    `;
            })
            $('#product-container').html(content);
        })
    }

    
});




