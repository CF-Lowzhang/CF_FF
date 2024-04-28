AxMenu = {}

AxMenu.Open = function(data){
    AxMenu.HomeMenu = data.menus;
    AxMenu.PreviousMenu = undefined;
    AxMenu.CurrentMenu = undefined;
    $('.F3_menu').fadeIn(0);
    AxMenu.SetupMenu(data.menus);
}

AxMenu.SetupMenu = function(table){
    AxMenu.CurrentMenu = table;
    AxMenu.Reset()
    $.each(table, function(i, label){
        i++
        $('#label-'+i).html(label.label)
        $('.hex-'+i).data(label)
        $('.i-'+i).addClass(label.icon+' fa-2x')
        $('.hex-'+i).click(function(){
            var menu = $(this).data()
            if (menu.submenu == false){
                $.post(`https://${GetParentResourceName()}/Event`, JSON.stringify({
                    event:menu.event,
                    parameter:menu.parameter,
                    type:menu.type
                }));
                if(menu.shoudclose){
                    AxMenu.Close()
                }
            }else{
                AxMenu.PreviousMenu = AxMenu.CurrentMenu;
                AxMenu.CurrentMenu = menu.submenu;
                AxMenu.SetupMenu(menu.submenu)
                
            }
        })
    })
}

AxMenu.Reset = function(){
    for (i = 0; i < 7; i++) {
        $('#label-'+i).html('')
        $('.hex-'+i).data('')
        $('.i-'+i).attr('class','i-'+i)
    };
    $('.hexagon').off()
    
    $('.close').click(function(){ 
            AxMenu.Close()
    })
    
    $('.back').click(function(){ 
        if(AxMenu.CurrentMenu == AxMenu.PreviousMenu){
            AxMenu.SetupMenu(AxMenu.HomeMenu)
        }else{
            AxMenu.SetupMenu(AxMenu.PreviousMenu)
        }
    })
    $('.i-close').attr('class','i-close fa fa-times fa-2x');$('#label-close').html('關閉')
    $('.i-back').attr('class','i-back fas fa-chevron-circle-right fa-2x');$('#label-back').html('上一格')
    
    /*$('.F3_menu').hide();*/
    $('.F3_menu').show();
    /*setTimeout(function(){$('.menu').fadeIn(500)},100)*/
}

AxMenu.Close = function(){
    $.post(`https://${GetParentResourceName()}/F3_CloseMenu`, JSON.stringify({}));
    $('.F3_menu').hide()
    $('.hexagon').off()
}

$(document).on('keydown', function(event) {
    switch(event.keyCode) {
        case 27:
            AxMenu.Close()
            break;
    }
});

window.addEventListener("message", function(event) {
    var data = event.data;
    switch(data.action) {
        case "F3_open":       AxMenu.Open(data);  break;
        case 'F3_forceclose': AxMenu.Close();break;
    }
});
