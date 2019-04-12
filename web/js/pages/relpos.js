
var relpos = {
    restart: "",
    text: "",
    relMarkerIcon: new BMap.Icon("images/markers/boundmarker_blue.png", new BMap.Size(25 ,37)),
    positions: [],
    relPositions: [],
};

function extract_positions(text) {
    if(text === undefined || text === null || "" === text) {
        text = document.getElementById("extrapostext").value;
    }
    if("" === text) {
        alert("请输入文本...");
    }
    removeExtratOverlays();
    // removeAllOverlays();
    $("#extraposinfo").html("位置信息提取中。。。");
    // var url = 'http://localhost:5050/query_positions?text=' + text;
    var url = 'http://106.12.93.49:5050/query_positions?text=' + text;
    if(relpos.restart != null && "" != relpos.restart) {
        url = url + "&restart=1";
    }
    $.ajax({
        url: url,
        type: 'get',
        dataType: 'json',
        // timeout: 10000,
        //dataType:"jsonp",  //数据格式设置为jsonp
        //jsonp:"callback",  //Jquery生成验证参数的名称
        success: function (re_data) {
            $("#extraposinfo").html("位置信息提取完成：\n<br/>" + JSON.stringify(re_data));
            var data = re_data['positions'];
            createPositions(re_data['positions']);
            createRelatives(re_data['afters']);
            createRelatives(re_data['befores']);
            if(!$("#relative_checkbox")[0].checked) {
                hideRelatives();
            }
        },
        error: function (err_data) {
            console.log(err_data);
        }
    });

}

function createPositions(pos_data) {
    if(pos_data == null || pos_data.length < 1) {
        return;
    }
    var flag = true;
    for(var i = 0; i < pos_data.length; i++) {
        var pos = pos_data[i];
        try {
            var name = pos['name'];
            var coords_str = pos['coords'];
            if (coords_str.length < 5) {
                continue;
            }
            var coords = JSON.parse(coords_str);
            if (coords.length == 1) {
                var x = coords[0][0];
                var y = coords[0][1];
                var bp = new BMap.Point(x, y);
                var marker = new BMap.Marker(bp);
                marker.spaType = 1;
                marker.title = "地理位置实体";
                setRelposName(marker, name);
                addClickHandler(marker, "  &nbsp;&nbsp;" + name);
                addExtratOverlay(marker);
                if (flag) {
                    map.centerAndZoom(bp, 10);
                    flag = false;
                }
            } else {

            }
        } catch (e) {

        }
    }
}

function setRelposName(overlay, name) {
    overlay.name = name;
    overlay.extData = {"name": name, "winwidth": 150};
}

function createRelatives(rel_data) {
    if(rel_data == null || rel_data.length < 1) {
        return;
    }
    for(var i = 0; i < rel_data.length; i++) {
        var pos = rel_data[i];
        try {
            var name = pos['name'];
            var coords_str = pos['coords'];
            var coords = JSON.parse(coords_str);
            if (coords_str.length < 5) {
                continue;
            }
            if (coords.length == 1) {
                var x = coords[0][0];
                var y = coords[0][1];
                if (pos.hasOwnProperty('buffer') && pos.hasOwnProperty('shape')) {
                    var buffer = pos['buffer'];
                    var shape = pos['shape'];
                    if (shape == 'circle') {
                        var bp = new BMap.Point(x, y);
                        var circle = new BMap.Circle(bp, buffer * 140000, {
                            strokeColor: "blue",
                            strokeWeight: 2,
                            strokeOpacity: 0.5
                        }); //创建圆
                        circle.spaType = 5;
                        circle.title = "相对位置";
                        setRelposName(circle, name);
                        addClickHandler(circle, "  &nbsp;&nbsp;" + name);
                        addExtratOverlay(circle, true);
                    } else if (shape == 'rect') {
                        var polygon = new BMap.Polygon([
                            new BMap.Point(x - buffer, y - buffer),
                            new BMap.Point(x + buffer, y - buffer),
                            new BMap.Point(x + buffer, y + buffer),
                            new BMap.Point(x - buffer, y + buffer),
                            new BMap.Point(x - buffer, y - buffer)
                        ], {strokeColor: "blue", strokeWeight: 2, strokeOpacity: 0.5});
                        polygon.spaType = 5;
                        polygon.title = "相对位置";
                        setRelposName(polygon, name);
                        addClickHandler("  &nbsp;&nbsp;" + name);
                        addExtratOverlay(polygon, true);
                    }
                } else {
                    var bp = new BMap.Point(x, y);
                    var marker = new BMap.Marker(bp, {icon: relpos.relMarkerIcon});
                    marker.spaType = 1;
                    marker.title = "相对位置";
                    marker.name = name;
                    //marker.setAnimation(BMAP_ANIMATION_BOUNCE);
                    setRelposName(marker, name);
                    addClickHandler(marker, "  &nbsp;&nbsp;" + name);
                    addExtratOverlay(marker, true);
                }
            } else {

            }
        } catch (e) {

        }
    }
}

function initRelpos() {
    relpos.restart = getQueryString("restart");
    relpos.text = getQueryString("text");
    document.getElementById("extrapostext").value = relpos.text;
}

function toShowRelatives(checkbox) {
    if(checkbox.checked) {
        showRelatives();
    } else {
        hideRelatives();
    }
}

function showRelatives() {
    for(var i = 0; i < relpos.relPositions.length; i++) {
        relpos.relPositions[i].show();
    }
}

function hideRelatives() {
    for(var i = 0; i < relpos.relPositions.length; i++) {
        relpos.relPositions[i].hide();
    }
}

function addExtratOverlay(overlay, relative) {
    if(relative == true) {
        relpos.relPositions.push(overlay);
    } else{
        relpos.positions.push(overlay);
    }
    map.addOverlay(overlay);
}

function showRelposOverlays() {
    for(var i = 0; i < relpos.positions.length; i++) {
        relpos.positions[i].show();
    }
    showRelatives();
}

function hideRelposOverlays() {
    for(var i = 0; i < relpos.positions.length; i++) {
        relpos.positions[i].hide();
    }
    hideRelatives();
}

function removeExtratOverlays() {
    for(var i = 0; i < relpos.positions.length; i++) {
        relpos.positions[i].hide();
        map.removeOverlay(relpos.positions[i]);
    }
    for(var i = 0; i < relpos.relPositions.length; i++) {
        relpos.relPositions[i].hide();
        map.removeOverlay(relpos.relPositions[i]);
    }
    // positions = [];
    relpos.positions.splice(0, relpos.positions.length);
    relpos.relPositions.splice(0, relpos.relPositions.length);
}


