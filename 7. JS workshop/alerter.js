const sendAlert = () => {
    const element = document.getElementById("general_kenobi");
    element.getAttribute("hidden") ? element.removeAttribute("hidden") : element.setAttribute("hidden", true)
    alert('Why Hello There');
}