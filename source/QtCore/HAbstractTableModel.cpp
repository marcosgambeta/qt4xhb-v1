//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "HAbstractTableModel.hpp"

// método construtor
HAbstractTableModel::HAbstractTableModel(QObject *parent) : QAbstractTableModel(parent)
{
  // linhas e colunas
  m_rowCountCB = NULL;
  m_columnCountCB = NULL;

  // células
  m_itemDisplayCB = NULL;
  m_itemDecorationCB = NULL;
  m_itemEditCB = NULL;
  m_itemToolTipCB = NULL;
  m_itemStatusTipCB = NULL;
  m_itemWhatsThisCB = NULL;
  m_itemSizeHintCB = NULL;
  m_itemFontCB = NULL;
  m_itemTextAlignmentCB = NULL;
  m_itemBackgroundCB = NULL;
  m_itemForegroundCB = NULL;
  m_itemCheckStateCB = NULL;
  m_itemAccessibleTextCB = NULL;
  m_itemAccessibleDescriptionCB = NULL;

  // cabeçalho horizontal
  m_horizontalHeaderDisplayCB = NULL;
  m_horizontalHeaderDecorationCB = NULL;
  m_horizontalHeaderToolTipCB = NULL;
  m_horizontalHeaderSizeHintCB = NULL;
  m_horizontalHeaderFontCB = NULL;
  m_horizontalHeaderTextAlignmentCB = NULL;
  m_horizontalHeaderBackgroundCB = NULL;
  m_horizontalHeaderForegroundCB = NULL;

  // cabeçalho vertical
  m_verticalHeaderDisplayCB = NULL;
  m_verticalHeaderDecorationCB = NULL;
  m_verticalHeaderToolTipCB = NULL;
  m_verticalHeaderSizeHintCB = NULL;
  m_verticalHeaderFontCB = NULL;
  m_verticalHeaderTextAlignmentCB = NULL;
  m_verticalHeaderBackgroundCB = NULL;
  m_verticalHeaderForegroundCB = NULL;

  m_flagsCB = NULL;
  m_setDataCB = NULL;
}

// método destruidor
HAbstractTableModel::~HAbstractTableModel()
{
  // linhas e colunas
  if (m_rowCountCB != NULL) {
    hb_itemRelease(m_rowCountCB);
    m_rowCountCB = NULL;
  }
  if (m_columnCountCB != NULL) {
    hb_itemRelease(m_columnCountCB);
    m_columnCountCB = NULL;
  }

  // células
  if (m_itemDisplayCB != NULL) {
    hb_itemRelease(m_itemDisplayCB);
    m_itemDisplayCB = NULL;
  }
  if (m_itemDecorationCB != NULL) {
    hb_itemRelease(m_itemDecorationCB);
    m_itemDecorationCB = NULL;
  }
  if (m_itemEditCB != NULL) {
    hb_itemRelease(m_itemEditCB);
    m_itemEditCB = NULL;
  }
  if (m_itemToolTipCB != NULL) {
    hb_itemRelease(m_itemToolTipCB);
    m_itemToolTipCB = NULL;
  }
  if (m_itemStatusTipCB != NULL) {
    hb_itemRelease(m_itemStatusTipCB);
    m_itemStatusTipCB = NULL;
  }
  if (m_itemWhatsThisCB != NULL) {
    hb_itemRelease(m_itemWhatsThisCB);
    m_itemWhatsThisCB = NULL;
  }
  if (m_itemSizeHintCB != NULL) {
    hb_itemRelease(m_itemSizeHintCB);
    m_itemSizeHintCB = NULL;
  }
  if (m_itemFontCB != NULL) {
    hb_itemRelease(m_itemFontCB);
    m_itemFontCB = NULL;
  }
  if (m_itemTextAlignmentCB != NULL) {
    hb_itemRelease(m_itemTextAlignmentCB);
    m_itemTextAlignmentCB = NULL;
  }
  if (m_itemBackgroundCB != NULL) {
    hb_itemRelease(m_itemBackgroundCB);
    m_itemBackgroundCB = NULL;
  }
  if (m_itemForegroundCB != NULL) {
    hb_itemRelease(m_itemForegroundCB);
    m_itemForegroundCB = NULL;
  }
  if (m_itemCheckStateCB != NULL) {
    hb_itemRelease(m_itemCheckStateCB);
    m_itemCheckStateCB = NULL;
  }
  if (m_itemAccessibleTextCB != NULL) {
    hb_itemRelease(m_itemAccessibleTextCB);
    m_itemAccessibleTextCB = NULL;
  }
  if (m_itemAccessibleDescriptionCB != NULL) {
    hb_itemRelease(m_itemAccessibleDescriptionCB);
    m_itemAccessibleDescriptionCB = NULL;
  }

  // cabeçalho horizontal
  if (m_horizontalHeaderDisplayCB != NULL) {
    hb_itemRelease(m_horizontalHeaderDisplayCB);
    m_horizontalHeaderDisplayCB = NULL;
  }
  if (m_horizontalHeaderDecorationCB != NULL) {
    hb_itemRelease(m_horizontalHeaderDecorationCB);
    m_horizontalHeaderDecorationCB = NULL;
  }
  if (m_horizontalHeaderToolTipCB != NULL) {
    hb_itemRelease(m_horizontalHeaderToolTipCB);
    m_horizontalHeaderToolTipCB = NULL;
  }
  if (m_horizontalHeaderSizeHintCB != NULL) {
    hb_itemRelease(m_horizontalHeaderSizeHintCB);
    m_horizontalHeaderSizeHintCB = NULL;
  }
  if (m_horizontalHeaderFontCB != NULL) {
    hb_itemRelease(m_horizontalHeaderFontCB);
    m_horizontalHeaderFontCB = NULL;
  }
  if (m_horizontalHeaderTextAlignmentCB != NULL) {
    hb_itemRelease(m_horizontalHeaderTextAlignmentCB);
    m_horizontalHeaderTextAlignmentCB = NULL;
  }
  if (m_horizontalHeaderBackgroundCB != NULL) {
    hb_itemRelease(m_horizontalHeaderBackgroundCB);
    m_horizontalHeaderBackgroundCB = NULL;
  }
  if (m_horizontalHeaderForegroundCB != NULL) {
    hb_itemRelease(m_horizontalHeaderForegroundCB);
    m_horizontalHeaderForegroundCB = NULL;
  }

  // cabeçalho vertical
  if (m_verticalHeaderDisplayCB != NULL) {
    hb_itemRelease(m_verticalHeaderDisplayCB);
    m_verticalHeaderDisplayCB = NULL;
  }
  if (m_verticalHeaderDecorationCB != NULL) {
    hb_itemRelease(m_verticalHeaderDecorationCB);
    m_verticalHeaderDecorationCB = NULL;
  }
  if (m_verticalHeaderToolTipCB != NULL) {
    hb_itemRelease(m_verticalHeaderToolTipCB);
    m_verticalHeaderToolTipCB = NULL;
  }
  if (m_verticalHeaderSizeHintCB != NULL) {
    hb_itemRelease(m_verticalHeaderSizeHintCB);
    m_verticalHeaderSizeHintCB = NULL;
  }
  if (m_verticalHeaderFontCB != NULL) {
    hb_itemRelease(m_verticalHeaderFontCB);
    m_verticalHeaderFontCB = NULL;
  }
  if (m_verticalHeaderTextAlignmentCB != NULL) {
    hb_itemRelease(m_verticalHeaderTextAlignmentCB);
    m_verticalHeaderTextAlignmentCB = NULL;
  }
  if (m_verticalHeaderBackgroundCB != NULL) {
    hb_itemRelease(m_verticalHeaderBackgroundCB);
    m_verticalHeaderBackgroundCB = NULL;
  }
  if (m_verticalHeaderForegroundCB != NULL) {
    hb_itemRelease(m_verticalHeaderForegroundCB);
    m_verticalHeaderForegroundCB = NULL;
  }

  if (m_flagsCB != NULL) {
    hb_itemRelease(m_flagsCB);
    m_flagsCB = NULL;
  }
  if (m_setDataCB != NULL) {
    hb_itemRelease(m_setDataCB);
    m_setDataCB = NULL;
  }
}

// define o codeblock para o número de linhas
void HAbstractTableModel::setRowCountCB(PHB_ITEM block)
{
  if (m_rowCountCB != NULL) {
    hb_itemRelease(m_rowCountCB);
  }
  if (block != NULL) {
    m_rowCountCB = hb_itemNew(block);
  }
}

// define o codeblock para o número de colunas
void HAbstractTableModel::setColumnCountCB(PHB_ITEM block)
{
  if (m_columnCountCB != NULL) {
    hb_itemRelease(m_columnCountCB);
  }
  if (block != NULL) {
    m_columnCountCB = hb_itemNew(block);
  }
}

// define o codeblock para o conteúdo da célula, conforme o 'role'
void HAbstractTableModel::setCB(int role, PHB_ITEM block)
{
  switch (role) {
  case Qt::DisplayRole:
    setDisplayRoleCB(block);
    break;
  case Qt::DecorationRole:
    setDecorationRoleCB(block);
    break;
  case Qt::EditRole:
    setEditRoleCB(block);
    break;
  case Qt::ToolTipRole:
    setToolTipRoleCB(block);
    break;
  case Qt::StatusTipRole:
    setStatusTipRoleCB(block);
    break;
  case Qt::WhatsThisRole:
    setWhatsThisRoleCB(block);
    break;
  case Qt::SizeHintRole:
    setSizeHintRoleCB(block);
    break;
  case Qt::FontRole:
    setFontRoleCB(block);
    break;
  case Qt::TextAlignmentRole:
    setTextAlignmentRoleCB(block);
    break;
  case Qt::BackgroundRole:
    setBackgroundRoleCB(block);
    break;
  case Qt::ForegroundRole:
    setForegroundRoleCB(block);
    break;
  case Qt::CheckStateRole:
    setCheckStateRoleCB(block);
    break;
  case Qt::AccessibleTextRole:
    setAccessibleTextRoleCB(block);
    break;
  case Qt::AccessibleDescriptionRole:
    setAccessibleDescriptionRoleCB(block);
    break;
  }
}

// define o codeblock para o conteúdo da célula
void HAbstractTableModel::setDisplayRoleCB(PHB_ITEM block)
{
  if (m_itemDisplayCB != NULL) {
    hb_itemRelease(m_itemDisplayCB);
  }
  if (block != NULL) {
    m_itemDisplayCB = hb_itemNew(block);
  }
}

// define o codeblock para a decoração da célula
void HAbstractTableModel::setDecorationRoleCB(PHB_ITEM block)
{
  if (m_itemDecorationCB != NULL) {
    hb_itemRelease(m_itemDecorationCB);
  }
  if (block != NULL) {
    m_itemDecorationCB = hb_itemNew(block);
  }
}

// define o codeblock para a edição da célula
void HAbstractTableModel::setEditRoleCB(PHB_ITEM block)
{
  if (m_itemEditCB != NULL) {
    hb_itemRelease(m_itemEditCB);
  }
  if (block != NULL) {
    m_itemEditCB = hb_itemNew(block);
  }
}

// define o codeblock para o tooltip da célula
void HAbstractTableModel::setToolTipRoleCB(PHB_ITEM block)
{
  if (m_itemToolTipCB != NULL) {
    hb_itemRelease(m_itemToolTipCB);
  }
  if (block != NULL) {
    m_itemToolTipCB = hb_itemNew(block);
  }
}

// define o codeblock para o statustip da célula
void HAbstractTableModel::setStatusTipRoleCB(PHB_ITEM block)
{
  if (m_itemStatusTipCB != NULL) {
    hb_itemRelease(m_itemStatusTipCB);
  }
  if (block != NULL) {
    m_itemStatusTipCB = hb_itemNew(block);
  }
}

// define o codeblock para o whatsthis da célula
void HAbstractTableModel::setWhatsThisRoleCB(PHB_ITEM block)
{
  if (m_itemWhatsThisCB != NULL) {
    hb_itemRelease(m_itemWhatsThisCB);
  }
  if (block != NULL) {
    m_itemWhatsThisCB = hb_itemNew(block);
  }
}

// define o codeblock para o sizehint da célula
void HAbstractTableModel::setSizeHintRoleCB(PHB_ITEM block)
{
  if (m_itemSizeHintCB != NULL) {
    hb_itemRelease(m_itemSizeHintCB);
  }
  if (block != NULL) {
    m_itemSizeHintCB = hb_itemNew(block);
  }
}

// define o codeblock para a fonte da célula
void HAbstractTableModel::setFontRoleCB(PHB_ITEM block)
{
  if (m_itemFontCB != NULL) {
    hb_itemRelease(m_itemFontCB);
  }
  if (block != NULL) {
    m_itemFontCB = hb_itemNew(block);
  }
}

// define o codeblock para o alinhamento do conteúdo da célula
void HAbstractTableModel::setTextAlignmentRoleCB(PHB_ITEM block)
{
  if (m_itemTextAlignmentCB != NULL) {
    hb_itemRelease(m_itemTextAlignmentCB);
  }
  if (block != NULL) {
    m_itemTextAlignmentCB = hb_itemNew(block);
  }
}

// define o codeblock para o background da célula
void HAbstractTableModel::setBackgroundRoleCB(PHB_ITEM block)
{
  if (m_itemBackgroundCB != NULL) {
    hb_itemRelease(m_itemBackgroundCB);
  }
  if (block != NULL) {
    m_itemBackgroundCB = hb_itemNew(block);
  }
}

// define o codeblock para o foreground da célula
void HAbstractTableModel::setForegroundRoleCB(PHB_ITEM block)
{
  if (m_itemForegroundCB != NULL) {
    hb_itemRelease(m_itemForegroundCB);
  }
  if (block != NULL) {
    m_itemForegroundCB = hb_itemNew(block);
  }
}

// define o codeblock para o checkstate da célula
void HAbstractTableModel::setCheckStateRoleCB(PHB_ITEM block)
{
  if (m_itemCheckStateCB != NULL) {
    hb_itemRelease(m_itemCheckStateCB);
  }
  if (block != NULL) {
    m_itemCheckStateCB = hb_itemNew(block);
  }
}

// define o codeblock para o accessibleText da célula
void HAbstractTableModel::setAccessibleTextRoleCB(PHB_ITEM block)
{
  if (m_itemAccessibleTextCB != NULL) {
    hb_itemRelease(m_itemAccessibleTextCB);
  }
  if (block != NULL) {
    m_itemAccessibleTextCB = hb_itemNew(block);
  }
}

// define o codeblock para o accessibleDescription da célula
void HAbstractTableModel::setAccessibleDescriptionRoleCB(PHB_ITEM block)
{
  if (m_itemAccessibleDescriptionCB != NULL) {
    hb_itemRelease(m_itemAccessibleDescriptionCB);
  }
  if (block != NULL) {
    m_itemAccessibleDescriptionCB = hb_itemNew(block);
  }
}

// define o codeblock para o conteúdo do cabeçalho horizontal, conforme o 'role'
void HAbstractTableModel::setHorizontalHeaderCB(int role, PHB_ITEM block)
{
  switch (role) {
  case Qt::DisplayRole:
    setHorizontalHeaderDisplayRoleCB(block);
    break;
  case Qt::DecorationRole:
    setHorizontalHeaderDecorationRoleCB(block);
    break;
  case Qt::ToolTipRole:
    setHorizontalHeaderToolTipRoleCB(block);
    break;
  case Qt::SizeHintRole:
    setHorizontalHeaderSizeHintRoleCB(block);
    break;
  case Qt::FontRole:
    setHorizontalHeaderFontRoleCB(block);
    break;
  case Qt::TextAlignmentRole:
    setHorizontalHeaderTextAlignmentRoleCB(block);
    break;
  case Qt::BackgroundRole:
    setHorizontalHeaderBackgroundRoleCB(block);
    break;
  case Qt::ForegroundRole:
    setHorizontalHeaderForegroundRoleCB(block);
    break;
  }
}

// define o codeblock para o conteúdo do cabeçalho horizontal
void HAbstractTableModel::setHorizontalHeaderDisplayRoleCB(PHB_ITEM block)
{
  if (m_horizontalHeaderDisplayCB != NULL) {
    hb_itemRelease(m_horizontalHeaderDisplayCB);
  }
  if (block != NULL) {
    m_horizontalHeaderDisplayCB = hb_itemNew(block);
  }
}

// define o codeblock para a decoração do cabeçalho horizontal
void HAbstractTableModel::setHorizontalHeaderDecorationRoleCB(PHB_ITEM block)
{
  if (m_horizontalHeaderDecorationCB != NULL) {
    hb_itemRelease(m_horizontalHeaderDecorationCB);
  }
  if (block != NULL) {
    m_horizontalHeaderDecorationCB = hb_itemNew(block);
  }
}

// define o codeblock para o tooltip do cabeçalho horizontal
void HAbstractTableModel::setHorizontalHeaderToolTipRoleCB(PHB_ITEM block)
{
  if (m_horizontalHeaderToolTipCB != NULL) {
    hb_itemRelease(m_horizontalHeaderToolTipCB);
  }
  if (block != NULL) {
    m_horizontalHeaderToolTipCB = hb_itemNew(block);
  }
}

// define o codeblock para o sizehint do cabeçalho horizontal
void HAbstractTableModel::setHorizontalHeaderSizeHintRoleCB(PHB_ITEM block)
{
  if (m_horizontalHeaderSizeHintCB != NULL) {
    hb_itemRelease(m_horizontalHeaderSizeHintCB);
  }
  if (block != NULL) {
    m_horizontalHeaderSizeHintCB = hb_itemNew(block);
  }
}

// define o codeblock para a fonte do cabeçalho horizontal
void HAbstractTableModel::setHorizontalHeaderFontRoleCB(PHB_ITEM block)
{
  if (m_horizontalHeaderFontCB != NULL) {
    hb_itemRelease(m_horizontalHeaderFontCB);
  }
  if (block != NULL) {
    m_horizontalHeaderFontCB = hb_itemNew(block);
  }
}

// define o codeblock para o alinhamento do conteúdo do cabeçalho horizontal
void HAbstractTableModel::setHorizontalHeaderTextAlignmentRoleCB(PHB_ITEM block)
{
  if (m_horizontalHeaderTextAlignmentCB != NULL) {
    hb_itemRelease(m_horizontalHeaderTextAlignmentCB);
  }
  if (block != NULL) {
    m_horizontalHeaderTextAlignmentCB = hb_itemNew(block);
  }
}

// define o codeblock para o background do cabeçalho horizontal
void HAbstractTableModel::setHorizontalHeaderBackgroundRoleCB(PHB_ITEM block)
{
  if (m_horizontalHeaderBackgroundCB != NULL) {
    hb_itemRelease(m_horizontalHeaderBackgroundCB);
  }
  if (block != NULL) {
    m_horizontalHeaderBackgroundCB = hb_itemNew(block);
  }
}

// define o codeblock para o foreground do cabeçalho horizontal
void HAbstractTableModel::setHorizontalHeaderForegroundRoleCB(PHB_ITEM block)
{
  if (m_horizontalHeaderForegroundCB != NULL) {
    hb_itemRelease(m_horizontalHeaderForegroundCB);
  }
  if (block != NULL) {
    m_horizontalHeaderForegroundCB = hb_itemNew(block);
  }
}

// define o codeblock para o conteúdo do cabeçalho vertical, conforme o 'role'
void HAbstractTableModel::setVerticalHeaderCB(int role, PHB_ITEM block)
{
  switch (role) {
  case Qt::DisplayRole:
    setVerticalHeaderDisplayRoleCB(block);
    break;
  case Qt::DecorationRole:
    setVerticalHeaderDecorationRoleCB(block);
    break;
  case Qt::ToolTipRole:
    setVerticalHeaderToolTipRoleCB(block);
    break;
  case Qt::SizeHintRole:
    setVerticalHeaderSizeHintRoleCB(block);
    break;
  case Qt::FontRole:
    setVerticalHeaderFontRoleCB(block);
    break;
  case Qt::TextAlignmentRole:
    setVerticalHeaderTextAlignmentRoleCB(block);
    break;
  case Qt::BackgroundRole:
    setVerticalHeaderBackgroundRoleCB(block);
    break;
  case Qt::ForegroundRole:
    setVerticalHeaderForegroundRoleCB(block);
    break;
  }
}

// define o codeblock para o conteúdo do cabeçalho vertical
void HAbstractTableModel::setVerticalHeaderDisplayRoleCB(PHB_ITEM block)
{
  if (m_verticalHeaderDisplayCB != NULL) {
    hb_itemRelease(m_verticalHeaderDisplayCB);
  }
  if (block != NULL) {
    m_verticalHeaderDisplayCB = hb_itemNew(block);
  }
}

// define o codeblock para a decoração do cabeçalho vertical
void HAbstractTableModel::setVerticalHeaderDecorationRoleCB(PHB_ITEM block)
{
  if (m_verticalHeaderDecorationCB != NULL) {
    hb_itemRelease(m_verticalHeaderDecorationCB);
  }
  if (block != NULL) {
    m_verticalHeaderDecorationCB = hb_itemNew(block);
  }
}

// define o codeblock para o tooltip do cabeçalho vertical
void HAbstractTableModel::setVerticalHeaderToolTipRoleCB(PHB_ITEM block)
{
  if (m_verticalHeaderToolTipCB != NULL) {
    hb_itemRelease(m_verticalHeaderToolTipCB);
  }
  if (block != NULL) {
    m_verticalHeaderToolTipCB = hb_itemNew(block);
  }
}

// define o codeblock para o sizehint do cabeçalho vertical
void HAbstractTableModel::setVerticalHeaderSizeHintRoleCB(PHB_ITEM block)
{
  if (m_verticalHeaderSizeHintCB != NULL) {
    hb_itemRelease(m_verticalHeaderSizeHintCB);
  }
  if (block != NULL) {
    m_verticalHeaderSizeHintCB = hb_itemNew(block);
  }
}

// define o codeblock para a fonte do cabeçalho vertical
void HAbstractTableModel::setVerticalHeaderFontRoleCB(PHB_ITEM block)
{
  if (m_verticalHeaderFontCB != NULL) {
    hb_itemRelease(m_verticalHeaderFontCB);
  }
  if (block != NULL) {
    m_verticalHeaderFontCB = hb_itemNew(block);
  }
}

// define o codeblock para o alinhamento do conteúdo do cabeçalho vertical
void HAbstractTableModel::setVerticalHeaderTextAlignmentRoleCB(PHB_ITEM block)
{
  if (m_verticalHeaderTextAlignmentCB != NULL) {
    hb_itemRelease(m_verticalHeaderTextAlignmentCB);
  }
  if (block != NULL) {
    m_verticalHeaderTextAlignmentCB = hb_itemNew(block);
  }
}

// define o codeblock para o background do cabeçalho vertical
void HAbstractTableModel::setVerticalHeaderBackgroundRoleCB(PHB_ITEM block)
{
  if (m_verticalHeaderBackgroundCB != NULL) {
    hb_itemRelease(m_verticalHeaderBackgroundCB);
  }
  if (block != NULL) {
    m_verticalHeaderBackgroundCB = hb_itemNew(block);
  }
}

// define o codeblock para o foreground do cabeçalho vertical
void HAbstractTableModel::setVerticalHeaderForegroundRoleCB(PHB_ITEM block)
{
  if (m_verticalHeaderForegroundCB != NULL) {
    hb_itemRelease(m_verticalHeaderForegroundCB);
  }
  if (block != NULL) {
    m_verticalHeaderForegroundCB = hb_itemNew(block);
  }
}

// define o codeblock para as flags
void HAbstractTableModel::setFlagsCB(PHB_ITEM block)
{
  if (m_flagsCB != NULL) {
    hb_itemRelease(m_flagsCB);
  }
  if (block != NULL) {
    m_flagsCB = hb_itemNew(block);
  }
}

// define o codeblock para a alteração dos dados
void HAbstractTableModel::setSetDataCB(PHB_ITEM block)
{
  if (m_setDataCB != NULL) {
    hb_itemRelease(m_setDataCB);
  }
  if (block != NULL) {
    m_setDataCB = hb_itemNew(block);
  }
}

// executa os codeblocks (células), conforme a informação (role) requisitada
QVariant HAbstractTableModel::data(const QModelIndex &index, int role) const
{
  QVariant data;

  // TODO: confirmar se a verificação abaixo é realmente necessária
  if (index.isValid() == false) {
    return data;
  }

  switch (role) {
  case Qt::DisplayRole: {
    if (m_itemDisplayCB != NULL) {
      PHB_ITEM pRow = hb_itemPutNI(NULL, index.row());
      PHB_ITEM pCol = hb_itemPutNI(NULL, index.column());
      PHB_ITEM pRet = hb_itemNew(hb_vmEvalBlockV(m_itemDisplayCB, 2, pRow, pCol));
      switch (hb_itemType(pRet)) {
      case HB_IT_STRING:
      case HB_IT_MEMO: {
        data = hb_itemGetCPtr(pRet);
        break;
      }
      case HB_IT_DOUBLE: {
        data = hb_itemGetND(pRet);
        break;
      }
      case HB_IT_INTEGER:
      case HB_IT_LONG: {
        data = hb_itemGetNI(pRet);
        break;
      }
      case HB_IT_LOGICAL: {
        data = hb_itemGetL(pRet);
        break;
      }
      case HB_IT_DATE: {
        int y, m, d;
        hb_dateDecode(hb_itemGetDL(pRet), &y, &m, &d);
        QDate date(y, m, d);
        data = date;
        break;
      }
      case HB_IT_OBJECT: {
        void *ptr = hb_itemGetPtr(hb_objSendMsg(pRet, "POINTER", 0));
        if (hb_clsIsParent(hb_objGetClass(pRet), "QVARIANT")) {
          data = *(static_cast<QVariant *>(ptr));
        }
        break;
      }
      }
      hb_itemRelease(pRow);
      hb_itemRelease(pCol);
      hb_itemRelease(pRet);
    }
    break;
  }
  case Qt::DecorationRole: {
    if (m_itemDecorationCB != NULL) {
      PHB_ITEM pRow = hb_itemPutNI(NULL, index.row());
      PHB_ITEM pCol = hb_itemPutNI(NULL, index.column());
      PHB_ITEM pRet = hb_itemNew(hb_vmEvalBlockV(m_itemDecorationCB, 2, pRow, pCol));
      switch (hb_itemType(pRet)) {
      case HB_IT_OBJECT: {
        void *ptr = hb_itemGetPtr(hb_objSendMsg(pRet, "POINTER", 0));
        if (hb_clsIsParent(hb_objGetClass(pRet), "QICON")) {
          data = *(static_cast<QIcon *>(ptr));
        } else if (hb_clsIsParent(hb_objGetClass(pRet), "QPIXMAP")) {
          data = *(static_cast<QPixmap *>(ptr));
        }
        ptr = NULL;
        break;
      }
      case HB_IT_STRING: {
        data = QIcon(hb_itemGetCPtr(pRet));
        break;
      }
      }
      hb_itemRelease(pRow);
      hb_itemRelease(pCol);
      hb_itemRelease(pRet);
    }
    break;
  }
  case Qt::EditRole: {
    if (m_itemEditCB != NULL) {
      PHB_ITEM pRow = hb_itemPutNI(NULL, index.row());
      PHB_ITEM pCol = hb_itemPutNI(NULL, index.column());
      PHB_ITEM pRet = hb_itemNew(hb_vmEvalBlockV(m_itemEditCB, 2, pRow, pCol));
      if (hb_itemType(pRet) & HB_IT_STRING) {
        data = hb_itemGetCPtr(pRet);
      }
      hb_itemRelease(pRow);
      hb_itemRelease(pCol);
      hb_itemRelease(pRet);
    }
    break;
  }
  case Qt::ToolTipRole: {
    if (m_itemToolTipCB != NULL) {
      PHB_ITEM pRow = hb_itemPutNI(NULL, index.row());
      PHB_ITEM pCol = hb_itemPutNI(NULL, index.column());
      PHB_ITEM pRet = hb_itemNew(hb_vmEvalBlockV(m_itemToolTipCB, 2, pRow, pCol));
      if (hb_itemType(pRet) & HB_IT_STRING) {
        data = hb_itemGetCPtr(pRet);
      }
      hb_itemRelease(pRow);
      hb_itemRelease(pCol);
      hb_itemRelease(pRet);
    }
    break;
  }
  case Qt::StatusTipRole: {
    if (m_itemStatusTipCB != NULL) {
      PHB_ITEM pRow = hb_itemPutNI(NULL, index.row());
      PHB_ITEM pCol = hb_itemPutNI(NULL, index.column());
      PHB_ITEM pRet = hb_itemNew(hb_vmEvalBlockV(m_itemStatusTipCB, 2, pRow, pCol));
      if (hb_itemType(pRet) & HB_IT_STRING) {
        data = hb_itemGetCPtr(pRet);
      }
      hb_itemRelease(pRow);
      hb_itemRelease(pCol);
      hb_itemRelease(pRet);
    }
    break;
  }
  case Qt::WhatsThisRole: {
    if (m_itemWhatsThisCB != NULL) {
      PHB_ITEM pRow = hb_itemPutNI(NULL, index.row());
      PHB_ITEM pCol = hb_itemPutNI(NULL, index.column());
      PHB_ITEM pRet = hb_itemNew(hb_vmEvalBlockV(m_itemWhatsThisCB, 2, pRow, pCol));
      if (hb_itemType(pRet) & HB_IT_STRING) {
        data = hb_itemGetCPtr(pRet);
      }
      hb_itemRelease(pRow);
      hb_itemRelease(pCol);
      hb_itemRelease(pRet);
    }
    break;
  }
  case Qt::SizeHintRole: {
    if (m_itemSizeHintCB != NULL) {
      PHB_ITEM pRow = hb_itemPutNI(NULL, index.row());
      PHB_ITEM pCol = hb_itemPutNI(NULL, index.column());
      PHB_ITEM pRet = hb_itemNew(hb_vmEvalBlockV(m_itemSizeHintCB, 2, pRow, pCol));
      if (hb_itemType(pRet) & HB_IT_OBJECT) {
        void *ptr = hb_itemGetPtr(hb_objSendMsg(pRet, "POINTER", 0));
        data = *(static_cast<QSize *>(ptr));
        ptr = NULL;
      }
      hb_itemRelease(pRow);
      hb_itemRelease(pCol);
      hb_itemRelease(pRet);
    }
    break;
  }
  case Qt::FontRole: {
    if (m_itemFontCB != NULL) {
      PHB_ITEM pRow = hb_itemPutNI(NULL, index.row());
      PHB_ITEM pCol = hb_itemPutNI(NULL, index.column());
      PHB_ITEM pRet = hb_itemNew(hb_vmEvalBlockV(m_itemFontCB, 2, pRow, pCol));
      if (hb_itemType(pRet) & HB_IT_OBJECT) {
        void *ptr = hb_itemGetPtr(hb_objSendMsg(pRet, "POINTER", 0));
        data = *(static_cast<QFont *>(ptr));
        ptr = NULL;
      }
      hb_itemRelease(pRow);
      hb_itemRelease(pCol);
      hb_itemRelease(pRet);
    }
    break;
  }
  case Qt::TextAlignmentRole: {
    if (m_itemTextAlignmentCB != NULL) {
      PHB_ITEM pRow = hb_itemPutNI(NULL, index.row());
      PHB_ITEM pCol = hb_itemPutNI(NULL, index.column());
      PHB_ITEM pRet = hb_itemNew(hb_vmEvalBlockV(m_itemTextAlignmentCB, 2, pRow, pCol));
      if (hb_itemType(pRet) & HB_IT_NUMERIC) {
        data = hb_itemGetNI(pRet);
      }
      hb_itemRelease(pRow);
      hb_itemRelease(pCol);
      hb_itemRelease(pRet);
    }
    break;
  }
  case Qt::BackgroundRole: {
    if (m_itemBackgroundCB != NULL) {
      PHB_ITEM pRow = hb_itemPutNI(NULL, index.row());
      PHB_ITEM pCol = hb_itemPutNI(NULL, index.column());
      PHB_ITEM pRet = hb_itemNew(hb_vmEvalBlockV(m_itemBackgroundCB, 2, pRow, pCol));
      switch (hb_itemType(pRet)) {
      case HB_IT_OBJECT: {
        void *ptr = hb_itemGetPtr(hb_objSendMsg(pRet, "POINTER", 0));
        if (hb_clsIsParent(hb_objGetClass(pRet), "QCOLOR")) {
          data = *(static_cast<QColor *>(ptr));
        } else if (hb_clsIsParent(hb_objGetClass(pRet), "QBRUSH")) {
          data = *(static_cast<QBrush *>(ptr));
        }
        ptr = NULL;
        break;
      }
      case HB_IT_STRING: {
        data = QColor(hb_itemGetCPtr(pRet));
        break;
      }
      }
      hb_itemRelease(pRow);
      hb_itemRelease(pCol);
      hb_itemRelease(pRet);
    }
    break;
  }
  case Qt::ForegroundRole: {
    if (m_itemForegroundCB != NULL) {
      PHB_ITEM pRow = hb_itemPutNI(NULL, index.row());
      PHB_ITEM pCol = hb_itemPutNI(NULL, index.column());
      PHB_ITEM pRet = hb_itemNew(hb_vmEvalBlockV(m_itemForegroundCB, 2, pRow, pCol));
      switch (hb_itemType(pRet)) {
      case HB_IT_OBJECT: {
        void *ptr = hb_itemGetPtr(hb_objSendMsg(pRet, "POINTER", 0));
        data = *(static_cast<QColor *>(ptr));
        ptr = NULL;
        break;
      }
      case HB_IT_STRING: {
        data = QColor(hb_itemGetCPtr(pRet));
        break;
      }
      }
      hb_itemRelease(pRow);
      hb_itemRelease(pCol);
      hb_itemRelease(pRet);
    }
    break;
  }
  case Qt::CheckStateRole: {
    if (m_itemCheckStateCB != NULL) {
      PHB_ITEM pRow = hb_itemPutNI(NULL, index.row());
      PHB_ITEM pCol = hb_itemPutNI(NULL, index.column());
      PHB_ITEM pRet = hb_itemNew(hb_vmEvalBlockV(m_itemCheckStateCB, 2, pRow, pCol));
      if (hb_itemType(pRet) & HB_IT_NUMERIC) {
        data = hb_itemGetNI(pRet);
      }
      hb_itemRelease(pRow);
      hb_itemRelease(pCol);
      hb_itemRelease(pRet);
    }
    break;
  }
  case Qt::AccessibleTextRole: {
    if (m_itemAccessibleTextCB != NULL) {
      PHB_ITEM pRow = hb_itemPutNI(NULL, index.row());
      PHB_ITEM pCol = hb_itemPutNI(NULL, index.column());
      PHB_ITEM pRet = hb_itemNew(hb_vmEvalBlockV(m_itemAccessibleTextCB, 2, pRow, pCol));
      if (hb_itemType(pRet) & HB_IT_STRING) {
        data = hb_itemGetCPtr(pRet);
      }
      hb_itemRelease(pRow);
      hb_itemRelease(pCol);
      hb_itemRelease(pRet);
    }
    break;
  }
  case Qt::AccessibleDescriptionRole: {
    if (m_itemAccessibleDescriptionCB != NULL) {
      PHB_ITEM pRow = hb_itemPutNI(NULL, index.row());
      PHB_ITEM pCol = hb_itemPutNI(NULL, index.column());
      PHB_ITEM pRet = hb_itemNew(hb_vmEvalBlockV(m_itemAccessibleDescriptionCB, 2, pRow, pCol));
      if (hb_itemType(pRet) & HB_IT_STRING) {
        data = hb_itemGetCPtr(pRet);
      }
      hb_itemRelease(pRow);
      hb_itemRelease(pCol);
      hb_itemRelease(pRet);
    }
    break;
  }
  }

  return data;
}

// executa os codeblocks (cabeçalhos), conforme a informação (role) requisitada
QVariant HAbstractTableModel::headerData(int section, Qt::Orientation orientation, int role) const
{
  QVariant data;

  switch (orientation) {
  case Qt::Horizontal: {
    switch (role) {
    case Qt::DisplayRole: {
      if (m_horizontalHeaderDisplayCB != NULL) {
        PHB_ITEM pCol = hb_itemPutNI(NULL, section);
        PHB_ITEM pRet = hb_itemNew(hb_vmEvalBlockV(m_horizontalHeaderDisplayCB, 1, pCol));
        switch (hb_itemType(pRet)) {
        case HB_IT_STRING:
        case HB_IT_MEMO: {
          data = hb_itemGetCPtr(pRet);
          break;
        }
        case HB_IT_DOUBLE: {
          data = hb_itemGetND(pRet);
          break;
        }
        case HB_IT_INTEGER:
        case HB_IT_LONG: {
          data = hb_itemGetNI(pRet);
          break;
        }
        case HB_IT_LOGICAL: {
          data = hb_itemGetL(pRet);
          break;
        }
        }
        hb_itemRelease(pCol);
        hb_itemRelease(pRet);
      }
      break;
    }
    case Qt::DecorationRole: {
      if (m_horizontalHeaderDecorationCB != NULL) {
        PHB_ITEM pCol = hb_itemPutNI(NULL, section);
        PHB_ITEM pRet = hb_itemNew(hb_vmEvalBlockV(m_horizontalHeaderDecorationCB, 1, pCol));
        switch (hb_itemType(pRet)) {
        case HB_IT_OBJECT: {
          void *ptr = hb_itemGetPtr(hb_objSendMsg(pRet, "POINTER", 0));
          if (hb_clsIsParent(hb_objGetClass(pRet), "QICON")) {
            data = *(static_cast<QIcon *>(ptr));
          } else if (hb_clsIsParent(hb_objGetClass(pRet), "QPIXMAP")) {
            data = *(static_cast<QPixmap *>(ptr));
          }
          ptr = NULL;
          break;
        }
        case HB_IT_STRING: {
          data = QIcon(hb_itemGetCPtr(pRet));
          break;
        }
        }
        hb_itemRelease(pCol);
        hb_itemRelease(pRet);
      }
      break;
    }
    case Qt::ToolTipRole: {
      if (m_horizontalHeaderToolTipCB != NULL) {
        PHB_ITEM pCol = hb_itemPutNI(NULL, section);
        PHB_ITEM pRet = hb_itemNew(hb_vmEvalBlockV(m_horizontalHeaderToolTipCB, 1, pCol));
        if (hb_itemType(pRet) & HB_IT_STRING) {
          data = hb_itemGetCPtr(pRet);
        }
        hb_itemRelease(pCol);
        hb_itemRelease(pRet);
      }
      break;
    }
    case Qt::SizeHintRole: {
      if (m_horizontalHeaderSizeHintCB != NULL) {
        PHB_ITEM pCol = hb_itemPutNI(NULL, section);
        PHB_ITEM pRet = hb_itemNew(hb_vmEvalBlockV(m_horizontalHeaderSizeHintCB, 1, pCol));
        if (hb_itemType(pRet) & HB_IT_OBJECT) {
          void *ptr = hb_itemGetPtr(hb_objSendMsg(pRet, "POINTER", 0));
          data = *(static_cast<QSize *>(ptr));
          ptr = NULL;
        }
        hb_itemRelease(pCol);
        hb_itemRelease(pRet);
      }
      break;
    }
    case Qt::FontRole: {
      if (m_horizontalHeaderFontCB != NULL) {
        PHB_ITEM pCol = hb_itemPutNI(NULL, section);
        PHB_ITEM pRet = hb_itemNew(hb_vmEvalBlockV(m_horizontalHeaderFontCB, 1, pCol));
        if (hb_itemType(pRet) & HB_IT_OBJECT) {
          void *ptr = hb_itemGetPtr(hb_objSendMsg(pRet, "POINTER", 0));
          data = *(static_cast<QFont *>(ptr));
          ptr = NULL;
        }
        hb_itemRelease(pCol);
        hb_itemRelease(pRet);
      }
      break;
    }
    case Qt::TextAlignmentRole: {
      if (m_horizontalHeaderTextAlignmentCB != NULL) {
        PHB_ITEM pCol = hb_itemPutNI(NULL, section);
        PHB_ITEM pRet = hb_itemNew(hb_vmEvalBlockV(m_horizontalHeaderTextAlignmentCB, 1, pCol));
        if (hb_itemType(pRet) & HB_IT_NUMERIC) {
          data = hb_itemGetNI(pRet);
        }
        hb_itemRelease(pCol);
        hb_itemRelease(pRet);
      }
      break;
    }
    case Qt::BackgroundRole: {
      if (m_horizontalHeaderBackgroundCB != NULL) {
        PHB_ITEM pCol = hb_itemPutNI(NULL, section);
        PHB_ITEM pRet = hb_itemNew(hb_vmEvalBlockV(m_horizontalHeaderBackgroundCB, 1, pCol));
        switch (hb_itemType(pRet)) {
        case HB_IT_OBJECT: {
          void *ptr = hb_itemGetPtr(hb_objSendMsg(pRet, "POINTER", 0));
          if (hb_clsIsParent(hb_objGetClass(pRet), "QCOLOR")) {
            data = *(static_cast<QColor *>(ptr));
          } else if (hb_clsIsParent(hb_objGetClass(pRet), "QBRUSH")) {
            data = *(static_cast<QBrush *>(ptr));
          }
          ptr = NULL;
          break;
        }
        case HB_IT_STRING: {
          data = QColor(hb_itemGetCPtr(pRet));
          break;
        }
        }
        hb_itemRelease(pCol);
        hb_itemRelease(pRet);
      }
      break;
    }
    case Qt::ForegroundRole: {
      if (m_horizontalHeaderForegroundCB != NULL) {
        PHB_ITEM pCol = hb_itemPutNI(NULL, section);
        PHB_ITEM pRet = hb_itemNew(hb_vmEvalBlockV(m_horizontalHeaderForegroundCB, 1, pCol));
        switch (hb_itemType(pRet)) {
        case HB_IT_OBJECT: {
          void *ptr = hb_itemGetPtr(hb_objSendMsg(pRet, "POINTER", 0));
          data = *(static_cast<QColor *>(ptr));
          ptr = NULL;
          break;
        }
        case HB_IT_STRING: {
          data = QColor(hb_itemGetCPtr(pRet));
          break;
        }
        }
        hb_itemRelease(pCol);
        hb_itemRelease(pRet);
      }
      break;
    }
    }
    break;
  }
  case Qt::Vertical: {
    switch (role) {
    case Qt::DisplayRole: {
      if (m_verticalHeaderDisplayCB != NULL) {
        PHB_ITEM pRow = hb_itemPutNI(NULL, section);
        PHB_ITEM pRet = hb_itemNew(hb_vmEvalBlockV(m_verticalHeaderDisplayCB, 1, pRow));
        switch (hb_itemType(pRet)) {
        case HB_IT_STRING:
        case HB_IT_MEMO: {
          data = hb_itemGetCPtr(pRet);
          break;
        }
        case HB_IT_DOUBLE: {
          data = hb_itemGetND(pRet);
          break;
        }
        case HB_IT_INTEGER:
        case HB_IT_LONG: {
          data = hb_itemGetNI(pRet);
          break;
        }
        case HB_IT_LOGICAL: {
          data = hb_itemGetL(pRet);
          break;
        }
        }
        hb_itemRelease(pRow);
        hb_itemRelease(pRet);
      }
      break;
    }
    case Qt::DecorationRole: {
      if (m_verticalHeaderDecorationCB != NULL) {
        PHB_ITEM pRow = hb_itemPutNI(NULL, section);
        PHB_ITEM pRet = hb_itemNew(hb_vmEvalBlockV(m_verticalHeaderDecorationCB, 1, pRow));
        switch (hb_itemType(pRet)) {
        case HB_IT_OBJECT: {
          void *ptr = hb_itemGetPtr(hb_objSendMsg(pRet, "POINTER", 0));
          if (hb_clsIsParent(hb_objGetClass(pRet), "QICON")) {
            data = *(static_cast<QIcon *>(ptr));
          } else if (hb_clsIsParent(hb_objGetClass(pRet), "QPIXMAP")) {
            data = *(static_cast<QPixmap *>(ptr));
          }
          ptr = NULL;
          break;
        }
        case HB_IT_STRING: {
          data = QIcon(hb_itemGetCPtr(pRet));
          break;
        }
        }
        hb_itemRelease(pRow);
        hb_itemRelease(pRet);
      }
      break;
    }
    case Qt::ToolTipRole: {
      if (m_verticalHeaderToolTipCB != NULL) {
        PHB_ITEM pRow = hb_itemPutNI(NULL, section);
        PHB_ITEM pRet = hb_itemNew(hb_vmEvalBlockV(m_verticalHeaderToolTipCB, 1, pRow));
        if (hb_itemType(pRet) & HB_IT_STRING) {
          data = hb_itemGetCPtr(pRet);
        }
        hb_itemRelease(pRow);
        hb_itemRelease(pRet);
      }
      break;
    }
    case Qt::SizeHintRole: {
      if (m_verticalHeaderSizeHintCB != NULL) {
        PHB_ITEM pRow = hb_itemPutNI(NULL, section);
        PHB_ITEM pRet = hb_itemNew(hb_vmEvalBlockV(m_verticalHeaderSizeHintCB, 1, pRow));
        if (hb_itemType(pRet) & HB_IT_OBJECT) {
          void *ptr = hb_itemGetPtr(hb_objSendMsg(pRet, "POINTER", 0));
          data = *(static_cast<QSize *>(ptr));
          ptr = NULL;
        }
        hb_itemRelease(pRow);
        hb_itemRelease(pRet);
      }
      break;
    }
    case Qt::FontRole: {
      if (m_verticalHeaderFontCB != NULL) {
        PHB_ITEM pRow = hb_itemPutNI(NULL, section);
        PHB_ITEM pRet = hb_itemNew(hb_vmEvalBlockV(m_verticalHeaderFontCB, 1, pRow));
        if (hb_itemType(pRet) & HB_IT_OBJECT) {
          void *ptr = hb_itemGetPtr(hb_objSendMsg(pRet, "POINTER", 0));
          data = *(static_cast<QFont *>(ptr));
          ptr = NULL;
        }
        hb_itemRelease(pRow);
        hb_itemRelease(pRet);
      }
      break;
    }
    case Qt::TextAlignmentRole: {
      if (m_verticalHeaderTextAlignmentCB != NULL) {
        PHB_ITEM pRow = hb_itemPutNI(NULL, section);
        PHB_ITEM pRet = hb_itemNew(hb_vmEvalBlockV(m_verticalHeaderTextAlignmentCB, 1, pRow));
        if (hb_itemType(pRet) & HB_IT_NUMERIC) {
          data = hb_itemGetNI(pRet);
        }
        hb_itemRelease(pRow);
        hb_itemRelease(pRet);
      }
      break;
    }
    case Qt::BackgroundRole: {
      if (m_verticalHeaderBackgroundCB != NULL) {
        PHB_ITEM pRow = hb_itemPutNI(NULL, section);
        PHB_ITEM pRet = hb_itemNew(hb_vmEvalBlockV(m_verticalHeaderBackgroundCB, 1, pRow));
        switch (hb_itemType(pRet)) {
        case HB_IT_OBJECT: {
          void *ptr = hb_itemGetPtr(hb_objSendMsg(pRet, "POINTER", 0));
          if (hb_clsIsParent(hb_objGetClass(pRet), "QCOLOR")) {
            data = *(static_cast<QColor *>(ptr));
          } else if (hb_clsIsParent(hb_objGetClass(pRet), "QBRUSH")) {
            data = *(static_cast<QBrush *>(ptr));
          }
          ptr = NULL;
          break;
        }
        case HB_IT_STRING: {
          data = QColor(hb_itemGetCPtr(pRet));
          break;
        }
        }
        hb_itemRelease(pRow);
        hb_itemRelease(pRet);
      }
      break;
    }
    case Qt::ForegroundRole: {
      if (m_verticalHeaderForegroundCB != NULL) {
        PHB_ITEM pRow = hb_itemPutNI(NULL, section);
        PHB_ITEM pRet = hb_itemNew(hb_vmEvalBlockV(m_verticalHeaderForegroundCB, 1, pRow));
        switch (hb_itemType(pRet)) {
        case HB_IT_OBJECT: {
          void *ptr = hb_itemGetPtr(hb_objSendMsg(pRet, "POINTER", 0));
          data = *(static_cast<QColor *>(ptr));
          break;
        }
        case HB_IT_STRING: {
          data = QColor(hb_itemGetCPtr(pRet));
          break;
        }
        }
        hb_itemRelease(pRow);
        hb_itemRelease(pRet);
      }
      break;
    }
    break;
    }
  }
  }

  return data;
}

// executa o codeblock que retorna o número de linhas
int HAbstractTableModel::rowCount(const QModelIndex &parent) const
{
  if (parent.isValid()) {
    return 0;
  }

  if (m_rowCountCB != NULL) {
    return hb_itemGetNI(hb_vmEvalBlockV(m_rowCountCB, 0));
  }

  return 0;
}

// executa o codeblock que retorna o número de colunas
int HAbstractTableModel::columnCount(const QModelIndex &parent) const
{
  if (parent.isValid()) {
    return 0;
  }

  if (m_columnCountCB != NULL) {
    return hb_itemGetNI(hb_vmEvalBlockV(m_columnCountCB, 0));
  }

  return 0;
}

Qt::ItemFlags HAbstractTableModel::flags(const QModelIndex &index) const
{
  Qt::ItemFlags flags = Qt::ItemIsSelectable | Qt::ItemIsEnabled;

  if (m_flagsCB != NULL) {
    PHB_ITEM pRow = hb_itemPutNI(NULL, index.row());
    PHB_ITEM pCol = hb_itemPutNI(NULL, index.column());

    PHB_ITEM pRet = hb_itemNew(hb_vmEvalBlockV(m_flagsCB, 2, pRow, pCol));

    if (hb_itemType(pRet) & HB_IT_NUMERIC) {
      flags = static_cast<Qt::ItemFlags>(hb_itemGetNI(pRet));
    }

    hb_itemRelease(pRow);
    hb_itemRelease(pCol);
    hb_itemRelease(pRet);
  }

  return flags;
}

bool HAbstractTableModel::setData(const QModelIndex &index, const QVariant &value, int role)
{
  bool success = false;

  if (m_setDataCB != NULL) {
    PHB_ITEM pRow = hb_itemPutNI(NULL, index.row());
    PHB_ITEM pCol = hb_itemPutNI(NULL, index.column());
    PHB_ITEM pValue = Qt4xHb::returnQVariantObject((void *)&value); // TODO: C++ cast
    PHB_ITEM pRole = hb_itemPutNI(NULL, role);

    PHB_ITEM pRet = hb_itemNew(hb_vmEvalBlockV(m_setDataCB, 4, pRow, pCol, pValue, pRole));

    if (hb_itemType(pRet) & HB_IT_LOGICAL) {
      success = hb_itemGetL(pRet);
    }

    hb_itemRelease(pRow);
    hb_itemRelease(pCol);
    hb_itemRelease(pValue);
    hb_itemRelease(pRole);
    hb_itemRelease(pRet);
  }

  return success;
}

// emite o sinal QAbstractItemModel::layoutChanged(), forçando
// o recarregamento dos dados
void HAbstractTableModel::reloadData()
{
  // Notas da documentação do Qt:
  emit QAbstractItemModel::layoutAboutToBeChanged();
  // Remember the QModelIndex that will change
  // Update your internal data
  // Call changePersistentIndex()
  emit QAbstractItemModel::layoutChanged();
}

// cria um objeto da classe QModelIndex
// QModelIndex HAbstractTableModel::createIndex(int row, int column)
// {
//   return QAbstractItemModel::createIndex(row, column, 0);
// }
