//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QListWidgetSlots.hpp"

QListWidgetSlots::QListWidgetSlots(QObject *parent) : QObject(parent)
{
}

QListWidgetSlots::~QListWidgetSlots()
{
}

void QListWidgetSlots::currentItemChanged(QListWidgetItem *current, QListWidgetItem *previous)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "currentItemChanged(QListWidgetItem*,QListWidgetItem*)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QLISTWIDGET");
    PHB_ITEM pCurrent = Qt4xHb::Signals_return_object((void *)current, "QLISTWIDGETITEM");
    PHB_ITEM pPrevious = Qt4xHb::Signals_return_object((void *)previous, "QLISTWIDGETITEM");

    hb_vmEvalBlockV(cb, 3, pSender, pCurrent, pPrevious);

    hb_itemRelease(pSender);
    hb_itemRelease(pCurrent);
    hb_itemRelease(pPrevious);
  }
}

void QListWidgetSlots::currentRowChanged(int currentRow)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "currentRowChanged(int)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QLISTWIDGET");
    PHB_ITEM pCurrentRow = hb_itemPutNI(NULL, currentRow);

    hb_vmEvalBlockV(cb, 2, pSender, pCurrentRow);

    hb_itemRelease(pSender);
    hb_itemRelease(pCurrentRow);
  }
}

void QListWidgetSlots::currentTextChanged(const QString &currentText)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "currentTextChanged(QString)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QLISTWIDGET");
    PHB_ITEM pCurrentText = hb_itemPutC(NULL, QSTRINGTOSTRING(currentText));

    hb_vmEvalBlockV(cb, 2, pSender, pCurrentText);

    hb_itemRelease(pSender);
    hb_itemRelease(pCurrentText);
  }
}

void QListWidgetSlots::itemActivated(QListWidgetItem *item)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "itemActivated(QListWidgetItem*)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QLISTWIDGET");
    PHB_ITEM pItem = Qt4xHb::Signals_return_object((void *)item, "QLISTWIDGETITEM");

    hb_vmEvalBlockV(cb, 2, pSender, pItem);

    hb_itemRelease(pSender);
    hb_itemRelease(pItem);
  }
}

void QListWidgetSlots::itemChanged(QListWidgetItem *item)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "itemChanged(QListWidgetItem*)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QLISTWIDGET");
    PHB_ITEM pItem = Qt4xHb::Signals_return_object((void *)item, "QLISTWIDGETITEM");

    hb_vmEvalBlockV(cb, 2, pSender, pItem);

    hb_itemRelease(pSender);
    hb_itemRelease(pItem);
  }
}

void QListWidgetSlots::itemClicked(QListWidgetItem *item)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "itemClicked(QListWidgetItem*)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QLISTWIDGET");
    PHB_ITEM pItem = Qt4xHb::Signals_return_object((void *)item, "QLISTWIDGETITEM");

    hb_vmEvalBlockV(cb, 2, pSender, pItem);

    hb_itemRelease(pSender);
    hb_itemRelease(pItem);
  }
}

void QListWidgetSlots::itemDoubleClicked(QListWidgetItem *item)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "itemDoubleClicked(QListWidgetItem*)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QLISTWIDGET");
    PHB_ITEM pItem = Qt4xHb::Signals_return_object((void *)item, "QLISTWIDGETITEM");

    hb_vmEvalBlockV(cb, 2, pSender, pItem);

    hb_itemRelease(pSender);
    hb_itemRelease(pItem);
  }
}

void QListWidgetSlots::itemEntered(QListWidgetItem *item)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "itemEntered(QListWidgetItem*)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QLISTWIDGET");
    PHB_ITEM pItem = Qt4xHb::Signals_return_object((void *)item, "QLISTWIDGETITEM");

    hb_vmEvalBlockV(cb, 2, pSender, pItem);

    hb_itemRelease(pSender);
    hb_itemRelease(pItem);
  }
}

void QListWidgetSlots::itemPressed(QListWidgetItem *item)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "itemPressed(QListWidgetItem*)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QLISTWIDGET");
    PHB_ITEM pItem = Qt4xHb::Signals_return_object((void *)item, "QLISTWIDGETITEM");

    hb_vmEvalBlockV(cb, 2, pSender, pItem);

    hb_itemRelease(pSender);
    hb_itemRelease(pItem);
  }
}

void QListWidgetSlots::itemSelectionChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "itemSelectionChanged()");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QLISTWIDGET");

    hb_vmEvalBlockV(cb, 1, pSender);

    hb_itemRelease(pSender);
  }
}

void QListWidgetSlots_connect_signal(const QString &signal, const QString &slot)
{
  QListWidget *obj = qobject_cast<QListWidget *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
    QListWidgetSlots *s = QCoreApplication::instance()->findChild<QListWidgetSlots *>();

    if (s == NULL)
    {
      s = new QListWidgetSlots();
      s->moveToThread(QCoreApplication::instance()->thread());
      s->setParent(QCoreApplication::instance());
    }

    hb_retl(Qt4xHb::Signals_connection_disconnection(s, signal, slot));
  }
  else
  {
    hb_retl(false);
  }
}
