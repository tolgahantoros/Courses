// todolist.js

document.addEventListener("DOMContentLoaded", function () {
  const list = document.getElementById("list");
  const input = document.getElementById("task");
  const addButton = document.getElementById("liveToastBtn");

  // Local Storage'dan verileri yükle
  loadTasks();

  // Yeni öğe ekleme fonksiyonu
  function newElement() {
    const taskText = input.value.trim();
    if (taskText === "") {
      showToast("error");
      return;
    }

    const li = document.createElement("li");
    li.textContent = taskText;
    li.addEventListener("click", toggleTask);

    const closeButton = document.createElement("span");
    closeButton.className = "close";
    closeButton.innerHTML = "&times;";
    closeButton.addEventListener("click", deleteTask);

    li.appendChild(closeButton);
    list.appendChild(li);
    input.value = "";

    showToast("success");
    saveTasks();
  }

  // Öğeyi silme fonksiyonu
  function deleteTask(event) {
    event.stopPropagation();
    const li = event.target.parentElement;
    li.remove();
    saveTasks();
  }

  // Öğeyi işaretleme fonksiyonu
  function toggleTask(event) {
    const li = event.target;
    li.classList.toggle("checked");
    saveTasks();
  }

  // Toast mesajı gösterme fonksiyonu
  function showToast(type) {
    const toast = document.querySelector(`.toast.${type}`);
    toast.classList.remove("hide");
    toast.classList.add("show");

    setTimeout(() => {
      toast.classList.remove("show");
      toast.classList.add("hide");
    }, 4000);
  }

  // Local Storage'a kaydetme fonksiyonu
  function saveTasks() {
    const tasks = [];
    list.querySelectorAll("li").forEach(li => {
      tasks.push({
        text: li.textContent.replace("×", "").trim(),
        completed: li.classList.contains("checked")
      });
    });
    localStorage.setItem("tasks", JSON.stringify(tasks));
  }

  // Local Storage'dan yükleme fonksiyonu
  function loadTasks() {
    const tasks = JSON.parse(localStorage.getItem("tasks")) || [];
    tasks.forEach(task => {
      const li = document.createElement("li");
      li.textContent = task.text;
      if (task.completed) {
        li.classList.add("checked");
      }
      li.addEventListener("click", toggleTask);

      const closeButton = document.createElement("span");
      closeButton.className = "close";
      closeButton.innerHTML = "&times;";
      closeButton.addEventListener("click", deleteTask);

      li.appendChild(closeButton);
      list.appendChild(li);
    });
  }

  // Ekle butonuna tıklama olayını ekle
  addButton.addEventListener("click", newElement);

  // Enter tuşu ile ekleme
  input.addEventListener("keypress", function (e) {
    if (e.key === "Enter") {
      newElement();
    }
  });
});