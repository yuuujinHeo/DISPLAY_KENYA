import QtQuick 2.0
import QtQuick.Window 2.3
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.0
import io.qt.Backend 1.0
import io.qt.AdminConnector 1.0

Window {
    id: window
    visible: true
    width: 1440
    height: 3440
//    visibility: "FullScreen"

    property string _op_msg: ""
    property int mImageToggle: 0
    property int mImageToggle2: 0
    property bool status_wait: false

    Backend {
        id: backend
    }

    AdminConnector{
        id: admin
    }

    FontLoader {
        id: fontMid
        source: "font/SB_Aggro_M.ttf"
    }

    Image{
        id: imageBackground
        anchors.fill: parent
        source: "image/display_background_kenya.png"
    }

    // Waiting Order & Processing Order =================================================
    function waitingReload(){
        item_1.__pin_text = admin.getPin(0);
        item_1.__menu_text = admin.getMenu(0);
        item_1.__status_beverage = admin.getStatus(0);

        item_2.__pin_text = admin.getPin(1);
        item_2.__menu_text = admin.getMenu(1);
        item_2.__status_beverage = admin.getStatus(1);

        item_3.__pin_text = admin.getPin(2);
        item_3.__menu_text = admin.getMenu(2);
        item_3.__status_beverage = admin.getStatus(2);

        item_4.__pin_text = admin.getPin(3);
        item_4.__menu_text = admin.getMenu(3);
        item_4.__status_beverage = admin.getStatus(3);

        item_5.__pin_text = admin.getPin(4);
        item_5.__menu_text = admin.getMenu(4);
        item_5.__status_beverage = admin.getStatus(4);

        item_6.__pin_text = admin.getPin(5);
        item_6.__menu_text = admin.getMenu(5);
        item_6.__status_beverage = admin.getStatus(5);
    }

    function completedReload(){
        item_1_1.__pin_text = admin.getRightPin(0,0);
        item_1_1.__menu_text = admin.getRightMenu(0,0);
        item_1_1.__outlet_status = admin.getRightStatus(0,0);


        item_1_2.__pin_text = admin.getRightPin(0,1);
        item_1_2.__menu_text = admin.getRightMenu(0,1);
        item_1_2.__outlet_status = admin.getRightStatus(0,1);

        item_1_3.__pin_text = admin.getRightPin(0,2);
        item_1_3.__menu_text = admin.getRightMenu(0,2);
        item_1_3.__outlet_status = admin.getRightStatus(0,2);


        item_2_1.__pin_text = admin.getRightPin(1,0);
        item_2_1.__menu_text = admin.getRightMenu(1,0);
        item_2_1.__outlet_status = admin.getRightStatus(1,0);

        item_2_2.__pin_text = admin.getRightPin(1,1);
        item_2_2.__menu_text = admin.getRightMenu(1,1);
        item_2_2.__outlet_status = admin.getRightStatus(1,1);

        item_2_3.__pin_text = admin.getRightPin(1,2);
        item_2_3.__menu_text = admin.getRightMenu(1,2);
        item_2_3.__outlet_status = admin.getRightStatus(1,2);
    }

    function preoperation(){
        image_preoperation.visible = true;
        rect_error.visible = false;
        text_msg.visible = false;
    }

    function restart(){
        image_preoperation.visible = false;
        rect_error.visible = false;
        text_msg.visible = false;
    }

    function state_Wait(){
        status_wait = true;
    }

    function state_NonWait(){
        status_wait = false;
    }


    LeftItem {
        id: item_1
        x: 20
        y: 1687
        width: 1383
        height: 89
    }


    LeftItem {
        id: item_2
        x: 20
        y: 1783
        width: 1383
        height: 89
    }


    LeftItem {
        id: item_3
        x: 20
        y: 1879
        width: 1383
        height: 89
    }


    LeftItem {
        id: item_4
        x: 20
        y: 1975
        width: 1383
        height: 89
    }


    LeftItem {
        id: item_5
        x: 20
        y: 2072
        width: 1383
        height: 89
    }


    LeftItem {
        id: item_6
        x: 20
        y: 2168
        width: 1383
        height: 89
    }


    RightItem{
        id: item_1_1
        x: 104
        y: 2593
        width: 548
        height: 185
    }
    RightItem{
        id: item_1_2
        x: 104
        y: 2789
        width: 548
        height: 185
    }
    RightItem{
        id: item_1_3
        x: 104
        y: 2981
        width: 548
        height: 185
    }

    RightItem {
        id: item_2_1
        x: 756
        y: 2593
        width: 548
        height: 185
    }

    RightItem {
        id: item_2_2
        x: 756
        y: 2789
        width: 548
        height: 185
    }

    RightItem {
        id: item_2_3
        x: 756
        y: 2981
        width: 548
        height: 185
    }

    Rectangle {
        id: rect_error
        y: 264
        height: 179
        color: "#58C6D3"
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        visible: false

        Text {
            id: text_msg
            color: "#ffffff"
            text: _op_msg
            anchors.fill: parent
            font.bold: true
            textFormat: Text.RichText
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pixelSize: 60
            font.family: fontMid
            styleColor: "#00000000"
        }
    }

    Image {
        id: image_notice
        y: 2708
        height: 316
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        visible: false
        fillMode: Image.PreserveAspectFit
        source: "image/display_pickup_notice.png"
    }

    Image {
        id: image_preoperation
        anchors.fill: parent
        visible: false
        fillMode: Image.Stretch
        source: "image/display_background_ready.png"
    }

    Timer{
        id: imageTimer
        interval: 1000
        repeat: true
        running: true
        triggeredOnStart: true
        onTriggered:{
            _op_msg = admin.getOpMsg();
            text_msg.text = _op_msg;
            if(_op_msg == ""){
                rect_error.visible = false;
                text_msg.visible = false;
            }else{
                if(mImageToggle == 0){
                    mImageToggle = 1;
                }else if(mImageToggle == 1){
                    mImageToggle = 2;
                }else{
                    mImageToggle = 0;
                }

                if(mImageToggle == 0){
//                    rect_error.visible = false;
                    text_msg.visible = false;
                }else{
                    rect_error.visible = true;
                    text_msg.visible = true;
                }
            }

            if(status_wait == true){
                if(mImageToggle2 == 0){
                    mImageToggle2 = 1;
                    image_notice.visible = true;
                }else{
                    mImageToggle2 = 0;
                    image_notice.visible = false;
                }
            }else{
                image_notice.visible = false;
            }
        }
    }












}



/*##^##
Designer {
    D{i:0;formeditorZoom:0.25}D{i:4;anchors_height:3440;anchors_width:1440;anchors_x:0;anchors_y:0}
D{i:11;anchors_width:1440;anchors_x:0}D{i:13;anchors_width:1920;anchors_x:0}D{i:14;anchors_width:1920;anchors_x:0;anchors_y:0}
}
##^##*/
