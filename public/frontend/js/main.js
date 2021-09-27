function fetchData(type, val, str) {
    if (type === 'get') {
        url = `index.php?controller=book&action=getByCategory&category=${val}`;
    }
    else if (type === 'filter') {
        url = `index.php?controller=book&action=filterBook&category=${val}&sortby=${str}`;
    }
    else if (type == 'pagination') {
        url = `index.php?controller=book&action=pagination&category=${val}&page=${str}`;
    }
    else if (type = 'search') {
        url = `index.php?controller=book&action=searchBook&name=${val}`;
    }
    fetch(url)
        .then(response => response.json())
        .then(posts => {
            if (posts.length !== 0) {
                const books = posts.map(book => {
                    let bookPrice = book.price.toString().replace(
                        /(\d)(?=(\d{3})+(?!\d))/g,
                        "$1.");
                    return `
                        <div class="col l-2-4 m-4 c-6">
                            <a href="index.php?controller=book&action=bookDetail&id=${book['book_id']}" class="item">
                                <img src="public/admin/uploads/${book.image}" alt="">
                                <div class="item-body">
                                    <h4 class="item-title">${book.title}</h4>
                                    <p class="item-price">${bookPrice} VNĐ</p>
                                    <div class="item-rate">
                                        <div class="item-rate__heart">
                                            <i class="heart-icon far fa-heart"></i>
                                            <i class="heart-icon-fill fas fa-heart"></i>
                                        </div>
                                        <div class="item-rate__star">
                                            <i class="far fa-star"></i>
                                            <i class="far fa-star"></i>
                                            <i class="far fa-star"></i>
                                            <i class="far fa-star"></i>
                                            <i class="far fa-star"></i>
                                        </div>
                                    </div>
                                    <p class="item-author">${book.author}</p>
                                </div>
                            </a>
                        </div>
                        `;
                })
                document.querySelector('.book').innerHTML = books.join('');
                heartIconChange();
            }
        });
}

function removeFilterActive() {
    let btns = document.querySelectorAll('.home-filter .btn');
    btns.forEach(btn => {
        if (btn.matches('.active')) {
            btn.classList.remove('active');
        }
    })
}

// Get book by category
function sideBarAction() {
    let sidebarItems = document.querySelectorAll('.sidebar-item');
    function removeAllActive(sidebarItems) {
        sidebarItems.forEach(sidebarItem => {
            sidebarItem.classList.remove('active');
        })
    }
    sidebarItems.forEach(sidebarItem => {
        sidebarItem.onclick = function (e) {
            removeAllActive(sidebarItems);
            removeFilterActive();
            this.classList.add('active');
            let val = this.children[0].innerText;
            fetchData('get', val);
        }
    })
}


function findSideBarItemActive() {
    let sidebarItems = document.querySelectorAll('.sidebar-item');
    let sidebarItemActive = Array.from(sidebarItems).find(sidebarItem => {
        return sidebarItem.matches('.active');
    })
    return sidebarItemActive;
}

// filter book 
function filterProduct() {
    let btnPopular = document.querySelector('.btn-popular');
    let btnNew = document.querySelector('.btn-new');
    let btnBestSeller = document.querySelector('.btn-popular');
    let btnPriceDownUp = document.querySelector('.btn-price-down-up');
    let btnPriceUpDown = document.querySelector('.btn-price-up-down');

    function filterBook(e) {
        removeFilterActive();
        let str = '';
        let val = e.target.innerText;
        let btnPrice = document.querySelector('.home-filter .btn-price');
        switch (val) {
            case 'Mới nhất':
                str = 'create_date desc';
                e.target.classList.add('active');
                break;
            case 'Thấp - Cao':
                str = 'price asc';
                btnPrice.classList.add('active');
                break;
            case 'Cao - Thấp':
                str = 'price desc';
                btnPrice.classList.add('active');
                break;
            default:
                break;
        }
        fetchData('filter', findSideBarItemActive().innerText, str);
    }

    if (btnNew) {
        btnNew.addEventListener('click', filterBook);
    }

    if (btnPriceDownUp) {
        btnPriceDownUp.addEventListener('click', filterBook);
    }

    if (btnPriceUpDown) {
        btnPriceUpDown.addEventListener('click', filterBook);
    }
}
// Heart icon change
function heartIconChange() {
    let heartIcons = document.querySelectorAll('.item-rate__heart');
    if (heartIcons) {
        heartIcons.forEach(heartIcon => {
            heartIcon.onclick = function (e) {
                e.preventDefault();
                this.classList.toggle('heart-active');
            }
        }
        )
    }
}

// Page
function pagination() {
    let pageItems = document.querySelectorAll('.page-item-link');
    if (pageItems) {
        pageItems.forEach(pageItem => {
            pageItem.addEventListener('click', e => {
                e.preventDefault();
                let str = e.target.innerText;
                let val = findSideBarItemActive().innerText;
                fetchData('pagination', val, str);
            })
        })
    }
}
// Search
function searchBook() {
    let btnSearch = document.querySelector('.btn-search');
    let inputSearch = document.querySelector('#search');
    if (btnSearch) {
        btnSearch.addEventListener('click', e => {
            let val = inputSearch.value;
            fetchData('search', val);
        })
    }
}
function start() {
    sideBarAction();
    let sidebarFirst = document.querySelector('.sidebar-item:first-child');
    if (sidebarFirst) sidebarFirst.click();
    filterProduct();
    pagination();
    searchBook();
}

start();