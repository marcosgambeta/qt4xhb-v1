%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QAbstractSlider>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QAbstractSlider_release_codeblocks ();

class SlotsQAbstractSlider: public QObject
{
  Q_OBJECT

  public:
  SlotsQAbstractSlider(QObject *parent = 0);
  ~SlotsQAbstractSlider();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void actionTriggered ( int action );
  void rangeChanged ( int min, int max );
  void sliderMoved ( int value );
  void sliderPressed ();
  void sliderReleased ();
  void valueChanged ( int value );
};
