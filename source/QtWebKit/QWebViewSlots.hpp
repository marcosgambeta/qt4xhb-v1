/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QWEBVIEWSLOTS_H
#define QWEBVIEWSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtWebKit/QWebView>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_signals.hpp"

class QWebViewSlots : public QObject
{
  Q_OBJECT
public:
  QWebViewSlots(QObject *parent = 0);
  ~QWebViewSlots();
public slots:
  void iconChanged();
  void linkClicked(const QUrl &url);
  void loadFinished(bool ok);
  void loadProgress(int progress);
  void loadStarted();
  void selectionChanged();
  void statusBarMessage(const QString &text);
  void titleChanged(const QString &title);
  void urlChanged(const QUrl &url);
};

#endif /* QWEBVIEWSLOTS_H */
