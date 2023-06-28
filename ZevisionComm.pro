QT       += core gui serialport network

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++20

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    main.cpp \
    zevision_comm.cpp \
    utilities/ipaddress.cpp

HEADERS += \
    zevision_comm.h \
    utilities/ipaddress.h

FORMS += \
    zevision_comm.ui

TRANSLATIONS += \
    ZevisionComm_zh_CN.ts
CONFIG += lrelease
CONFIG += embed_translations

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

win32 {
    CONFIG(debug, debug|release) {  # 需要基于 Debug 模式
        DEFINES += VLD_MODULE
        VLD_PATH = "C:\Program Files (x86)\Visual Leak Detector"
        INCLUDEPATH += $${VLD_PATH}/include
        LIBS += -L$${VLD_PATH}/lib/Win32 -lvld
    }
}

RESOURCES += \
    resources/resources.qrc


RC_ICONS = design.ico

