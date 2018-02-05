%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

#ifndef SLOTSQAUDIOOUTPUT_H
#define SLOTSQAUDIOOUTPUT_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QAudioOutput>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QAudioOutput_release_codeblocks ();

class SlotsQAudioOutput: public QObject
{
  Q_OBJECT

  public:
  SlotsQAudioOutput(QObject *parent = 0);
  ~SlotsQAudioOutput();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void notify ();
  void stateChanged ( QAudio::State state );
};

#endif
