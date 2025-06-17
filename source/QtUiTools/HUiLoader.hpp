//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#ifndef HUILOADER_H
#define HUILOADER_H

#include <QtUiTools/QUiLoader>
#include <QtGui/QAction>
#include <QtGui/QLayout>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

class HUiLoader : public QUiLoader
{
  Q_OBJECT
public:
  HUiLoader(QObject *parent = 0);
  ~HUiLoader();

  QAction *createAction(QObject *parent = 0, const QString &name = QString());
  QActionGroup *createActionGroup(QObject *parent = 0, const QString &name = QString());
  QLayout *createLayout(const QString &className, QObject *parent = 0, const QString &name = QString());
  QWidget *createWidget(const QString &className, QWidget *parent = 0, const QString &name = QString());

private:
  PHB_ITEM m_createActionBlock;
  PHB_ITEM m_createActionGroupBlock;
  PHB_ITEM m_createLayoutBlock;
  PHB_ITEM m_createWidgetBlock;

public:
  void setCreateActionCB(PHB_ITEM block);
  void setCreateActionGroupCB(PHB_ITEM block);
  void setCreateLayoutCB(PHB_ITEM block);
  void setCreateWidgetCB(PHB_ITEM block);
};

#endif // HUILOADER_H */
