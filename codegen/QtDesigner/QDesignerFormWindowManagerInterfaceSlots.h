%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QDesignerFormWindowManagerInterface>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QDesignerFormWindowManagerInterface_release_codeblocks ();

class SlotsQDesignerFormWindowManagerInterface: public QObject
{
  Q_OBJECT

  public:
  SlotsQDesignerFormWindowManagerInterface(QObject *parent = 0);
  ~SlotsQDesignerFormWindowManagerInterface();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void activeFormWindowChanged ( QDesignerFormWindowInterface * formWindow );
  void formWindowAdded ( QDesignerFormWindowInterface * formWindow );
  void formWindowRemoved ( QDesignerFormWindowInterface * formWindow );
};
