

MainForm{


    ma_home       .onClicked: sl_main.currentIndex = getIndex(page_home)
    ma_settings   .onClicked: sl_main.currentIndex = getIndex(page_settings)
    ma_graph      .onClicked: sl_main.currentIndex = getIndex(page_graph)
    ma_calibration.onClicked: sl_main.currentIndex = getIndex(page_calibration)
    ma_test       .onClicked: sl_main.currentIndex = getIndex(page_test)


    function getIndex(item){
        for (var i = 0; i < sl_main.children.length; i++) {
            if (sl_main.children[i] === item) {
                return i
            }
        }
        return 0;
    }
    
}