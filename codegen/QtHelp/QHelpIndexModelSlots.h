%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QHelpIndexModel>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QHelpIndexModel_release_codeblocks ();

class SlotsQHelpIndexModel: public QObject
{
  Q_OBJECT

  public:
  SlotsQHelpIndexModel(QObject *parent = 0);
  ~SlotsQHelpIndexModel();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void indexCreated ();
  void indexCreationStarted ();
};
