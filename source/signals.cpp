//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

#include "signals.hpp"

static Signals *s_signals = NULL;

// constructor
Signals::Signals(QObject *parent) : QObject(parent)
{
  m_list1 = new QVector<QObject *>(1000, NULL); // armazena ponteiro do objeto
  m_list2 = new QVector<QString>(1000, "");     // armazena assinatura do sinal
  m_list3 = new QVector<PHB_ITEM>(1000, NULL);  // armazena codeblock
  m_mutex = new QMutex();
}

// destructor
Signals::~Signals()
{
  const int listsize = m_list1->size();
  for (int i = 0; i < listsize; ++i)
  {
    if (m_list1->at(i) != NULL)
    {
      hb_itemRelease(m_list3->at(i));
    }
  }

  delete m_list1;
  delete m_list2;
  delete m_list3;
  delete m_mutex;
}

// Conecta um determinado sinal com um objeto
// Par�metro 1: ponteiro para o objeto
// Par�metro 2: assinatura do sinal
// Par�metro 3: codeblock

void Signals::connectSignal(QObject *object, const QString &signal, PHB_ITEM codeblock)
{
  // procura por posi��o livre
  int index = m_list1->indexOf(NULL);

  if (index == -1) // nao encontrou posicao livre
  {
    // adiciona sinal na lista de sinais
    m_list1->append(object);
    m_list2->append(signal);
    m_list3->append(codeblock);
  }
  else // encontrou posicao livre
  {
    // coloca na posi��o livre
    m_list1->replace(index, object);
    m_list2->replace(index, signal);
    m_list3->replace(index, codeblock);
  }
}

// Desconecta um determinado sinal
// Par�metro 1: ponteiro para o objeto
// Par�metro 2: assinatura do sinal

void Signals::disconnectSignal(QObject *object, const QString &signal)
{
  // remove sinal da lista de sinais
  const int listsize = m_list1->size();
  for (int i = 0; i < listsize; ++i)
  {
    if ((m_list1->at(i) == object) && (m_list2->at(i) == signal))
    {
      hb_itemRelease(m_list3->at(i));
      m_list1->replace(i, NULL);
      m_list2->replace(i, "");
      m_list3->replace(i, NULL);
    }
  }
}

// Verifica se um determinado sinal do objeto especificado est� conectado
// Par�metro 1: ponteiro para o objeto
// Par�metro 2: assinatura do sinal
// Retorna true se existe uma conex�o ativa ou false caso n�o exista

bool Signals::isSignalConnected(QObject *object, const QString &signal)
{
  bool result = false;

  // verifica se j� est� na lista
  const int listsize = m_list1->size();
  for (int i = 0; i < listsize; ++i)
  {
    if ((m_list1->at(i) == object) && (m_list2->at(i) == signal))
    {
      result = true;
      break;
    }
  }

  return result;
}

PHB_ITEM Signals::returnCodeblock(QObject *object, const QString &signal)
{
  PHB_ITEM result = NULL;

  // localiza sinal na lista de sinais
  const int listsize = m_list1->size();
  for (int i = 0; i < listsize; ++i)
  {
    if ((m_list1->at(i) == object) && (m_list2->at(i) == signal))
    {
      result = m_list3->at(i);
      break;
    }
  }

  return result;
}

void Signals::disconnectAllSignals(QObject *obj, bool children)
{
  if (!children)
  {
    // percorre toda a lista de sinais
    const int listsize = m_list1->size();
    for (int i = 0; i < listsize; ++i)
    {
      // elimina sinais ativos ligados ao objeto (obj)
      if ((m_list1->at(i) == obj) && (m_list2->at(i) != "destroyed(QObject*)"))
      {
        hb_itemRelease(m_list3->at(i));
        m_list1->replace(i, NULL);
        m_list2->replace(i, "");
        m_list3->replace(i, NULL);
      }
    }
  }
  else
  {
    // obt�m a lista de filhos, netos, bisnetos, etc...
    QList<QObject *> objectList = obj->findChildren<QObject *>();
    // adiciona o pai na lista
    objectList << obj;
    // percorre toda a lista de objetos
    const int listsize = objectList.size();
    for (int i = 0; i < listsize; ++i)
    {
      QObject *currentObject = objectList.at(i);
      // percorre toda a lista de sinais
      const int listsize2 = m_list1->size();
      for (int ii = 0; ii < listsize2; ++ii)
      {
        // elimina sinais ativos (true) ligados ao objeto list.at(i)
        if ((m_list1->at(ii) == currentObject) && (m_list2->at(ii) != "destroyed(QObject*)"))
        {
          hb_itemRelease(m_list3->at(ii));
          m_list1->replace(ii, NULL);
          m_list2->replace(ii, "");
          m_list3->replace(ii, NULL);
        }
      }
    }
  }
}

bool Signals::connectionDisconnection(QObject *receiver, const QString &signal, const QString &slot)
{
  QObject *sender = qobject_cast<QObject *>(Qt4xHb::getQObjectPointerFromSelfItem());

  bool result = false;

  if (sender != NULL)
  {
    m_mutex->lock();

    if (hb_pcount() == 1)
    {
      if (!isSignalConnected(sender, signal))
      {
        PHB_ITEM codeblock = hb_itemNew(hb_param(1, HB_IT_BLOCK | HB_IT_SYMBOL));

        if (codeblock != NULL)
        {
          result = sender->connect(sender,
                                   sender->metaObject()->method(sender->metaObject()->indexOfMethod(
                                       QMetaObject::normalizedSignature(signal.toLatin1().constData()))),
                                   receiver,
                                   receiver->metaObject()->method(receiver->metaObject()->indexOfMethod(
                                       QMetaObject::normalizedSignature(slot.toLatin1().constData()))));

          if (result)
          {
            connectSignal(sender, signal, codeblock); // se conectado, adiciona
          }
          else
          {
            hb_itemRelease(codeblock);
          }
        }
      }
    }
    else if (hb_pcount() == 0)
    {
      result = sender->disconnect(sender,
                                  sender->metaObject()->method(sender->metaObject()->indexOfMethod(
                                      QMetaObject::normalizedSignature(signal.toLatin1().constData()))),
                                  receiver,
                                  receiver->metaObject()->method(receiver->metaObject()->indexOfMethod(
                                      QMetaObject::normalizedSignature(slot.toLatin1().constData()))));

      if (result)
      {
        disconnectSignal(sender, signal); // se desconectado, remove
      }
    }

    m_mutex->unlock();
  }

  return result;
}

int Signals::size()
{
  return m_list1->size();
}

int Signals::active()
{
  int count = 0;

  // percorre toda a lista de sinais
  const int listsize = m_list1->size();
  for (int i = 0; i < listsize; ++i)
  {
    if (m_list1->at(i))
    {
      ++count;
    }
  }

  return count;
}

namespace Qt4xHb
{

// Desconecta um determinado sinal
// Par�metro 1: ponteiro para o objeto
// Par�metro 2: assinatura do sinal
// Fun��o de uso interno, n�o deve ser usada nas aplica��es do usu�rio

void Signals_disconnect_signal(QObject *object, const QString &signal)
{
  s_signals->disconnectSignal(object, signal);
}

// Retorna o codeblock de um determinado objeto e sinal

PHB_ITEM Signals_return_codeblock(QObject *object, const QString &signal)
{
  return s_signals->returnCodeblock(object, signal);
}

// Libera todos os codeblocks relacionados com sinais do objeto 'obj',
// incluindo os sinais ligados aos filhos, netos, bisnetos, etc... (se children = true).
// NOTA: o sinal "destroyed(QObject*)" n�o � liberado, pois se fosse n�o seria executado
// na destrui��o do objeto. Este sinal � liberado automaticamente ap�s sua execu��o, pois
// a destrui��o de um objeto ocorre apenas uma vez.

void Signals_disconnect_all_signals(QObject *obj, bool children)
{
  s_signals->disconnectAllSignals(obj, children);
}

// conecta/desconecta sinais e retorna resultado (true/false) (para uso nas classes Q*Slots)

bool Signals_connection_disconnection(QObject *receiver, const QString &signal, const QString &slot)
{
  return s_signals->connectionDisconnection(receiver, signal, slot);
}

PHB_ITEM Signals_return_object(void *ptr, const char *classname)
{
  PHB_DYNS pDynSym = hb_dynsymFindName(classname);

  PHB_ITEM pObject = hb_itemNew(NULL);

  if (pDynSym != NULL)
  {
    hb_vmPushDynSym(pDynSym);
    hb_vmPushNil();
    hb_vmDo(0);
    hb_itemCopy(pObject, hb_stackReturnItem());
    PHB_ITEM pItem = hb_itemPutPtr(NULL, ptr);
    hb_objSendMsg(pObject, "_POINTER", 1, pItem);
    hb_itemRelease(pItem);
  }
  else
  {
    hb_errRT_BASE(EG_NOFUNC, 1001, NULL, classname, HB_ERR_ARGS_BASEPARAMS);
  }

  return pObject;
}

PHB_ITEM Signals_return_qobject(QObject *ptr, const char *classname)
{
  PHB_DYNS pDynSym = NULL;

  if (ptr != NULL)
  {
    pDynSym = hb_dynsymFindName(ptr->metaObject()->className());
  }

  if (pDynSym == NULL)
  {
    pDynSym = hb_dynsymFindName(classname);
  }

  PHB_ITEM pObject = hb_itemNew(NULL);

  if (pDynSym != NULL)
  {
    hb_vmPushDynSym(pDynSym);
    hb_vmPushNil();
    hb_vmDo(0);
    hb_itemCopy(pObject, hb_stackReturnItem());
    PHB_ITEM pItem = hb_itemPutPtr(NULL, ptr);
    hb_objSendMsg(pObject, "_POINTER", 1, pItem);
    hb_itemRelease(pItem);
  }
  else
  {
    hb_errRT_BASE(EG_NOFUNC, 1001, NULL, classname, HB_ERR_ARGS_BASEPARAMS);
  }

  return pObject;
}

} // namespace Qt4xHb

// Retorna o tamanho da lista de sinais.
// Aten��o: est� fun��o n�o faz parte da API p�blica, podendo
// ser removida ou sofrer modifica��es futuramente.

HB_FUNC(QTXHB_SIGNALS_SIZE)
{
  hb_retni(s_signals->size());
}

// Retorna o n�mero de sinais ativos na lista de sinais.
// Aten��o: est� fun��o n�o faz parte da API p�blica, podendo
// ser removida ou sofrer modifica��es futuramente.

HB_FUNC(QTXHB_SIGNALS_ACTIVE)
{
  hb_retni(s_signals->active());
}

HB_FUNC(QTXHB_SIGNALS_SIZE_ACTIVE) // deprecated
{
  hb_retni(s_signals->active());
}

#include <hbvm.h>
#include <hbinit.h>

static void qt4xhb_signals_init(void *cargo)
{
  HB_SYMBOL_UNUSED(cargo);

  if (s_signals == NULL)
  {
    s_signals = new Signals();
  }
}

static void qt4xhb_signals_exit(void *cargo)
{
  HB_SYMBOL_UNUSED(cargo);

  delete s_signals;
}

HB_CALL_ON_STARTUP_BEGIN(_qt4xhb_signals_init_)
hb_vmAtInit(qt4xhb_signals_init, NULL);
hb_vmAtExit(qt4xhb_signals_exit, NULL);
HB_CALL_ON_STARTUP_END(_qt4xhb_signals_init_)

#if defined(HB_PRAGMA_STARTUP)
#pragma startup _qt4xhb_signals_init_
#elif defined(HB_DATASEG_STARTUP)
#define HB_DATASEG_BODY HB_DATASEG_FUNC(_qt4xhb_signals_init_)
#include <hbiniseg.h>
#endif
