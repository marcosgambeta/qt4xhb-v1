/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT4XHB_MACROS_QTMULTIMEDIA_H
#define QT4XHB_MACROS_QTMULTIMEDIA_H

#define ISQABSTRACTVIDEOBUFFER(n)                           Qt4xHb::isObjectDerivedFrom(n, "QAbstractVideoBuffer")
#define ISQABSTRACTVIDEOSURFACE(n)                          Qt4xHb::isObjectDerivedFrom(n, "QAbstractVideoSurface")
#define ISQAUDIODEVICEINFO(n)                               Qt4xHb::isObjectDerivedFrom(n, "QAudioDeviceInfo")
#define ISQAUDIOFORMAT(n)                                   Qt4xHb::isObjectDerivedFrom(n, "QAudioFormat")
#define ISQAUDIOINPUT(n)                                    Qt4xHb::isObjectDerivedFrom(n, "QAudioInput")
#define ISQAUDIOOUTPUT(n)                                   Qt4xHb::isObjectDerivedFrom(n, "QAudioOutput")
#define ISQVIDEOFRAME(n)                                    Qt4xHb::isObjectDerivedFrom(n, "QVideoFrame")
#define ISQVIDEOSURFACEFORMAT(n)                            Qt4xHb::isObjectDerivedFrom(n, "QVideoSurfaceFormat")

#define PQABSTRACTVIDEOBUFFER(n)                            static_cast<QAbstractVideoBuffer*>(Qt4xHb::itemGetPtr(n))
#define PQABSTRACTVIDEOSURFACE(n)                           static_cast<QAbstractVideoSurface*>(Qt4xHb::itemGetPtr(n))
#define PQAUDIODEVICEINFO(n)                                static_cast<QAudioDeviceInfo*>(Qt4xHb::itemGetPtr(n))
#define PQAUDIOFORMAT(n)                                    static_cast<QAudioFormat*>(Qt4xHb::itemGetPtr(n))
#define PQAUDIOINPUT(n)                                     static_cast<QAudioInput*>(Qt4xHb::itemGetPtr(n))
#define PQAUDIOOUTPUT(n)                                    static_cast<QAudioOutput*>(Qt4xHb::itemGetPtr(n))
#define PQVIDEOFRAME(n)                                     static_cast<QVideoFrame*>(Qt4xHb::itemGetPtr(n))
#define PQVIDEOSURFACEFORMAT(n)                             static_cast<QVideoSurfaceFormat*>(Qt4xHb::itemGetPtr(n))

#define OPQABSTRACTVIDEOBUFFER(n, v)                        HB_ISNIL(n) ? v : static_cast<QAbstractVideoBuffer*>(Qt4xHb::itemGetPtr(n))
#define OPQABSTRACTVIDEOSURFACE(n, v)                       HB_ISNIL(n) ? v : static_cast<QAbstractVideoSurface*>(Qt4xHb::itemGetPtr(n))
#define OPQAUDIODEVICEINFO(n, v)                            HB_ISNIL(n) ? v : static_cast<QAudioDeviceInfo*>(Qt4xHb::itemGetPtr(n))
#define OPQAUDIOFORMAT(n, v)                                HB_ISNIL(n) ? v : static_cast<QAudioFormat*>(Qt4xHb::itemGetPtr(n))
#define OPQAUDIOINPUT(n, v)                                 HB_ISNIL(n) ? v : static_cast<QAudioInput*>(Qt4xHb::itemGetPtr(n))
#define OPQAUDIOOUTPUT(n, v)                                HB_ISNIL(n) ? v : static_cast<QAudioOutput*>(Qt4xHb::itemGetPtr(n))
#define OPQVIDEOFRAME(n, v)                                 HB_ISNIL(n) ? v : static_cast<QVideoFrame*>(Qt4xHb::itemGetPtr(n))
#define OPQVIDEOSURFACEFORMAT(n, v)                         HB_ISNIL(n) ? v : static_cast<QVideoSurfaceFormat*>(Qt4xHb::itemGetPtr(n))

#endif /* QT4XHB_MACROS_QTMULTIMEDIA_H */
