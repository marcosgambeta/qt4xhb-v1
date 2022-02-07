/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT4XHB_MACROS_QTXMLPATTERNS_H
#define QT4XHB_MACROS_QTXMLPATTERNS_H

#define ISQABSTRACTMESSAGEHANDLER( n )                      Qt4xHb::isObjectDerivedFrom( n, "QAbstractMessageHandler" )
#define ISQABSTRACTURIRESOLVER( n )                         Qt4xHb::isObjectDerivedFrom( n, "QAbstractUriResolver" )
#define ISQABSTRACTXMLNODEMODEL( n )                        Qt4xHb::isObjectDerivedFrom( n, "QAbstractXmlNodeModel" )
#define ISQABSTRACTXMLRECEIVER( n )                         Qt4xHb::isObjectDerivedFrom( n, "QAbstractXmlReceiver" )
#define ISQSIMPLEXMLNODEMODEL( n )                          Qt4xHb::isObjectDerivedFrom( n, "QSimpleXmlNodeModel" )
#define ISQSOURCELOCATION( n )                              Qt4xHb::isObjectDerivedFrom( n, "QSourceLocation" )
#define ISQXMLFORMATTER( n )                                Qt4xHb::isObjectDerivedFrom( n, "QXmlFormatter" )
#define ISQXMLITEM( n )                                     Qt4xHb::isObjectDerivedFrom( n, "QXmlItem" )
#define ISQXMLNAME( n )                                     Qt4xHb::isObjectDerivedFrom( n, "QXmlName" )
#define ISQXMLNAMEPOOL( n )                                 Qt4xHb::isObjectDerivedFrom( n, "QXmlNamePool" )
#define ISQXMLNODEMODELINDEX( n )                           Qt4xHb::isObjectDerivedFrom( n, "QXmlNodeModelIndex" )
#define ISQXMLQUERY( n )                                    Qt4xHb::isObjectDerivedFrom( n, "QXmlQuery" )
#define ISQXMLRESULTITEMS( n )                              Qt4xHb::isObjectDerivedFrom( n, "QXmlResultItems" )
#define ISQXMLSCHEMA( n )                                   Qt4xHb::isObjectDerivedFrom( n, "QXmlSchema" )
#define ISQXMLSCHEMAVALIDATOR( n )                          Qt4xHb::isObjectDerivedFrom( n, "QXmlSchemaValidator" )
#define ISQXMLSERIALIZER( n )                               Qt4xHb::isObjectDerivedFrom( n, "QXmlSerializer" )

#define PQABSTRACTMESSAGEHANDLER( n )                       static_cast< QAbstractMessageHandler * >( Qt4xHb::itemGetPtr( n ) )
#define PQABSTRACTURIRESOLVER( n )                          static_cast< QAbstractUriResolver * >( Qt4xHb::itemGetPtr( n ) )
#define PQABSTRACTXMLNODEMODEL( n )                         static_cast< QAbstractXmlNodeModel * >( Qt4xHb::itemGetPtr( n ) )
#define PQABSTRACTXMLRECEIVER( n )                          static_cast< QAbstractXmlReceiver * >( Qt4xHb::itemGetPtr( n ) )
#define PQSIMPLEXMLNODEMODEL( n )                           static_cast< QSimpleXmlNodeModel * >( Qt4xHb::itemGetPtr( n ) )
#define PQSOURCELOCATION( n )                               static_cast< QSourceLocation * >( Qt4xHb::itemGetPtr( n ) )
#define PQXMLFORMATTER( n )                                 static_cast< QXmlFormatter * >( Qt4xHb::itemGetPtr( n ) )
#define PQXMLITEM( n )                                      static_cast< QXmlItem * >( Qt4xHb::itemGetPtr( n ) )
#define PQXMLNAME( n )                                      static_cast< QXmlName * >( Qt4xHb::itemGetPtr( n ) )
#define PQXMLNAMEPOOL( n )                                  static_cast< QXmlNamePool * >( Qt4xHb::itemGetPtr( n ) )
#define PQXMLNODEMODELINDEX( n )                            static_cast< QXmlNodeModelIndex * >( Qt4xHb::itemGetPtr( n ) )
#define PQXMLQUERY( n )                                     static_cast< QXmlQuery * >( Qt4xHb::itemGetPtr( n ) )
#define PQXMLRESULTITEMS( n )                               static_cast< QXmlResultItems * >( Qt4xHb::itemGetPtr( n ) )
#define PQXMLSCHEMA( n )                                    static_cast< QXmlSchema * >( Qt4xHb::itemGetPtr( n ) )
#define PQXMLSCHEMAVALIDATOR( n )                           static_cast< QXmlSchemaValidator * >( Qt4xHb::itemGetPtr( n ) )
#define PQXMLSERIALIZER( n )                                static_cast< QXmlSerializer * >( Qt4xHb::itemGetPtr( n ) )

#define OPQABSTRACTMESSAGEHANDLER( n, v )                   HB_ISNIL( n ) ? v : static_cast< QAbstractMessageHandler * >( Qt4xHb::itemGetPtr( n ) )
#define OPQABSTRACTURIRESOLVER( n, v )                      HB_ISNIL( n ) ? v : static_cast< QAbstractUriResolver * >( Qt4xHb::itemGetPtr( n ) )
#define OPQABSTRACTXMLNODEMODEL( n, v )                     HB_ISNIL( n ) ? v : static_cast< QAbstractXmlNodeModel * >( Qt4xHb::itemGetPtr( n ) )
#define OPQABSTRACTXMLRECEIVER( n, v )                      HB_ISNIL( n ) ? v : static_cast< QAbstractXmlReceiver * >( Qt4xHb::itemGetPtr( n ) )
#define OPQSIMPLEXMLNODEMODEL( n, v )                       HB_ISNIL( n ) ? v : static_cast< QSimpleXmlNodeModel * >( Qt4xHb::itemGetPtr( n ) )
#define OPQSOURCELOCATION( n, v )                           HB_ISNIL( n ) ? v : static_cast< QSourceLocation * >( Qt4xHb::itemGetPtr( n ) )
#define OPQXMLFORMATTER( n, v )                             HB_ISNIL( n ) ? v : static_cast< QXmlFormatter * >( Qt4xHb::itemGetPtr( n ) )
#define OPQXMLITEM( n, v )                                  HB_ISNIL( n ) ? v : static_cast< QXmlItem * >( Qt4xHb::itemGetPtr( n ) )
#define OPQXMLNAME( n, v )                                  HB_ISNIL( n ) ? v : static_cast< QXmlName * >( Qt4xHb::itemGetPtr( n ) )
#define OPQXMLNAMEPOOL( n, v )                              HB_ISNIL( n ) ? v : static_cast< QXmlNamePool * >( Qt4xHb::itemGetPtr( n ) )
#define OPQXMLNODEMODELINDEX( n, v )                        HB_ISNIL( n ) ? v : static_cast< QXmlNodeModelIndex * >( Qt4xHb::itemGetPtr( n ) )
#define OPQXMLQUERY( n, v )                                 HB_ISNIL( n ) ? v : static_cast< QXmlQuery * >( Qt4xHb::itemGetPtr( n ) )
#define OPQXMLRESULTITEMS( n, v )                           HB_ISNIL( n ) ? v : static_cast< QXmlResultItems * >( Qt4xHb::itemGetPtr( n ) )
#define OPQXMLSCHEMA( n, v )                                HB_ISNIL( n ) ? v : static_cast< QXmlSchema * >( Qt4xHb::itemGetPtr( n ) )
#define OPQXMLSCHEMAVALIDATOR( n, v )                       HB_ISNIL( n ) ? v : static_cast< QXmlSchemaValidator * >( Qt4xHb::itemGetPtr( n ) )
#define OPQXMLSERIALIZER( n, v )                            HB_ISNIL( n ) ? v : static_cast< QXmlSerializer * >( Qt4xHb::itemGetPtr( n ) )

#endif /* QT4XHB_MACROS_QTXMLPATTERNS_H */
