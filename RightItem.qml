﻿import QtQuick 2.0
//import QtQuick.Controls 2.3

Item {
    property string __pin_text: ""
    property string __menu_text: ""
    property int __outlet_status: 0
    property int mImageToggle: 0

    id: rightItemOrder
    width: 548
    height: 185

    Text {
        x: 0
        y: 0
        width: parent.width
        height: parent.height/2
        color: "#201547"
        text: __pin_text
        font.family: fontLight.name
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.bold: true
        font.pixelSize: 30
    }

    Text {
        x: 0
        y: parent.height/2
        width: parent.width
        height: parent.height/2
        color: "#4f4959"
        text: __menu_text
        font.family: fontLight.name
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.bold: true
        font.pixelSize: 25
    }


    Image {
        id: imageOutlet
        x: 0
        y: 0
        width: parent.width
        height: parent.height
        source: "image/display_dispensing.png"
        fillMode: Image.Stretch
    }

    Timer{
        id: imageTimer
        interval: 1000
        repeat: true
        running: true
        triggeredOnStart: true
        onTriggered:{
            if(__outlet_status == 0){
                imageOutlet.visible = false
            }else{
                if(mImageToggle == 0){
                    mImageToggle = 1;
                }else{
                    mImageToggle = 0;
                }

                if(mImageToggle == 1){
                    imageOutlet.visible = true;
                }else{
                    imageOutlet.visible = false;
                }
            }
        }
    }



}
