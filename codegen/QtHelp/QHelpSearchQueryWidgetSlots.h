%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QHelpSearchQueryWidget>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QHelpSearchQueryWidget_release_codeblocks ();

class SlotsQHelpSearchQueryWidget: public QObject
{
  Q_OBJECT

  public:
  SlotsQHelpSearchQueryWidget(QObject *parent = 0);
  ~SlotsQHelpSearchQueryWidget();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void search ();
};
