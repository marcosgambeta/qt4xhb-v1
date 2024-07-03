//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QT4XHB_MACROS_QTSCRIPTTOOLS_H
#define QT4XHB_MACROS_QTSCRIPTTOOLS_H

#define ISQSCRIPTENGINEDEBUGGER(n)                          Qt4xHb::isObjectDerivedFrom(n, "QScriptEngineDebugger")

#define PQSCRIPTENGINEDEBUGGER(n)                           static_cast<QScriptEngineDebugger*>(Qt4xHb::itemGetPtr(n))

#define OPQSCRIPTENGINEDEBUGGER(n, v)                       HB_ISNIL(n) ? v : static_cast<QScriptEngineDebugger*>(Qt4xHb::itemGetPtr(n))

#endif /* QT4XHB_MACROS_QTSCRIPTTOOLS_H */
