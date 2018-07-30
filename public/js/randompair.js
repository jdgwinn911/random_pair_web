    function funky(){
        var x = document.createElement("INPUT");
        x.setAttribute("type", "text");
        x.setAttribute("name", "names[]");
        x.setAttribute("placeholder", "enter name");
        var anything = document.getElementById("anything");
        anything.appendChild(x);

    }

    function notSoFunky(){
        var permmy = document.getElementById("anything");
        permmy.removeChild(permmy.lastChild);



    }

    