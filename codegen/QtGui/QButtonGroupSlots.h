%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#ifndef SLOTSQBUTTONGROUP_H
#define SLOTSQBUTTONGROUP_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QButtonGroup>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QButtonGroup_release_codeblocks ();

class SlotsQButtonGroup: public QObject
{
  Q_OBJECT

  public:
  SlotsQButtonGroup(QObject *parent = 0);
  ~SlotsQButtonGroup();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void buttonClicked ( QAbstractButton * button );
  void buttonClicked ( int id );
  void buttonPressed ( QAbstractButton * button );
  void buttonPressed ( int id );
  void buttonReleased ( QAbstractButton * button );
  void buttonReleased ( int id );
};

#endif
