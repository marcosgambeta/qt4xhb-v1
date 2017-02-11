/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQFILEDIALOG_H
#define SLOTSQFILEDIALOG_H
#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QFileDialog>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

void QFileDialog_release_codeblocks ();
class SlotsQFileDialog: public QObject
{
  Q_OBJECT
  public:
  SlotsQFileDialog(QObject *parent = 0);
  ~SlotsQFileDialog();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;
  public slots:
  void currentChanged ( const QString & path );
  void directoryEntered ( const QString & directory );
  void fileSelected ( const QString & file );
  void filesSelected ( const QStringList & selected );
  void filterSelected ( const QString & filter );
};
#endif
