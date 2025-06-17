//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#ifndef QT4XHB_EVENTS_H
#define QT4XHB_EVENTS_H

namespace Qt4xHb
{
  bool Events_connect_event(QObject * object, int type, PHB_ITEM codeblock);
  bool Events_disconnect_event(QObject * object, int type);
  void Events_disconnect_all_events(QObject * obj, bool children);
}

#endif // QT4XHB_EVENTS_H
