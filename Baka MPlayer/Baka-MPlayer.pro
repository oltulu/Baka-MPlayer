#-------------------------------------------------
#
# Project created by QtCreator 2014-07-06T12:08:44
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = Baka-MPlayer
TEMPLATE = app

SOURCES += main.cpp\
    mpvhandler.cpp \
    settingsmanager.cpp \
    playlistmanager.cpp \
    windows/mainwindow.cpp \
    windows/locationdialog.cpp \
    windows/infodialog.cpp \
    windows/jumpdialog.cpp

HEADERS  += \
    mpvhandler.h \
    settingsmanager.h \
    windows/mainwindow.h \
    widgets/customslider.h \
    playlistmanager.h \
    widgets/playpausebutton.h \
    windows/locationdialog.h \
    widgets/openbutton.h \
    windows/infodialog.h \
    windows/jumpdialog.h

FORMS    += \
    windows/mainwindow.ui \
    windows/locationdialog.ui \
    windows/infodialog.ui \
    windows/jumpdialog.ui

CONFIG += c++11

unix {
        DEFINES += 'SETTINGS_FILE=\\"~/.bakamplayer\\"'
        CONFIG += link_pkgconfig
        PKGCONFIG += mpv
}

win32 {
        DEFINES += 'SETTINGS_FILE=\\"bakamplayer.ini\\"'
        CONFIG += static
        INCLUDEPATH += "../etc/include"
        LIBS += -L"../etc/lib" -lmpv
}

static {
	QTPLUGIN += qsvg
}

RESOURCES += \
    rsclist.qrc
