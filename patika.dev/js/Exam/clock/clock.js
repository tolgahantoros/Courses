// Kullanıcının adını al ve ekrana yazdır
let userName = prompt("Lütfen adınızı giriniz:");
document.getElementById("myName").innerText = userName;

// Saati güncelle ve ekrana yazdır
function showTime() {
    let date = new Date();
    let hours = date.getHours();
    let minutes = date.getMinutes();
    let seconds = date.getSeconds();
    let day = date.getDay();

    // Günleri Türkçe olarak ayarla
    let days = ["Pazar", "Pazartesi", "Salı", "Çarşamba", "Perşembe", "Cuma", "Cumartesi"];
    let dayName = days[day];

    // Saat, dakika ve saniyeyi iki haneli olarak göster
    hours = hours < 10 ? "0" + hours : hours;
    minutes = minutes < 10 ? "0" + minutes : minutes;
    seconds = seconds < 10 ? "0" + seconds : seconds;

    // Saati ve günü birleştir
    let time = `${hours}:${minutes}:${seconds} ${dayName}`;
    document.getElementById("myClock").innerText = time;

    // Her saniyede bir saati güncelle
    setTimeout(showTime, 1000);
}

// Sayfa yüklendiğinde saati göster
showTime();