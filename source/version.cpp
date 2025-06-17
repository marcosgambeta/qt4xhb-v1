//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include <hbapi.h>

HB_FUNC(QT4XHB_VERSION)
{
  hb_retc(static_cast<const char *>("1.0.0dev"));
}
