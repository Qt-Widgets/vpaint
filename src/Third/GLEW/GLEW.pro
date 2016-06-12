# Copyright (C) 2012-2016 The VPaint Developers.
# See the COPYRIGHT file at the top-level directory of this distribution
# and at https://github.com/dalboris/vpaint/blob/master/COPYRIGHT
#
# This file is part of VPaint, a vector graphics editor. It is subject to the
# license terms and conditions in the LICENSE.MIT file found in the top-level
# directory of this distribution and at http://opensource.org/licenses/MIT

QT       -= core gui

CONFIG += c++11
LIBS += -lopengl32
LIBS += -lglu32

TARGET = GLEW
TEMPLATE = lib
CONFIG += staticlib

SOURCES += glew.c

HEADERS += glew.h \
           glxew.h \
           wglew.h

unix {
    target.path = /usr/lib
    INSTALLS += target
}
