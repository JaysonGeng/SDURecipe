
function headOpa() {
    var header = document.getElementById('head')
    // var header = document.getElementById('head');
    // header.style.background = "rgba(232, 33, 0,1)";
    var carousel_height = document.querySelector(".jd_carousel").offsetHeight;
    console.log(carousel_height);

    window.onscroll = function() {
        var srcollTop = document.documentElement.scrollTop || window.pageYOffset || document.body.scrollTop || 0;
        console.log("scro"+srcollTop);
        var tempOpa = srcollTop / carousel_height;
        console.log("tempOpa"+tempOpa);
        if (tempOpa > 0.8) {
            tempOpa = 1

        }

        header.style.background = "rgba(232, 33, 0," + tempOpa + ")";
    }
}

jd_carousel();

function jd_carousel() {
    var ul = document.querySelector(".carousel_img");
    var index = 1;

    ul.style.transform = "translateX(-" + index + "0%)";

    var timeId = goInterval()

    ul.addEventListener("transitionend", function() {
        if (index >3) {
            index = 1;
            ul.style.transition = "none";
            ul.style.transform = "translateX(-" + index + "0%)";
        } else if (index <= 0) {
            index = 3;
            ul.style.transition = "none";
            ul.style.transform = "translateX(-" + index + "0%)";
        }
        var liIndex = index - 1;
        activeLi(liIndex);
    })
    itcast(ul).swipe(function(d) {
        clearInterval(timeId);
        switch (d) {
            case "left":
                index++;
                break;
            case "right":
                index--;
            default:
                break;
        }
        ul.style.transition = "transform .3s";
        ul.style.transform = "translateX(-" + index + "0%)";
        timeId = goInterval();
    })

    function goInterval() {
        return setInterval(function() {
            index++;
            ul.style.transition = "transform .3s";
            ul.style.transform = "translateX(-" + index + "0%)";
        }, 1500)
    }

    function activeLi(tmpIndex) {
        var lis = document.querySelectorAll(".indexer > li");
        for (var i = 0; i < lis.length; i++) {
            var element = lis[i];
            element.classList.remove("active");
        }
        lis[tmpIndex].classList.add("active");
    }

}

