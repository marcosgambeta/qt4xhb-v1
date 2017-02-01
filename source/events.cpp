/*

  Qt4xHb - biblioteca de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "events.h"

static Events *s = NULL;

Events::Events(QObject *parent) : QObject(parent)
{
}
Events::~Events()
{
  Events_release_codeblocks ();
}
bool Events::eventFilter(QObject *obj, QEvent *event)
{
  QEvent::Type eventtype = event->type();
  int found = -1;
  for (int i = 0; i < list1.size(); ++i)
  {
    if( ( (QObject *) list1.at(i) == (QObject *) obj ) &&
        ( (QEvent::Type) list2.at(i) == (QEvent::Type) eventtype ) &&
        ( (bool) list4.at(i) == true ) )
        { found = i; break; }
  }
  // se não encontrado na lista, aceita o evento
  if( found == -1 )
  {
    return false;
  }
  // executa bloco de código/função
  PHB_ITEM pObject = hb_itemPutPtr( NULL, (QObject *) obj );
  PHB_ITEM pEvent = hb_itemPutPtr( NULL, (QEvent *) event );
  bool ret = hb_itemGetL( hb_vmEvalBlockV( (PHB_ITEM) list3.at(found), 2, pObject, pEvent ) );
  hb_itemRelease( pObject );
  hb_itemRelease( pEvent );
  // retorna resultado
  // .t.: interrompe processamento do evento
  // .f.: continua processamento do evento
  return ret;
}

//HB_FUNC( QT_QEVENTFILTER )
//{
//  if( s == NULL )
//  {
//    s = new Events(QCoreApplication::instance());
//  }
//  hb_retptr( (Events *) s );
//}

/*
  Conecta um determinado evento com um objeto
  Parâmetro 1: ponteiro para o objeto
  Parâmetro 2: id do evento
  Parâmetro 3: codeblock
  Retorna .t. se a conexão foi bem sucedida ou .f. se falhou
  Função de uso interno, não deve ser usada nas aplicações do
  usuário
*/

HB_FUNC( QT_CONNECT_EVENT )
{
  int i;
  // parâmetros da função
  QObject * object = (QObject *) hb_parptr(1);
  int type = hb_parni(2);
  PHB_ITEM codeblock = hb_itemNew( hb_param( 3, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  // cria objeto da classe Events, caso não tenha sido criado
  if( s == NULL )
  {
    s = new Events(QCoreApplication::instance());
  }
  // instala eventfilter, se não houver nenhum evento
  if( s->list1.contains( object ) == false )
  {
    object->installEventFilter(s);
  }
  // verifica se já está na lista
  int found = -1;
  for (i = 0; i < s->list1.size(); ++i)
  {
    if( ( (QObject *) s->list1.at(i) == (QObject *) object ) && ( (QEvent::Type) s->list2.at(i) == (QEvent::Type) type ) && ( (bool) s->list4.at(i) == true ) )
    {
      found = i;
      break;
    }
  }
  bool ret = false;
  // se nao encontrado na lista, adiciona
  if( found == -1 )
  {
    // procura por posição livre
    i = s->list4.indexOf( false );
    if( i == -1 ) // nao encontrou posicao livre
    {
      // adiciona evento na lista de eventos
      s->list1 << object;
      s->list2 << (QEvent::Type) type;
      s->list3 << codeblock;
      s->list4 << true;
    }
    else // encontrou posicao livre
    {
      // coloca na posição livre
      s->list1[i] = object;
      s->list2[i] = (QEvent::Type) type;
      s->list3[i] = codeblock;
      s->list4[i] = true;
    }
    ret = true;
  }
  // retorna o resultado da operação
  hb_retl( ret );
}

/*
  Desconecta um determinado evento
  Parâmetro 1: ponteiro para o objeto
  Parâmetro 2: id do evento
  Retorna .t. se a desconexão foi bem sucedida ou .f. se falhou
  Função de uso interno, não deve ser usada nas aplicações do
  usuário
*/

HB_FUNC( QT_DISCONNECT_EVENT )
{
  int i;
  // parâmetros da função
  QObject * object = (QObject *) hb_parptr(1);
  int type = hb_parni(2);
  // cria objeto da classe Events, caso não tenha sido criado
  if( s == NULL )
  {
    s = new Events(QCoreApplication::instance());
  }
  bool ret = false;
  // remove evento da lista de eventos
  for (i = 0; i < s->list1.size(); ++i)
  {
    if( (QObject *) s->list1.at(i) == (QObject *) object )
    {
      if( ( (QEvent::Type) s->list2.at(i) == (QEvent::Type) type ) && ( (bool) s->list4.at(i) == true ) )
      {
        hb_itemRelease( (PHB_ITEM) s->list3.at(i) );
        s->list1[i] = NULL;
        s->list2[i] = (QEvent::Type) 0;
        s->list3[i] = NULL;
        s->list4[i] = false;
        ret = true;
      }
    }
  }
  //
  // desinstala eventfilter, se não houver mais nenhum evento
  if( s->list1.contains( object ) == false )
  {
    object->removeEventFilter(s);
  }
  // retorna o resultado da operação
  hb_retl( ret );
}

void Events_release_codeblocks ()
{
  if( s )
  {
    for (int i = 0; i < s->list1.size(); ++i)
    {
      if( (bool) s->list4.at(i) == true )
      {
        hb_itemRelease((PHB_ITEM) s->list3.at(i) );
          s->list1[i] = NULL;
          s->list2[i] = QEvent::None;
          s->list3[i] = NULL;
          s->list4[i] = false;
      }
    }
  }
}
