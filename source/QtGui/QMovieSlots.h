/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QMOVIESLOTS_H
#define QMOVIESLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QMovie>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_signals.h"

class QMovieSlots: public QObject
{
  Q_OBJECT
  public:
  QMovieSlots( QObject * parent = 0 );
  ~QMovieSlots();
  public slots:
  void error( QImageReader::ImageReaderError error );
  void finished();
  void frameChanged( int frameNumber );
  void resized( const QSize & size );
  void started();
  void stateChanged( QMovie::MovieState state );
  void updated( const QRect & rect );
};

#endif /* QMOVIESLOTS_H */
