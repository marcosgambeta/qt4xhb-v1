%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QToolBar>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QToolBar_release_codeblocks ();

class SlotsQToolBar: public QObject
{
  Q_OBJECT

  public:
  SlotsQToolBar(QObject *parent = 0);
  ~SlotsQToolBar();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void actionTriggered ( QAction * action );
  void allowedAreasChanged ( Qt::ToolBarAreas allowedAreas );
  void iconSizeChanged ( const QSize & iconSize );
  void movableChanged ( bool movable );
  void orientationChanged ( Qt::Orientation orientation );
  void toolButtonStyleChanged ( Qt::ToolButtonStyle toolButtonStyle );
  void topLevelChanged ( bool topLevel );
  void visibilityChanged ( bool visible );
};
