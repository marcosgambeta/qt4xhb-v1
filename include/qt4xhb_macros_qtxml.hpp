/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QT4XHB_MACROS_QTXML_H
#define QT4XHB_MACROS_QTXML_H

#define ISQDOMATTR(n)                                       Qt4xHb::isObjectDerivedFrom(n, "QDomAttr")
#define ISQDOMCDATASECTION(n)                               Qt4xHb::isObjectDerivedFrom(n, "QDomCDATASection")
#define ISQDOMCHARACTERDATA(n)                              Qt4xHb::isObjectDerivedFrom(n, "QDomCharacterData")
#define ISQDOMCOMMENT(n)                                    Qt4xHb::isObjectDerivedFrom(n, "QDomComment")
#define ISQDOMDOCUMENT(n)                                   Qt4xHb::isObjectDerivedFrom(n, "QDomDocument")
#define ISQDOMDOCUMENTFRAGMENT(n)                           Qt4xHb::isObjectDerivedFrom(n, "QDomDocumentFragment")
#define ISQDOMDOCUMENTTYPE(n)                               Qt4xHb::isObjectDerivedFrom(n, "QDomDocumentType")
#define ISQDOMELEMENT(n)                                    Qt4xHb::isObjectDerivedFrom(n, "QDomElement")
#define ISQDOMENTITY(n)                                     Qt4xHb::isObjectDerivedFrom(n, "QDomEntity")
#define ISQDOMENTITYREFERENCE(n)                            Qt4xHb::isObjectDerivedFrom(n, "QDomEntityReference")
#define ISQDOMIMPLEMENTATION(n)                             Qt4xHb::isObjectDerivedFrom(n, "QDomImplementation")
#define ISQDOMNAMEDNODEMAP(n)                               Qt4xHb::isObjectDerivedFrom(n, "QDomNamedNodeMap")
#define ISQDOMNODE(n)                                       Qt4xHb::isObjectDerivedFrom(n, "QDomNode")
#define ISQDOMNODELIST(n)                                   Qt4xHb::isObjectDerivedFrom(n, "QDomNodeList")
#define ISQDOMNOTATION(n)                                   Qt4xHb::isObjectDerivedFrom(n, "QDomNotation")
#define ISQDOMPROCESSINGINSTRUCTION(n)                      Qt4xHb::isObjectDerivedFrom(n, "QDomProcessingInstruction")
#define ISQDOMTEXT(n)                                       Qt4xHb::isObjectDerivedFrom(n, "QDomText")
#define ISQXMLATTRIBUTES(n)                                 Qt4xHb::isObjectDerivedFrom(n, "QXmlAttributes")
#define ISQXMLCONTENTHANDLER(n)                             Qt4xHb::isObjectDerivedFrom(n, "QXmlContentHandler")
#define ISQXMLDECLHANDLER(n)                                Qt4xHb::isObjectDerivedFrom(n, "QXmlDeclHandler")
#define ISQXMLDEFAULTHANDLER(n)                             Qt4xHb::isObjectDerivedFrom(n, "QXmlDefaultHandler")
#define ISQXMLDTDHANDLER(n)                                 Qt4xHb::isObjectDerivedFrom(n, "QXmlDTDHandler")
#define ISQXMLENTITYRESOLVER(n)                             Qt4xHb::isObjectDerivedFrom(n, "QXmlEntityResolver")
#define ISQXMLERRORHANDLER(n)                               Qt4xHb::isObjectDerivedFrom(n, "QXmlErrorHandler")
#define ISQXMLINPUTSOURCE(n)                                Qt4xHb::isObjectDerivedFrom(n, "QXmlInputSource")
#define ISQXMLLEXICALHANDLER(n)                             Qt4xHb::isObjectDerivedFrom(n, "QXmlLexicalHandler")
#define ISQXMLLOCATOR(n)                                    Qt4xHb::isObjectDerivedFrom(n, "QXmlLocator")
#define ISQXMLNAMESPACESUPPORT(n)                           Qt4xHb::isObjectDerivedFrom(n, "QXmlNamespaceSupport")
#define ISQXMLPARSEEXCEPTION(n)                             Qt4xHb::isObjectDerivedFrom(n, "QXmlParseException")
#define ISQXMLREADER(n)                                     Qt4xHb::isObjectDerivedFrom(n, "QXmlReader")
#define ISQXMLSIMPLEREADER(n)                               Qt4xHb::isObjectDerivedFrom(n, "QXmlSimpleReader")

#define PQDOMATTR(n)                                        static_cast<QDomAttr*>(Qt4xHb::itemGetPtr(n))
#define PQDOMCDATASECTION(n)                                static_cast<QDomCDATASection*>(Qt4xHb::itemGetPtr(n))
#define PQDOMCHARACTERDATA(n)                               static_cast<QDomCharacterData*>(Qt4xHb::itemGetPtr(n))
#define PQDOMCOMMENT(n)                                     static_cast<QDomComment*>(Qt4xHb::itemGetPtr(n))
#define PQDOMDOCUMENT(n)                                    static_cast<QDomDocument*>(Qt4xHb::itemGetPtr(n))
#define PQDOMDOCUMENTFRAGMENT(n)                            static_cast<QDomDocumentFragment*>(Qt4xHb::itemGetPtr(n))
#define PQDOMDOCUMENTTYPE(n)                                static_cast<QDomDocumentType*>(Qt4xHb::itemGetPtr(n))
#define PQDOMELEMENT(n)                                     static_cast<QDomElement*>(Qt4xHb::itemGetPtr(n))
#define PQDOMENTITY(n)                                      static_cast<QDomEntity*>(Qt4xHb::itemGetPtr(n))
#define PQDOMENTITYREFERENCE(n)                             static_cast<QDomEntityReference*>(Qt4xHb::itemGetPtr(n))
#define PQDOMIMPLEMENTATION(n)                              static_cast<QDomImplementation*>(Qt4xHb::itemGetPtr(n))
#define PQDOMNAMEDNODEMAP(n)                                static_cast<QDomNamedNodeMap*>(Qt4xHb::itemGetPtr(n))
#define PQDOMNODE(n)                                        static_cast<QDomNode*>(Qt4xHb::itemGetPtr(n))
#define PQDOMNODELIST(n)                                    static_cast<QDomNodeList*>(Qt4xHb::itemGetPtr(n))
#define PQDOMNOTATION(n)                                    static_cast<QDomNotation*>(Qt4xHb::itemGetPtr(n))
#define PQDOMPROCESSINGINSTRUCTION(n)                       static_cast<QDomProcessingInstruction*>(Qt4xHb::itemGetPtr(n))
#define PQDOMTEXT(n)                                        static_cast<QDomText*>(Qt4xHb::itemGetPtr(n))
#define PQXMLATTRIBUTES(n)                                  static_cast<QXmlAttributes*>(Qt4xHb::itemGetPtr(n))
#define PQXMLCONTENTHANDLER(n)                              static_cast<QXmlContentHandler*>(Qt4xHb::itemGetPtr(n))
#define PQXMLDECLHANDLER(n)                                 static_cast<QXmlDeclHandler*>(Qt4xHb::itemGetPtr(n))
#define PQXMLDEFAULTHANDLER(n)                              static_cast<QXmlDefaultHandler*>(Qt4xHb::itemGetPtr(n))
#define PQXMLDTDHANDLER(n)                                  static_cast<QXmlDTDHandler*>(Qt4xHb::itemGetPtr(n))
#define PQXMLENTITYRESOLVER(n)                              static_cast<QXmlEntityResolver*>(Qt4xHb::itemGetPtr(n))
#define PQXMLERRORHANDLER(n)                                static_cast<QXmlErrorHandler*>(Qt4xHb::itemGetPtr(n))
#define PQXMLINPUTSOURCE(n)                                 static_cast<QXmlInputSource*>(Qt4xHb::itemGetPtr(n))
#define PQXMLLEXICALHANDLER(n)                              static_cast<QXmlLexicalHandler*>(Qt4xHb::itemGetPtr(n))
#define PQXMLLOCATOR(n)                                     static_cast<QXmlLocator*>(Qt4xHb::itemGetPtr(n))
#define PQXMLNAMESPACESUPPORT(n)                            static_cast<QXmlNamespaceSupport*>(Qt4xHb::itemGetPtr(n))
#define PQXMLPARSEEXCEPTION(n)                              static_cast<QXmlParseException*>(Qt4xHb::itemGetPtr(n))
#define PQXMLREADER(n)                                      static_cast<QXmlReader*>(Qt4xHb::itemGetPtr(n))
#define PQXMLSIMPLEREADER(n)                                static_cast<QXmlSimpleReader*>(Qt4xHb::itemGetPtr(n))

#define OPQDOMATTR(n, v)                                    HB_ISNIL(n) ? v : static_cast<QDomAttr*>(Qt4xHb::itemGetPtr(n))
#define OPQDOMCDATASECTION(n, v)                            HB_ISNIL(n) ? v : static_cast<QDomCDATASection*>(Qt4xHb::itemGetPtr(n))
#define OPQDOMCHARACTERDATA(n, v)                           HB_ISNIL(n) ? v : static_cast<QDomCharacterData*>(Qt4xHb::itemGetPtr(n))
#define OPQDOMCOMMENT(n, v)                                 HB_ISNIL(n) ? v : static_cast<QDomComment*>(Qt4xHb::itemGetPtr(n))
#define OPQDOMDOCUMENT(n, v)                                HB_ISNIL(n) ? v : static_cast<QDomDocument*>(Qt4xHb::itemGetPtr(n))
#define OPQDOMDOCUMENTFRAGMENT(n, v)                        HB_ISNIL(n) ? v : static_cast<QDomDocumentFragment*>(Qt4xHb::itemGetPtr(n))
#define OPQDOMDOCUMENTTYPE(n, v)                            HB_ISNIL(n) ? v : static_cast<QDomDocumentType*>(Qt4xHb::itemGetPtr(n))
#define OPQDOMELEMENT(n, v)                                 HB_ISNIL(n) ? v : static_cast<QDomElement*>(Qt4xHb::itemGetPtr(n))
#define OPQDOMENTITY(n, v)                                  HB_ISNIL(n) ? v : static_cast<QDomEntity*>(Qt4xHb::itemGetPtr(n))
#define OPQDOMENTITYREFERENCE(n, v)                         HB_ISNIL(n) ? v : static_cast<QDomEntityReference*>(Qt4xHb::itemGetPtr(n))
#define OPQDOMIMPLEMENTATION(n, v)                          HB_ISNIL(n) ? v : static_cast<QDomImplementation*>(Qt4xHb::itemGetPtr(n))
#define OPQDOMNAMEDNODEMAP(n, v)                            HB_ISNIL(n) ? v : static_cast<QDomNamedNodeMap*>(Qt4xHb::itemGetPtr(n))
#define OPQDOMNODE(n, v)                                    HB_ISNIL(n) ? v : static_cast<QDomNode*>(Qt4xHb::itemGetPtr(n))
#define OPQDOMNODELIST(n, v)                                HB_ISNIL(n) ? v : static_cast<QDomNodeList*>(Qt4xHb::itemGetPtr(n))
#define OPQDOMNOTATION(n, v)                                HB_ISNIL(n) ? v : static_cast<QDomNotation*>(Qt4xHb::itemGetPtr(n))
#define OPQDOMPROCESSINGINSTRUCTION(n, v)                   HB_ISNIL(n) ? v : static_cast<QDomProcessingInstruction*>(Qt4xHb::itemGetPtr(n))
#define OPQDOMTEXT(n, v)                                    HB_ISNIL(n) ? v : static_cast<QDomText*>(Qt4xHb::itemGetPtr(n))
#define OPQXMLATTRIBUTES(n, v)                              HB_ISNIL(n) ? v : static_cast<QXmlAttributes*>(Qt4xHb::itemGetPtr(n))
#define OPQXMLCONTENTHANDLER(n, v)                          HB_ISNIL(n) ? v : static_cast<QXmlContentHandler*>(Qt4xHb::itemGetPtr(n))
#define OPQXMLDECLHANDLER(n, v)                             HB_ISNIL(n) ? v : static_cast<QXmlDeclHandler*>(Qt4xHb::itemGetPtr(n))
#define OPQXMLDEFAULTHANDLER(n, v)                          HB_ISNIL(n) ? v : static_cast<QXmlDefaultHandler*>(Qt4xHb::itemGetPtr(n))
#define OPQXMLDTDHANDLER(n, v)                              HB_ISNIL(n) ? v : static_cast<QXmlDTDHandler*>(Qt4xHb::itemGetPtr(n))
#define OPQXMLENTITYRESOLVER(n, v)                          HB_ISNIL(n) ? v : static_cast<QXmlEntityResolver*>(Qt4xHb::itemGetPtr(n))
#define OPQXMLERRORHANDLER(n, v)                            HB_ISNIL(n) ? v : static_cast<QXmlErrorHandler*>(Qt4xHb::itemGetPtr(n))
#define OPQXMLINPUTSOURCE(n, v)                             HB_ISNIL(n) ? v : static_cast<QXmlInputSource*>(Qt4xHb::itemGetPtr(n))
#define OPQXMLLEXICALHANDLER(n, v)                          HB_ISNIL(n) ? v : static_cast<QXmlLexicalHandler*>(Qt4xHb::itemGetPtr(n))
#define OPQXMLLOCATOR(n, v)                                 HB_ISNIL(n) ? v : static_cast<QXmlLocator*>(Qt4xHb::itemGetPtr(n))
#define OPQXMLNAMESPACESUPPORT(n, v)                        HB_ISNIL(n) ? v : static_cast<QXmlNamespaceSupport*>(Qt4xHb::itemGetPtr(n))
#define OPQXMLPARSEEXCEPTION(n, v)                          HB_ISNIL(n) ? v : static_cast<QXmlParseException*>(Qt4xHb::itemGetPtr(n))
#define OPQXMLREADER(n, v)                                  HB_ISNIL(n) ? v : static_cast<QXmlReader*>(Qt4xHb::itemGetPtr(n))
#define OPQXMLSIMPLEREADER(n, v)                            HB_ISNIL(n) ? v : static_cast<QXmlSimpleReader*>(Qt4xHb::itemGetPtr(n))

#endif /* QT4XHB_MACROS_QTXML_H */
