%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

#ifndef SLOTSQFTP_H
#define SLOTSQFTP_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QFtp>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QFtp_release_codeblocks ();

class SlotsQFtp: public QObject
{
  Q_OBJECT

  public:
  SlotsQFtp(QObject *parent = 0);
  ~SlotsQFtp();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void commandFinished ( int id, bool error );
  void commandStarted ( int id );
  void dataTransferProgress ( qint64 done, qint64 total );
  void done ( bool error );
  void listInfo ( const QUrlInfo & i );
  void rawCommandReply ( int replyCode, const QString & detail );
  void readyRead ();
  void stateChanged ( int state );
};

#endif
