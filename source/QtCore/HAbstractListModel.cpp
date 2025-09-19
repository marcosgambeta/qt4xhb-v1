//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "HAbstractListModel.hpp"

HAbstractListModel::HAbstractListModel(QObject *parent) : QAbstractListModel(parent)
{
  // linhas
  m_rowCountCB = NULL;

  // células
  m_getFieldCB = NULL;
  m_getFieldDecorationCB = NULL;
  m_getFieldEditCB = NULL;
  m_getFieldToolTipCB = NULL;
  m_getFieldStatusTipCB = NULL;
  m_getFieldWhatsThisCB = NULL;
  m_getFieldSizeHintCB = NULL;
  m_getFieldFontCB = NULL;
  m_getFieldAlignCB = NULL;
  m_getFieldBGColorCB = NULL;
  m_getFieldFGColorCB = NULL;

  // cabeçalho horizontal
  m_getHHCB = NULL;
  m_getHHDecorationCB = NULL;
  m_getHHFontCB = NULL;
  m_getHHAlignCB = NULL;
  m_getHHBGColorCB = NULL;
  m_getHHFGColorCB = NULL;

  // cabeçalho vertical
  m_getVHCB = NULL;
  m_getVHDecorationCB = NULL;
  m_getVHFontCB = NULL;
  m_getVHAlignCB = NULL;
  m_getVHBGColorCB = NULL;
  m_getVHFGColorCB = NULL;
}

HAbstractListModel::~HAbstractListModel()
{
  // linhas
  if (m_rowCountCB != NULL) {
    hb_itemRelease(m_rowCountCB);
  }

  // células
  if (m_getFieldCB != NULL) {
    hb_itemRelease(m_getFieldCB);
  }
  if (m_getFieldDecorationCB != NULL) {
    hb_itemRelease(m_getFieldDecorationCB);
  }
  if (m_getFieldEditCB != NULL) {
    hb_itemRelease(m_getFieldEditCB);
  }
  if (m_getFieldToolTipCB != NULL) {
    hb_itemRelease(m_getFieldToolTipCB);
  }
  if (m_getFieldStatusTipCB != NULL) {
    hb_itemRelease(m_getFieldStatusTipCB);
  }
  if (m_getFieldWhatsThisCB != NULL) {
    hb_itemRelease(m_getFieldWhatsThisCB);
  }
  if (m_getFieldSizeHintCB != NULL) {
    hb_itemRelease(m_getFieldSizeHintCB);
  }
  if (m_getFieldFontCB != NULL) {
    hb_itemRelease(m_getFieldFontCB);
  }
  if (m_getFieldAlignCB != NULL) {
    hb_itemRelease(m_getFieldAlignCB);
  }
  if (m_getFieldBGColorCB != NULL) {
    hb_itemRelease(m_getFieldBGColorCB);
  }
  if (m_getFieldFGColorCB != NULL) {
    hb_itemRelease(m_getFieldFGColorCB);
  }

  // cabeçalho horizontal
  if (m_getHHCB != NULL) {
    hb_itemRelease(m_getHHCB);
  }
  if (m_getHHDecorationCB != NULL) {
    hb_itemRelease(m_getHHDecorationCB);
  }
  if (m_getHHFontCB != NULL) {
    hb_itemRelease(m_getHHFontCB);
  }
  if (m_getHHAlignCB != NULL) {
    hb_itemRelease(m_getHHAlignCB);
  }
  if (m_getHHBGColorCB != NULL) {
    hb_itemRelease(m_getHHBGColorCB);
  }
  if (m_getHHFGColorCB != NULL) {
    hb_itemRelease(m_getHHFGColorCB);
  }

  // dados do cabecalho vertical
  if (m_getVHCB != NULL) {
    hb_itemRelease(m_getVHCB);
  }
  if (m_getVHDecorationCB != NULL) {
    hb_itemRelease(m_getVHDecorationCB);
  }
  if (m_getVHFontCB != NULL) {
    hb_itemRelease(m_getVHFontCB);
  }
  if (m_getVHAlignCB != NULL) {
    hb_itemRelease(m_getVHAlignCB);
  }
  if (m_getVHBGColorCB != NULL) {
    hb_itemRelease(m_getVHBGColorCB);
  }
  if (m_getVHFGColorCB != NULL) {
    hb_itemRelease(m_getVHFGColorCB);
  }
}

// linhas

void HAbstractListModel::setRowCountCB(PHB_ITEM block)
{
  if (m_rowCountCB != NULL) {
    hb_itemRelease(m_rowCountCB);
  }
  if (block != NULL) {
    m_rowCountCB = hb_itemNew(block);
  }
}

// células

void HAbstractListModel::setDisplayRoleCB(PHB_ITEM block)
{
  if (m_getFieldCB != NULL) {
    hb_itemRelease(m_getFieldCB);
  }
  if (block != NULL) {
    m_getFieldCB = hb_itemNew(block);
  }
}

void HAbstractListModel::setDecorationRoleCB(PHB_ITEM block)
{
  if (m_getFieldDecorationCB != NULL) {
    hb_itemRelease(m_getFieldDecorationCB);
  }
  if (block != NULL) {
    m_getFieldDecorationCB = hb_itemNew(block);
  }
}

void HAbstractListModel::setEditRoleCB(PHB_ITEM block)
{
  if (m_getFieldEditCB != NULL) {
    hb_itemRelease(m_getFieldEditCB);
  }
  if (block != NULL) {
    m_getFieldEditCB = hb_itemNew(block);
  }
}

void HAbstractListModel::setToolTipRoleCB(PHB_ITEM block)
{
  if (m_getFieldToolTipCB != NULL) {
    hb_itemRelease(m_getFieldToolTipCB);
  }
  if (block != NULL) {
    m_getFieldToolTipCB = hb_itemNew(block);
  }
}

void HAbstractListModel::setStatusTipRoleCB(PHB_ITEM block)
{
  if (m_getFieldStatusTipCB != NULL) {
    hb_itemRelease(m_getFieldStatusTipCB);
  }
  if (block != NULL) {
    m_getFieldStatusTipCB = hb_itemNew(block);
  }
}

void HAbstractListModel::setWhatsThisRoleCB(PHB_ITEM block)
{
  if (m_getFieldWhatsThisCB != NULL) {
    hb_itemRelease(m_getFieldWhatsThisCB);
  }
  if (block != NULL) {
    m_getFieldWhatsThisCB = hb_itemNew(block);
  }
}

void HAbstractListModel::setSizeHintRoleCB(PHB_ITEM block)
{
  if (m_getFieldSizeHintCB != NULL) {
    hb_itemRelease(m_getFieldSizeHintCB);
  }
  if (block != NULL) {
    m_getFieldSizeHintCB = hb_itemNew(block);
  }
}

void HAbstractListModel::setFontRoleCB(PHB_ITEM block)
{
  if (m_getFieldFontCB != NULL) {
    hb_itemRelease(m_getFieldFontCB);
  }
  if (block != NULL) {
    m_getFieldFontCB = hb_itemNew(block);
  }
}

void HAbstractListModel::setTextAlignmentRoleCB(PHB_ITEM block)
{
  if (m_getFieldAlignCB != NULL) {
    hb_itemRelease(m_getFieldAlignCB);
  }
  if (block != NULL) {
    m_getFieldAlignCB = hb_itemNew(block);
  }
}

void HAbstractListModel::setBackgroundRoleCB(PHB_ITEM block)
{
  if (m_getFieldBGColorCB != NULL) {
    hb_itemRelease(m_getFieldBGColorCB);
  }
  if (block != NULL) {
    m_getFieldBGColorCB = hb_itemNew(block);
  }
}

void HAbstractListModel::setForegroundRoleCB(PHB_ITEM block)
{
  if (m_getFieldFGColorCB != NULL) {
    hb_itemRelease(m_getFieldFGColorCB);
  }
  if (block != NULL) {
    m_getFieldFGColorCB = hb_itemNew(block);
  }
}

// cabeçalho horizontal

void HAbstractListModel::setHorizontalHeaderDisplayRoleCB(PHB_ITEM block)
{
  if (m_getHHCB != NULL) {
    hb_itemRelease(m_getHHCB);
  }
  if (block != NULL) {
    m_getHHCB = hb_itemNew(block);
  }
}

void HAbstractListModel::setHorizontalHeaderDecorationRoleCB(PHB_ITEM block)
{
  if (m_getHHDecorationCB != NULL) {
    hb_itemRelease(m_getHHDecorationCB);
  }
  if (block != NULL) {
    m_getHHDecorationCB = hb_itemNew(block);
  }
}

void HAbstractListModel::setHorizontalHeaderFontRoleCB(PHB_ITEM block)
{
  if (m_getHHFontCB != NULL) {
    hb_itemRelease(m_getHHFontCB);
  }
  if (block != NULL) {
    m_getHHFontCB = hb_itemNew(block);
  }
}

void HAbstractListModel::setHorizontalHeaderTextAlignmentRoleCB(PHB_ITEM block)
{
  if (m_getHHAlignCB != NULL) {
    hb_itemRelease(m_getHHAlignCB);
  }
  if (block != NULL) {
    m_getHHAlignCB = hb_itemNew(block);
  }
}

void HAbstractListModel::setHorizontalHeaderBackgroundRoleCB(PHB_ITEM block)
{
  if (m_getHHBGColorCB != NULL) {
    hb_itemRelease(m_getHHBGColorCB);
  }
  if (block != NULL) {
    m_getHHBGColorCB = hb_itemNew(block);
  }
}

void HAbstractListModel::setHorizontalHeaderForegroundRoleCB(PHB_ITEM block)
{
  if (m_getHHFGColorCB != NULL) {
    hb_itemRelease(m_getHHFGColorCB);
  }
  if (block != NULL) {
    m_getHHFGColorCB = hb_itemNew(block);
  }
}

// cabeçalho vertical

void HAbstractListModel::setVerticalHeaderDisplayRoleCB(PHB_ITEM block)
{
  if (m_getVHCB != NULL) {
    hb_itemRelease(m_getVHCB);
  }
  if (block != NULL) {
    m_getVHCB = hb_itemNew(block);
  }
}

void HAbstractListModel::setVerticalHeaderDecorationRoleCB(PHB_ITEM block)
{
  if (m_getVHDecorationCB != NULL) {
    hb_itemRelease(m_getVHDecorationCB);
  }
  if (block != NULL) {
    m_getVHDecorationCB = hb_itemNew(block);
  }
}

void HAbstractListModel::setVerticalHeaderFontRoleCB(PHB_ITEM block)
{
  if (m_getVHFontCB != NULL) {
    hb_itemRelease(m_getVHFontCB);
  }
  if (block != NULL) {
    m_getVHFontCB = hb_itemNew(block);
  }
}

void HAbstractListModel::setVerticalHeaderTextAlignmentRoleCB(PHB_ITEM block)
{
  if (m_getVHAlignCB != NULL) {
    hb_itemRelease(m_getVHAlignCB);
  }
  if (block != NULL) {
    m_getVHAlignCB = hb_itemNew(block);
  }
}

void HAbstractListModel::setVerticalHeaderBackgroundRoleCB(PHB_ITEM block)
{
  if (m_getVHBGColorCB != NULL) {
    hb_itemRelease(m_getVHBGColorCB);
  }
  if (block != NULL) {
    m_getVHBGColorCB = hb_itemNew(block);
  }
}

void HAbstractListModel::setVerticalHeaderForegroundRoleCB(PHB_ITEM block)
{
  if (m_getVHFGColorCB != NULL) {
    hb_itemRelease(m_getVHFGColorCB);
  }
  if (block != NULL) {
    m_getVHFGColorCB = hb_itemNew(block);
  }
}

QVariant HAbstractListModel::data(const QModelIndex &index, int role) const
{
  QVariant data;

  if (role == Qt::DisplayRole && m_getFieldCB != NULL) {
    PHB_ITEM pRow = hb_itemPutNI(NULL, index.row());
    PHB_ITEM pRet = hb_itemNew(hb_vmEvalBlockV(m_getFieldCB, 1, pRow));
    if (hb_itemType(pRet) & HB_IT_STRING) {
      data = hb_itemGetCPtr(pRet);
    } else if (hb_itemType(pRet) & HB_IT_DOUBLE) {
      data = hb_itemGetND(pRet);
    } else if (hb_itemType(pRet) & HB_IT_NUMERIC) {
      data = hb_itemGetNI(pRet);
    } else if (hb_itemType(pRet) & HB_IT_LOGICAL) {
      data = hb_itemGetL(pRet);
    }
    hb_itemRelease(pRow);
    hb_itemRelease(pRet);
  } else if (role == Qt::DecorationRole && m_getFieldDecorationCB != NULL) {
    PHB_ITEM pRow = hb_itemPutNI(NULL, index.row());
    PHB_ITEM pRet = hb_itemNew(hb_vmEvalBlockV(m_getFieldDecorationCB, 1, pRow));
    if (hb_itemType(pRet) & HB_IT_OBJECT) {
      void *ptr = static_cast<void *>(hb_itemGetPtr(hb_objSendMsg(pRet, "POINTER", 0)));
      if (hb_clsIsParent(hb_objGetClass(pRet), "QICON")) {
        data = *(static_cast<QIcon *>(ptr));
      } else if (hb_clsIsParent(hb_objGetClass(pRet), "QPIXMAP")) {
        data = *(static_cast<QPixmap *>(ptr));
      }
    } else if (hb_itemType(pRet) & HB_IT_STRING) {
      data = QIcon(hb_itemGetCPtr(pRet));
    }
    hb_itemRelease(pRow);
    hb_itemRelease(pRet);
  } else if (role == Qt::EditRole && m_getFieldEditCB != NULL) {
    PHB_ITEM pRow = hb_itemPutNI(NULL, index.row());
    PHB_ITEM pRet = hb_itemNew(hb_vmEvalBlockV(m_getFieldEditCB, 1, pRow));
    if (hb_itemType(pRet) & HB_IT_STRING) {
      data = hb_itemGetCPtr(pRet);
    }
    hb_itemRelease(pRow);
    hb_itemRelease(pRet);
  } else if (role == Qt::ToolTipRole && m_getFieldToolTipCB != NULL) {
    PHB_ITEM pRow = hb_itemPutNI(NULL, index.row());
    PHB_ITEM pRet = hb_itemNew(hb_vmEvalBlockV(m_getFieldToolTipCB, 1, pRow));
    if (hb_itemType(pRet) & HB_IT_STRING) {
      data = hb_itemGetCPtr(pRet);
    }
    hb_itemRelease(pRow);
    hb_itemRelease(pRet);
  } else if (role == Qt::StatusTipRole && m_getFieldStatusTipCB != NULL) {
    PHB_ITEM pRow = hb_itemPutNI(NULL, index.row());
    PHB_ITEM pRet = hb_itemNew(hb_vmEvalBlockV(m_getFieldStatusTipCB, 1, pRow));
    if (hb_itemType(pRet) & HB_IT_STRING) {
      data = hb_itemGetCPtr(pRet);
    }
    hb_itemRelease(pRow);
    hb_itemRelease(pRet);
  } else if (role == Qt::WhatsThisRole && m_getFieldWhatsThisCB != NULL) {
    PHB_ITEM pRow = hb_itemPutNI(NULL, index.row());
    PHB_ITEM pRet = hb_itemNew(hb_vmEvalBlockV(m_getFieldWhatsThisCB, 1, pRow));
    if (hb_itemType(pRet) & HB_IT_STRING) {
      data = hb_itemGetCPtr(pRet);
    }
    hb_itemRelease(pRow);
    hb_itemRelease(pRet);
  } else if (role == Qt::SizeHintRole && m_getFieldSizeHintCB != NULL) {
    PHB_ITEM pRow = hb_itemPutNI(NULL, index.row());
    PHB_ITEM pRet = hb_itemNew(hb_vmEvalBlockV(m_getFieldSizeHintCB, 1, pRow));
    if (hb_itemType(pRet) & HB_IT_OBJECT) {
      void *ptr = static_cast<void *>(hb_itemGetPtr(hb_objSendMsg(pRet, "POINTER", 0)));
      data = *(static_cast<QSize *>(ptr));
    }
    hb_itemRelease(pRow);
    hb_itemRelease(pRet);
  } else if (role == Qt::FontRole && m_getFieldFontCB != NULL) {
    PHB_ITEM pRow = hb_itemPutNI(NULL, index.row());
    PHB_ITEM pRet = hb_itemNew(hb_vmEvalBlockV(m_getFieldFontCB, 1, pRow));
    if (hb_itemType(pRet) & HB_IT_OBJECT) {
      void *ptr = static_cast<void *>(hb_itemGetPtr(hb_objSendMsg(pRet, "POINTER", 0)));
      data = *(static_cast<QFont *>(ptr));
    }
    hb_itemRelease(pRow);
    hb_itemRelease(pRet);
  } else if (role == Qt::TextAlignmentRole && m_getFieldAlignCB != NULL) {
    PHB_ITEM pRow = hb_itemPutNI(NULL, index.row());
    PHB_ITEM pRet = hb_itemNew(hb_vmEvalBlockV(m_getFieldAlignCB, 1, pRow));
    if (hb_itemType(pRet) & HB_IT_NUMERIC) {
      data = hb_itemGetNI(pRet);
    }
    hb_itemRelease(pRow);
    hb_itemRelease(pRet);
  } else if (role == Qt::BackgroundRole && m_getFieldBGColorCB != NULL) {
    PHB_ITEM pRow = hb_itemPutNI(NULL, index.row());
    PHB_ITEM pRet = hb_itemNew(hb_vmEvalBlockV(m_getFieldBGColorCB, 1, pRow));
    if (hb_itemType(pRet) & HB_IT_OBJECT) {
      void *ptr = static_cast<void *>(hb_itemGetPtr(hb_objSendMsg(pRet, "POINTER", 0)));
      if (hb_clsIsParent(hb_objGetClass(pRet), "QCOLOR")) {
        data = *(static_cast<QColor *>(ptr));
      } else if (hb_clsIsParent(hb_objGetClass(pRet), "QBRUSH")) {
        data = *(static_cast<QBrush *>(ptr));
      }
    } else if (hb_itemType(pRet) & HB_IT_STRING) {
      data = QColor(hb_itemGetCPtr(pRet));
    }
    hb_itemRelease(pRow);
    hb_itemRelease(pRet);
  } else if (role == Qt::ForegroundRole && m_getFieldFGColorCB != NULL) {
    PHB_ITEM pRow = hb_itemPutNI(NULL, index.row());
    PHB_ITEM pRet = hb_itemNew(hb_vmEvalBlockV(m_getFieldFGColorCB, 1, pRow));
    if (hb_itemType(pRet) & HB_IT_OBJECT) {
      void *ptr = static_cast<void *>(hb_itemGetPtr(hb_objSendMsg(pRet, "POINTER", 0)));
      data = *(static_cast<QColor *>(ptr));
    } else if (hb_itemType(pRet) & HB_IT_STRING) {
      data = QColor(hb_itemGetCPtr(pRet));
    }
    hb_itemRelease(pRow);
    hb_itemRelease(pRet);
  }

  return data;
}

QVariant HAbstractListModel::headerData(int section, Qt::Orientation orientation, int role) const
{
  QVariant data;

  if (orientation == Qt::Horizontal) {
    if (role == Qt::DisplayRole && m_getHHCB != NULL) {
      PHB_ITEM pCol = hb_itemPutNI(NULL, section);
      PHB_ITEM pRet = hb_itemNew(hb_vmEvalBlockV(m_getHHCB, 1, pCol));
      if (hb_itemType(pRet) & HB_IT_STRING) {
        data = hb_itemGetCPtr(pRet);
      } else if (hb_itemType(pRet) & HB_IT_DOUBLE) {
        data = hb_itemGetND(pRet);
      } else if (hb_itemType(pRet) & HB_IT_NUMERIC) {
        data = hb_itemGetNI(pRet);
      } else if (hb_itemType(pRet) & HB_IT_LOGICAL) {
        data = hb_itemGetL(pRet);
      }
      hb_itemRelease(pCol);
      hb_itemRelease(pRet);
    } else if (role == Qt::DecorationRole && m_getHHDecorationCB != NULL) {
      PHB_ITEM pCol = hb_itemPutNI(NULL, section);
      PHB_ITEM pRet = hb_itemNew(hb_vmEvalBlockV(m_getHHDecorationCB, 1, pCol));
      if (hb_itemType(pRet) & HB_IT_OBJECT) {
        void *ptr = static_cast<void *>(hb_itemGetPtr(hb_objSendMsg(pRet, "POINTER", 0)));
        if (hb_clsIsParent(hb_objGetClass(pRet), "QICON")) {
          data = *(static_cast<QIcon *>(ptr));
        } else if (hb_clsIsParent(hb_objGetClass(pRet), "QPIXMAP")) {
          data = *(static_cast<QPixmap *>(ptr));
        }
      } else if (hb_itemType(pRet) & HB_IT_STRING) {
        data = QIcon(hb_itemGetCPtr(pRet));
      }
      hb_itemRelease(pCol);
      hb_itemRelease(pRet);
    } else if (role == Qt::FontRole && m_getHHFontCB != NULL) {
      PHB_ITEM pCol = hb_itemPutNI(NULL, section);
      PHB_ITEM pRet = hb_itemNew(hb_vmEvalBlockV(m_getHHFontCB, 1, pCol));
      if (hb_itemType(pRet) & HB_IT_OBJECT) {
        void *ptr = static_cast<void *>(hb_itemGetPtr(hb_objSendMsg(pRet, "POINTER", 0)));
        data = *(static_cast<QFont *>(ptr));
      }
      hb_itemRelease(pCol);
      hb_itemRelease(pRet);
    } else if (role == Qt::TextAlignmentRole && m_getHHAlignCB != NULL) {
      PHB_ITEM pCol = hb_itemPutNI(NULL, section);
      PHB_ITEM pRet = hb_itemNew(hb_vmEvalBlockV(m_getHHAlignCB, 1, pCol));
      if (hb_itemType(pRet) & HB_IT_NUMERIC) {
        data = hb_itemGetNI(pRet);
      }
      hb_itemRelease(pCol);
      hb_itemRelease(pRet);
    } else if (role == Qt::BackgroundRole && m_getHHBGColorCB != NULL) {
      PHB_ITEM pCol = hb_itemPutNI(NULL, section);
      PHB_ITEM pRet = hb_itemNew(hb_vmEvalBlockV(m_getHHBGColorCB, 1, pCol));
      if (hb_itemType(pRet) & HB_IT_OBJECT) {
        void *ptr = static_cast<void *>(hb_itemGetPtr(hb_objSendMsg(pRet, "POINTER", 0)));
        if (hb_clsIsParent(hb_objGetClass(pRet), "QCOLOR")) {
          data = *(static_cast<QColor *>(ptr));
        } else if (hb_clsIsParent(hb_objGetClass(pRet), "QBRUSH")) {
          data = *(static_cast<QBrush *>(ptr));
        }
      } else if (hb_itemType(pRet) & HB_IT_STRING) {
        data = QColor(hb_itemGetCPtr(pRet));
      }
      hb_itemRelease(pCol);
      hb_itemRelease(pRet);
    } else if (role == Qt::ForegroundRole && m_getHHFGColorCB != NULL) {
      PHB_ITEM pCol = hb_itemPutNI(NULL, section);
      PHB_ITEM pRet = hb_itemNew(hb_vmEvalBlockV(m_getHHFGColorCB, 1, pCol));
      if (hb_itemType(pRet) & HB_IT_OBJECT) {
        void *ptr = static_cast<void *>(hb_itemGetPtr(hb_objSendMsg(pRet, "POINTER", 0)));
        data = *(static_cast<QColor *>(ptr));
      } else if (hb_itemType(pRet) & HB_IT_STRING) {
        data = QColor(hb_itemGetCPtr(pRet));
      }
      hb_itemRelease(pCol);
      hb_itemRelease(pRet);
    }
  } else if (orientation == Qt::Vertical) {
    if (role == Qt::DisplayRole && m_getVHCB != NULL) {
      PHB_ITEM pRow = hb_itemPutNI(NULL, section);
      PHB_ITEM pRet = hb_itemNew(hb_vmEvalBlockV(m_getVHCB, 1, pRow));
      if (hb_itemType(pRet) & HB_IT_STRING) {
        data = hb_itemGetCPtr(pRet);
      } else if (hb_itemType(pRet) & HB_IT_DOUBLE) {
        data = hb_itemGetND(pRet);
      } else if (hb_itemType(pRet) & HB_IT_NUMERIC) {
        data = hb_itemGetNI(pRet);
      } else if (hb_itemType(pRet) & HB_IT_LOGICAL) {
        data = hb_itemGetL(pRet);
      }
      hb_itemRelease(pRow);
      hb_itemRelease(pRet);
    } else if (role == Qt::DecorationRole && m_getVHDecorationCB != NULL) {
      PHB_ITEM pRow = hb_itemPutNI(NULL, section);
      PHB_ITEM pRet = hb_itemNew(hb_vmEvalBlockV(m_getVHDecorationCB, 1, pRow));
      if (hb_itemType(pRet) & HB_IT_OBJECT) {
        void *ptr = static_cast<void *>(hb_itemGetPtr(hb_objSendMsg(pRet, "POINTER", 0)));
        if (hb_clsIsParent(hb_objGetClass(pRet), "QICON")) {
          data = *(static_cast<QIcon *>(ptr));
        } else if (hb_clsIsParent(hb_objGetClass(pRet), "QPIXMAP")) {
          data = *(static_cast<QPixmap *>(ptr));
        }
      } else if (hb_itemType(pRet) & HB_IT_STRING) {
        data = QIcon(hb_itemGetCPtr(pRet));
      }
      hb_itemRelease(pRow);
      hb_itemRelease(pRet);
    } else if (role == Qt::FontRole && m_getVHFontCB != NULL) {
      PHB_ITEM pRow = hb_itemPutNI(NULL, section);
      PHB_ITEM pRet = hb_itemNew(hb_vmEvalBlockV(m_getVHFontCB, 1, pRow));
      if (hb_itemType(pRet) & HB_IT_OBJECT) {
        void *ptr = static_cast<void *>(hb_itemGetPtr(hb_objSendMsg(pRet, "POINTER", 0)));
        data = *(static_cast<QFont *>(ptr));
      }
      hb_itemRelease(pRow);
      hb_itemRelease(pRet);
    } else if (role == Qt::TextAlignmentRole && m_getVHAlignCB != NULL) {
      PHB_ITEM pRow = hb_itemPutNI(NULL, section);
      PHB_ITEM pRet = hb_itemNew(hb_vmEvalBlockV(m_getVHAlignCB, 1, pRow));
      if (hb_itemType(pRet) & HB_IT_NUMERIC) {
        data = hb_itemGetNI(pRet);
      }
      hb_itemRelease(pRow);
      hb_itemRelease(pRet);
    } else if (role == Qt::BackgroundRole && m_getVHBGColorCB != NULL) {
      PHB_ITEM pRow = hb_itemPutNI(NULL, section);
      PHB_ITEM pRet = hb_itemNew(hb_vmEvalBlockV(m_getVHBGColorCB, 1, pRow));
      if (hb_itemType(pRet) & HB_IT_OBJECT) {
        void *ptr = static_cast<void *>(hb_itemGetPtr(hb_objSendMsg(pRet, "POINTER", 0)));
        if (hb_clsIsParent(hb_objGetClass(pRet), "QCOLOR")) {
          data = *(static_cast<QColor *>(ptr));
        } else if (hb_clsIsParent(hb_objGetClass(pRet), "QBRUSH")) {
          data = *(static_cast<QBrush *>(ptr));
        }
      } else if (hb_itemType(pRet) & HB_IT_STRING) {
        data = QColor(hb_itemGetCPtr(pRet));
      }
      hb_itemRelease(pRow);
      hb_itemRelease(pRet);
    } else if (role == Qt::ForegroundRole && m_getVHFGColorCB != NULL) {
      PHB_ITEM pRow = hb_itemPutNI(NULL, section);
      PHB_ITEM pRet = hb_itemNew(hb_vmEvalBlockV(m_getVHFGColorCB, 1, pRow));
      if (hb_itemType(pRet) & HB_IT_OBJECT) {
        void *ptr = static_cast<void *>(hb_itemGetPtr(hb_objSendMsg(pRet, "POINTER", 0)));
        data = *(static_cast<QColor *>(ptr));
      } else if (hb_itemType(pRet) & HB_IT_STRING) {
        data = QColor(hb_itemGetCPtr(pRet));
      }
      hb_itemRelease(pRow);
      hb_itemRelease(pRet);
    }
  }

  return data;
}

int HAbstractListModel::rowCount(const QModelIndex &parent) const
{
  if (parent.isValid()) {
    return 0;
  } else {
    if (m_rowCountCB != NULL) {
      return static_cast<int>(hb_itemGetNI(hb_vmEvalBlockV(m_rowCountCB, 0)));
    } else {
      return 0;
    }
  }
}

// emite o sinal QAbstractItemModel::layoutChanged(), forçando
// o recarregamento dos dados
void HAbstractListModel::reloadData()
{
  // Notas da documentação do Qt:
  // emit layoutAboutToBeChanged
  emit QAbstractItemModel::layoutAboutToBeChanged();
  // Remember the QModelIndex that will change
  // Update your internal data
  // Call changePersistentIndex()
  // emit layoutChanged
  emit QAbstractItemModel::layoutChanged();
}
