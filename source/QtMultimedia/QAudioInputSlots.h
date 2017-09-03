/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQAUDIOINPUT_H
#define SLOTSQAUDIOINPUT_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QAudioInput>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QAudioInput_release_codeblocks ();

class SlotsQAudioInput: public QObject
{
  Q_OBJECT

  public:
  SlotsQAudioInput(QObject *parent = 0);
  ~SlotsQAudioInput();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void stateChanged ( QAudio::State state );
  void notify ();
};

#endif
