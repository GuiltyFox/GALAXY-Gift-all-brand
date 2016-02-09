.class public Lcom/samsung/privilege/util/XMLParser;
.super Ljava/lang/Object;
.source "XMLParser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method public getDomElement(Ljava/lang/String;)Lorg/w3c/dom/Document;
    .registers 10
    .param p1, "xml"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 63
    const/4 v2, 0x0

    .line 64
    .local v2, "doc":Lorg/w3c/dom/Document;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 67
    .local v1, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_6
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 69
    .local v0, "db":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v4, Lorg/xml/sax/InputSource;

    invoke-direct {v4}, Lorg/xml/sax/InputSource;-><init>()V

    .line 70
    .local v4, "is":Lorg/xml/sax/InputSource;
    new-instance v6, Ljava/io/StringReader;

    invoke-direct {v6, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 71
    invoke-virtual {v0, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    :try_end_1a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6 .. :try_end_1a} :catch_1d
    .catch Lorg/xml/sax/SAXException; {:try_start_6 .. :try_end_1a} :catch_28
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_1a} :catch_33

    move-result-object v2

    move-object v5, v2

    .line 84
    .end local v0    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "is":Lorg/xml/sax/InputSource;
    :goto_1c
    return-object v5

    .line 73
    :catch_1d
    move-exception v3

    .line 74
    .local v3, "e":Ljavax/xml/parsers/ParserConfigurationException;
    const-string v6, "Error: "

    invoke-virtual {v3}, Ljavax/xml/parsers/ParserConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    .line 76
    .end local v3    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_28
    move-exception v3

    .line 77
    .local v3, "e":Lorg/xml/sax/SAXException;
    const-string v6, "Error: "

    invoke-virtual {v3}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    .line 79
    .end local v3    # "e":Lorg/xml/sax/SAXException;
    :catch_33
    move-exception v3

    .line 80
    .local v3, "e":Ljava/io/IOException;
    const-string v6, "Error: "

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c
.end method

.method public final getElementValue(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 5
    .param p1, "elem"    # Lorg/w3c/dom/Node;

    .prologue
    .line 92
    if-eqz p1, :cond_e

    .line 93
    invoke-interface {p1}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 94
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .local v0, "child":Lorg/w3c/dom/Node;
    :goto_c
    if-nez v0, :cond_11

    .line 101
    .end local v0    # "child":Lorg/w3c/dom/Node;
    :cond_e
    const-string v1, ""

    :goto_10
    return-object v1

    .line 95
    .restart local v0    # "child":Lorg/w3c/dom/Node;
    :cond_11
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1d

    .line 96
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    .line 94
    :cond_1d
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_c
.end method

.method public getValue(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "item"    # Lorg/w3c/dom/Element;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 111
    .local v0, "n":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/util/XMLParser;->getElementValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getXmlFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 36
    const/4 v5, 0x0

    .line 40
    .local v5, "xml":Ljava/lang/String;
    :try_start_1
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 41
    .local v1, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 43
    .local v3, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {v1, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 44
    .local v4, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 45
    .local v2, "httpEntity":Lorg/apache/http/HttpEntity;
    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_16
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_16} :catch_18
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_16} :catch_1d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_16} :catch_22

    move-result-object v5

    .line 55
    .end local v1    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v2    # "httpEntity":Lorg/apache/http/HttpEntity;
    .end local v3    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v4    # "httpResponse":Lorg/apache/http/HttpResponse;
    :goto_17
    return-object v5

    .line 47
    :catch_18
    move-exception v0

    .line 48
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_17

    .line 49
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1d
    move-exception v0

    .line 50
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_17

    .line 51
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_22
    move-exception v0

    .line 52
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_17
.end method
