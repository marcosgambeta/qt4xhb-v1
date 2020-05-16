/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef QT4XHB_SIGNALS_H
#define QT4XHB_SIGNALS_H

//void Signals_connect_signal ( QObject * object, QString signal, PHB_ITEM codeblock );
void Signals_disconnect_signal ( QObject * object, QString signal );
//bool Signals_is_signal_connected ( QObject * object, QString signal );
PHB_ITEM Signals_return_codeblock ( QObject * object, QString signal );
void Signals_disconnect_all_signals (QObject * obj, bool children);
bool Signals_connection_disconnection ( QObject * s, QString signal, QString slot );
PHB_ITEM Signals_return_object ( void * ptr, const char * classname );
PHB_ITEM Signals_return_qobject ( QObject * ptr, const char * classname );

#endif /* QT4XHB_SIGNALS_H */
