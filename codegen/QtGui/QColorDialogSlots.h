%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QColorDialog>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QColorDialog_release_codeblocks ();

class SlotsQColorDialog: public QObject
{
  Q_OBJECT

  public:
  SlotsQColorDialog(QObject *parent = 0);
  ~SlotsQColorDialog();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void colorSelected ( const QColor & color );
  void currentColorChanged ( const QColor & color );
};
