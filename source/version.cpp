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

HB_FUNC(QT4XHB_BUILD_DATE)
{
  hb_retc(static_cast<const char *>(__DATE__));
}

HB_FUNC(QT4XHB_BUILD_TIME)
{
  hb_retc(static_cast<const char *>(__TIME__));
}
