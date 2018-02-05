%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QFileDialog>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

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
