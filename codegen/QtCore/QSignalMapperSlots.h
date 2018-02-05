%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QSignalMapper>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QSignalMapper_release_codeblocks ();

class SlotsQSignalMapper: public QObject
{
  Q_OBJECT

  public:
  SlotsQSignalMapper(QObject *parent = 0);
  ~SlotsQSignalMapper();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void mapped(int i);
  void mapped(const QString & s);
  void mapped(QWidget * w);
  void mapped(QObject * o);
};
