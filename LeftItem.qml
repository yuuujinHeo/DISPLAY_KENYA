﻿import QtQuick 2.0

Item {
    property string __pin_text: "00001"
    property string __menu_text: "아메리카노"
    property int __status_beverage: 0
    property int mImageToggle: 0

    id: leftItemOrder
    width: 1383
    height: 89



    Text {
        x: 0
        y: 0
        width: 338
        height: 89
        color: "#000000"
        text: __pin_text
        font.family: fontMid.name
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.bold: false
        font.pixelSize: 35
    }


    Text {
        y: 0
        width: 564
        height: 89
        color: "#000000"
        text: __menu_text
        anchors.left: parent.left
        anchors.leftMargin: 344
        lineHeight: 0.9
        font.family: fontMid.name
        verticalAlignment: Text.AlignVCenter
        minimumPixelSize: 15
        horizontalAlignment: Text.AlignHCenter
        font.bold: false
        font.pixelSize: 35
    }


    Image {
        id: image_status
        x: 908
        y: -14
        width: 475
        height: 128
        fillMode: Image.PreserveAspectFit
        visible: true
        source: "image/display_wait.png"
    }


    Timer{
        id: imageTimer
        interval: 1000
        repeat: true
        running: true
        triggeredOnStart: true
        onTriggered:{
            if(__status_beverage == 1){ //waiting
                image_status.source = "image/display_wait.png";
                image_status.visible = true;
            }else if(__status_beverage == 2){ //making
                image_status.source = "image/display_making.png";

                if(mImageToggle == 0){
                    mImageToggle = 1;
                    image_status.visible = false;
                }else{
                    mImageToggle = 0;
                    image_status.visible = true;
                }
            }else{
                image_status.visible = false;
            }
        }
    }

}

/*##^##
Designer {
    D{i:2;anchors_x:467}
}
##^##*/
