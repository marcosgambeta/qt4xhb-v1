//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "HStyledItemDelegate.hpp"

HStyledItemDelegate::HStyledItemDelegate(QObject *parent) : QStyledItemDelegate(parent)
{
  m_paintBlock = NULL;
  m_sizeHintBlock = NULL;
  m_displayTextBlock = NULL;
  m_createEditorBlock = NULL;
  m_setEditorDataBlock = NULL;
  m_setModelDataBlock = NULL;
  m_updateEditorGeometryBlock = NULL;
}

HStyledItemDelegate::HStyledItemDelegate(PHB_ITEM paintCB, QObject *parent) : QStyledItemDelegate(parent)
{
  m_paintBlock = hb_itemNew(paintCB);
  m_sizeHintBlock = NULL;
  m_displayTextBlock = NULL;
  m_createEditorBlock = NULL;
  m_setEditorDataBlock = NULL;
  m_setModelDataBlock = NULL;
  m_updateEditorGeometryBlock = NULL;
}

HStyledItemDelegate::HStyledItemDelegate(PHB_ITEM paintCB, PHB_ITEM sizeHintCB, QObject *parent)
    : QStyledItemDelegate(parent)
{
  m_paintBlock = hb_itemNew(paintCB);
  m_sizeHintBlock = hb_itemNew(sizeHintCB);
  m_displayTextBlock = NULL;
  m_createEditorBlock = NULL;
  m_setEditorDataBlock = NULL;
  m_setModelDataBlock = NULL;
  m_updateEditorGeometryBlock = NULL;
}

HStyledItemDelegate::~HStyledItemDelegate()
{
  if (m_paintBlock != NULL) {
    hb_itemRelease(m_paintBlock);
    m_paintBlock = NULL;
  }

  if (m_sizeHintBlock != NULL) {
    hb_itemRelease(m_sizeHintBlock);
    m_sizeHintBlock = NULL;
  }

  if (m_displayTextBlock != NULL) {
    hb_itemRelease(m_displayTextBlock);
    m_displayTextBlock = NULL;
  }

  if (m_createEditorBlock != NULL) {
    hb_itemRelease(m_createEditorBlock);
    m_createEditorBlock = NULL;
  }

  if (m_setEditorDataBlock != NULL) {
    hb_itemRelease(m_setEditorDataBlock);
    m_setEditorDataBlock = NULL;
  }

  if (m_setModelDataBlock != NULL) {
    hb_itemRelease(m_setModelDataBlock);
    m_setEditorDataBlock = NULL;
  }

  if (m_updateEditorGeometryBlock != NULL) {
    hb_itemRelease(m_updateEditorGeometryBlock);
    m_updateEditorGeometryBlock = NULL;
  }
}

void HStyledItemDelegate::paint(QPainter *painter, const QStyleOptionViewItem &option, const QModelIndex &index) const
{
  if (m_paintBlock != NULL) {
    PHB_ITEM pPainter = hb_itemPutPtr(NULL, (QPainter *)painter);
    PHB_ITEM pOption = hb_itemPutPtr(NULL, (QStyleOptionViewItem *)&option);
    PHB_ITEM pIndex = hb_itemPutPtr(NULL, (QModelIndex *)&index);

    PHB_ITEM pRet = hb_vmEvalBlockV(m_paintBlock, 3, pPainter, pOption, pIndex);

    hb_itemRelease(pPainter);
    hb_itemRelease(pOption);
    hb_itemRelease(pIndex);
    hb_itemRelease(pRet);
  } else {
    QStyledItemDelegate::paint(painter, option, index);
  }
}

void HStyledItemDelegate::defaultPaint(QPainter *painter, const QStyleOptionViewItem &option,
                                       const QModelIndex &index) const
{
  QStyledItemDelegate::paint(painter, option, index);
}

QSize HStyledItemDelegate::sizeHint(const QStyleOptionViewItem &option, const QModelIndex &index) const
{
  QSize size;

  if (m_sizeHintBlock != NULL) {
    PHB_ITEM pOption = hb_itemPutPtr(NULL, (QStyleOptionViewItem *)&option);
    PHB_ITEM pIndex = hb_itemPutPtr(NULL, (QModelIndex *)&index);

    PHB_ITEM pRet = hb_vmEvalBlockV(m_sizeHintBlock, 2, pOption, pIndex);

    if (hb_clsIsParent(hb_objGetClass(pRet), "QSIZE")) {
      size = *((QSize *)hb_itemGetPtr(hb_objSendMsg(pRet, "POINTER", 0)));
    } else {
      size = QStyledItemDelegate::sizeHint(option, index);
    }

    hb_itemRelease(pOption);
    hb_itemRelease(pIndex);
    hb_itemRelease(pRet);
  } else {
    size = QStyledItemDelegate::sizeHint(option, index);
  }

  return size;
}

QString HStyledItemDelegate::displayText(const QVariant &value, const QLocale &locale) const
{
  QString data = value.toString();

  if (m_displayTextBlock != NULL) {
    PHB_ITEM pValue = hb_itemPutPtr(NULL, (QVariant *)&value);
    PHB_ITEM pLocale = hb_itemPutPtr(NULL, (QLocale *)&locale);

    PHB_ITEM pRet = hb_vmEvalBlockV(m_displayTextBlock, 2, pValue, pLocale);

    if (hb_itemType(pRet) & HB_IT_STRING) {
#if (QT_VERSION >= QT_VERSION_CHECK(5, 0, 0))
      data = QLatin1String(hb_itemGetCPtr(pRet));
#else
      data = hb_itemGetCPtr(pRet);
#endif
    }

    hb_itemRelease(pValue);
    hb_itemRelease(pLocale);
    hb_itemRelease(pRet);
  }

  return data;
}

QWidget *HStyledItemDelegate::createEditor(QWidget *parent, const QStyleOptionViewItem &option,
                                           const QModelIndex &index) const
{
  QWidget *widget = NULL;

  if (m_createEditorBlock != NULL) {
    PHB_ITEM pParent = hb_itemPutPtr(NULL, (QWidget *)parent);
    PHB_ITEM pOption = hb_itemPutPtr(NULL, (QStyleOptionViewItem *)&option);
    PHB_ITEM pIndex = hb_itemPutPtr(NULL, (QModelIndex *)&index);

    PHB_ITEM pRet = hb_vmEvalBlockV(m_createEditorBlock, 3, pParent, pOption, pIndex);

    if (hb_clsIsParent(hb_objGetClass(pRet), "QWIDGET")) {
      widget = (QWidget *)hb_itemGetPtr(hb_objSendMsg(pRet, "POINTER", 0));
    } else {
      widget = QStyledItemDelegate::createEditor(parent, option, index);
    }

    hb_itemRelease(pParent);
    hb_itemRelease(pOption);
    hb_itemRelease(pIndex);
    hb_itemRelease(pRet);
  } else {
    widget = QStyledItemDelegate::createEditor(parent, option, index);
  }

  return widget;
}

void HStyledItemDelegate::setEditorData(QWidget *editor, const QModelIndex &index) const
{
  if (m_setEditorDataBlock != NULL) {
    PHB_ITEM pEditor = hb_itemPutPtr(NULL, (QWidget *)editor);
    PHB_ITEM pIndex = hb_itemPutPtr(NULL, (QModelIndex *)&index);

    PHB_ITEM pRet = hb_vmEvalBlockV(m_setEditorDataBlock, 2, pEditor, pIndex);

    hb_itemRelease(pEditor);
    hb_itemRelease(pIndex);
    hb_itemRelease(pRet);
  } else {
    QStyledItemDelegate::setEditorData(editor, index);
  }
}

void HStyledItemDelegate::setModelData(QWidget *editor, QAbstractItemModel *model, const QModelIndex &index) const
{
  if (m_setModelDataBlock != NULL) {
    PHB_ITEM pEditor = hb_itemPutPtr(NULL, (QWidget *)editor);
    PHB_ITEM pModel = hb_itemPutPtr(NULL, (QAbstractItemModel *)model);
    PHB_ITEM pIndex = hb_itemPutPtr(NULL, (QModelIndex *)&index);

    PHB_ITEM pRet = hb_vmEvalBlockV(m_setModelDataBlock, 3, pEditor, pModel, pIndex);

    hb_itemRelease(pEditor);
    hb_itemRelease(pModel);
    hb_itemRelease(pIndex);
    hb_itemRelease(pRet);
  } else {
    QStyledItemDelegate::setModelData(editor, model, index);
  }
}

void HStyledItemDelegate::updateEditorGeometry(QWidget *editor, const QStyleOptionViewItem &option,
                                               const QModelIndex &index) const
{
  if (m_updateEditorGeometryBlock != NULL) {
    PHB_ITEM pEditor = hb_itemPutPtr(NULL, (QWidget *)editor);
    PHB_ITEM pOption = hb_itemPutPtr(NULL, (QStyleOptionViewItem *)&option);
    PHB_ITEM pIndex = hb_itemPutPtr(NULL, (QModelIndex *)&index);

    PHB_ITEM pRet = hb_vmEvalBlockV(m_updateEditorGeometryBlock, 3, pEditor, pOption, pIndex);

    hb_itemRelease(pEditor);
    hb_itemRelease(pOption);
    hb_itemRelease(pIndex);
    hb_itemRelease(pRet);
  } else {
    QStyledItemDelegate::updateEditorGeometry(editor, option, index);
  }
}

void HStyledItemDelegate::setPaintCB(PHB_ITEM block)
{
  if (m_paintBlock != NULL) {
    hb_itemRelease(m_paintBlock);
  }
  if (block != NULL) {
    m_paintBlock = hb_itemNew(block);
  }
}

void HStyledItemDelegate::setSizeHintCB(PHB_ITEM block)
{
  if (m_sizeHintBlock != NULL) {
    hb_itemRelease(m_sizeHintBlock);
  }
  if (block != NULL) {
    m_sizeHintBlock = hb_itemNew(block);
  }
}

void HStyledItemDelegate::setDisplayTextCB(PHB_ITEM block)
{
  if (m_displayTextBlock != NULL) {
    hb_itemRelease(m_displayTextBlock);
  }
  if (block != NULL) {
    m_displayTextBlock = hb_itemNew(block);
  }
}

void HStyledItemDelegate::setCreateEditorCB(PHB_ITEM block)
{
  if (m_createEditorBlock != NULL) {
    hb_itemRelease(m_createEditorBlock);
  }
  if (block != NULL) {
    m_createEditorBlock = hb_itemNew(block);
  }
}

void HStyledItemDelegate::setEditorDataCB(PHB_ITEM block)
{
  if (m_setEditorDataBlock != NULL) {
    hb_itemRelease(m_setEditorDataBlock);
  }
  if (block != NULL) {
    m_setEditorDataBlock = hb_itemNew(block);
  }
}

void HStyledItemDelegate::setModelDataCB(PHB_ITEM block)
{
  if (m_setModelDataBlock != NULL) {
    hb_itemRelease(m_setModelDataBlock);
  }
  if (block != NULL) {
    m_setModelDataBlock = hb_itemNew(block);
  }
}

void HStyledItemDelegate::setUpdateEditorGeometryCB(PHB_ITEM block)
{
  if (m_updateEditorGeometryBlock != NULL) {
    hb_itemRelease(m_updateEditorGeometryBlock);
  }
  if (block != NULL) {
    m_updateEditorGeometryBlock = hb_itemNew(block);
  }
}
