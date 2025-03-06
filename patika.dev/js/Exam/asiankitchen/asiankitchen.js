document.addEventListener("DOMContentLoaded", function () {
    const menuContainer = document.querySelector(".section-center");
    const btnContainer = document.querySelector(".btn-container");

    // Kategorileri dinamik olarak oluştur
    const categories = menu.reduce(
        (values, item) => {
            if (!values.includes(item.category)) {
                values.push(item.category);
            }
            return values;
        },
        ["All"]
    );

    // Kategori butonlarını oluştur
    const categoryButtons = categories
        .map((category) => {
            return `<button class="btn-item" data-id=${category}>${category}</button>`;
        })
        .join("");

    btnContainer.innerHTML = categoryButtons;

    // Tüm butonları seç
    const filterButtons = document.querySelectorAll(".btn-item");

    // Menü öğelerini oluştur
    function displayMenuItems(menuItems) {
        let displayMenu = menuItems.map((item) => {
            return `<div class="col-6 menu-items">
                <img src=${item.img} alt=${item.title} class="photo" />
                <div class="menu-info">
                    <div class="menu-title">
                        <h4>${item.title}</h4>
                        <h4>${item.price}</h4>
                    </div>
                    <div class="menu-text">
                        ${item.desc}
                    </div>
                </div>
            </div>`;
        });
        displayMenu = displayMenu.join("");
        menuContainer.innerHTML = displayMenu;
    }

    // Tüm menü öğelerini başlangıçta göster
    displayMenuItems(menu);

    // Butonlara tıklama olayını ekle
    filterButtons.forEach((btn) => {
        btn.addEventListener("click", (e) => {
            const category = e.currentTarget.dataset.id;
            const menuCategory = menu.filter((menuItem) => {
                if (menuItem.category === category) {
                    return menuItem;
                }
            });
            if (category === "All") {
                displayMenuItems(menu);
            } else {
                displayMenuItems(menuCategory);
            }
        });
    });
});