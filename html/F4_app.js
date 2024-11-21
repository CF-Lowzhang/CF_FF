let type = 0

$(function () {
    window.addEventListener('message', function (event) {
        var item = event.data;

        if (event.data.action == 'data_update') {
            // 獲取接收到的數據
            var eventType = event.data.eventType;

            // 根據 eventType 修改相應的 HTML 元素
            var elements = document.querySelectorAll('[data-type="' + eventType + '"]');
                // console.log('Search：',elements);
            elements.forEach(function(element) {
                // var imageSrc = 'images/' + eventType + '.png';
                var descriptionText = event.data.textContent;
                // element.querySelector('.btn_image').src = imageSrc;
                switch (event.data.eventSRC) {
                    case 'emotes':
                        element.querySelector('.btn-image').src = 'images/emotes.png';
                        break;
                    case 'command':
                        element.querySelector('.btn-image').src = 'images/command.png';
                        break;
                    case 'event':
                        element.querySelector('.btn-image').src = 'images/event.png';
                        break;
                    default:
                        element.querySelector('.btn-image').src = 'images/question.png';
                }
                element.querySelector('.btn_description').textContent = descriptionText;
                // console.log('descriptText：' + descriptionText);
            });

            // 執行其他相關操作
            //console.log('接收到的事件類型為：' + eventType);
        }

        if (event.data.action == 'F4_player') {
            $(".logo-container").show();
            $(".logo-container").css("opacity","1.0")
            $(".logo-container").css("pointer-events","none")
            $(".logo").css("pointer-events","none")
            $(".menu").toggleClass("active");
            $(".menu").css("pointer-events","none")
            $(".playermenu").css("opacity","1.0")
            $(".playermenu").css("pointer-events","none")
            setTimeout(function(){
                $(".playermenu").css("pointer-events","all")
                $(".rotater").css("pointer-events","all")
                $(".logo-container").css("pointer-events","all")
                $(".logo").css("pointer-events","all")
                $(".menu").css("pointer-events","all")
            }, 800);

            // $(".vehiclemenu").css("opacity","0.0")
            // $(".vehiclemenu").css("pointer-events","none")
            // $(".onvehiclemenu").css("opacity","0.0")
            // $(".onvehiclemenu").css("pointer-events","none")
        }
        
        if (event.data.action == 'F4_escape') {
            $(".menu").toggleClass("active");
            $(".logo-container").hide()
            $(".playermenu").css("pointer-events","none")
            $(".rotater").css("pointer-events","none")
            $(".logo-container").css("pointer-events","none")
            $(".logo").css("pointer-events","none")
            $(".menu").css("pointer-events","none")
            $.post(`https://${GetParentResourceName()}/F4_escape`, JSON.stringify({}))   
            // $(".status").hide()
            // $(".background").hide()
        }

        // if (event.data.action == 'inVehicle') {
        //     $(".logo-container").show();
        //     $(".logo-container").css("opacity","1.0")
        //     $(".logo").css("pointer-events","all")
        //     $(".menu").toggleClass("active");
        //     $(".menu").css("pointer-events","all")
        //     $(".playermenu").css("opacity","0.0")
        //     $(".playermenu").css("pointer-events","none")
        //     $(".onvehiclemenu").css("opacity","0.0")
        //     $(".onvehiclemenu").css("pointer-events","none")
        //     $(".vehiclemenu").css("opacity","1.0")
        //     $(".vehiclemenu").css("pointer-events","none")
        //     setTimeout(function(){
        //         $(".vehiclemenu").css("pointer-events","all")
        //     }, 800);
        // }
        
        // if (event.data.action == 'onVehicle') {
        //     $(".logo-container").show();
        //     $(".logo-container").css("opacity","1.0")
        //     $(".menu").toggleClass("active");
        //     $(".menu").css("pointer-events","all")
        //     $(".playermenu").css("opacity","0.0")
        //     $(".playermenu").css("pointer-events","none")
        //     $(".vehiclemenu").css("opacity","0.0")
        //     $(".vehiclemenu").css("pointer-events","none")
        //     $(".onvehiclemenu").css("opacity","1.0")
        //     $(".onvehiclemenu").css("pointer-events","none")
        //     $(".status").css("opacity","1.0")
        //     $(".status").text(item.StatusText);
        //     setTimeout(function(){
        //         $(".onvehiclemenu").css("pointer-events","all")
        //     }, 800);
        // }
    })
    $(".logo").click(function() {
        $(".menu").toggleClass("active");
        $(".menu").css("pointer-events","none")
        $(".logo-container").hide()
        $.post(`https://${GetParentResourceName()}/F4_escape`, JSON.stringify({}))
        // $(".status").hide()
        // $(".background").hide()   
    });


    $('.rotater').on('click', function (event) {
        if (event.type == "click") {
            type = parseInt($(this).attr('data-type'))
            $.post(`https://${GetParentResourceName()}/F4_playerAction`, JSON.stringify({
                        action: type
                    }))
        } else if (event.type == "mouseleave") {
            type = 0
        }
    })

    $('.main__textItemButton').on('mouseenter mouseleave', function (event) {
        if (event.type == "mouseenter") {
            type = parseInt($(this).attr('data-type'))
        } else if (event.type == "mouseleave") {
            type = 0
        }
    })
})
