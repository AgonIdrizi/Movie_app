function myDropdownFunction() {
    var x = document.getElementsByClassName("myNavbar");
    if (x.className === "myNavbar") {
        x.className += " responsive";
    } else {
        x.className = "myNavbar";
    }
} 