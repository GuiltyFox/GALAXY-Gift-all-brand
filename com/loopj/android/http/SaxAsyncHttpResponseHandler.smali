.class public abstract Lcom/loopj/android/http/SaxAsyncHttpResponseHandler;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "SaxAsyncHttpResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/xml/sax/helpers/DefaultHandler;",
        ">",
        "Lcom/loopj/android/http/AsyncHttpResponseHandler;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SaxAsyncHttpRH"


# instance fields
.field private handler:Lorg/xml/sax/helpers/DefaultHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/xml/sax/helpers/DefaultHandler;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loopj/android/http/SaxAsyncHttpResponseHandler;->handler:Lorg/xml/sax/helpers/DefaultHandler;

    .line 76
    if-nez p1, :cond_11

    .line 77
    new-instance v0, Ljava/lang/Error;

    const-string/jumbo v1, "null instance of <T extends DefaultHandler> passed to constructor"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_11
    iput-object p1, p0, Lcom/loopj/android/http/SaxAsyncHttpResponseHandler;->handler:Lorg/xml/sax/helpers/DefaultHandler;

    .line 80
    return-void
.end method


# virtual methods
.method protected getResponseData(Lcz/msebera/android/httpclient/HttpEntity;)[B
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 92
    if-eqz p1, :cond_33

    .line 93
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 95
    if-eqz v3, :cond_33

    .line 97
    :try_start_9
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/loopj/android/http/SaxAsyncHttpResponseHandler;->handler:Lorg/xml/sax/helpers/DefaultHandler;

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 101
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/loopj/android/http/SaxAsyncHttpResponseHandler;->getCharset()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_23
    .catch Lorg/xml/sax/SAXException; {:try_start_9 .. :try_end_23} :catch_34
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_9 .. :try_end_23} :catch_4c
    .catchall {:try_start_9 .. :try_end_23} :catchall_64

    .line 102
    :try_start_23
    new-instance v4, Lorg/xml/sax/InputSource;

    invoke-direct {v4, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v0, v4}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_2b
    .catch Lorg/xml/sax/SAXException; {:try_start_23 .. :try_end_2b} :catch_77
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_23 .. :try_end_2b} :catch_75
    .catchall {:try_start_23 .. :try_end_2b} :catchall_73

    .line 108
    invoke-static {v3}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 109
    if-eqz v1, :cond_33

    .line 111
    :try_start_30
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_6f

    .line 117
    :cond_33
    :goto_33
    return-object v2

    .line 103
    :catch_34
    move-exception v0

    move-object v1, v2

    .line 104
    :goto_36
    :try_start_36
    sget-object v4, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string/jumbo v5, "SaxAsyncHttpRH"

    const-string/jumbo v6, "getResponseData exception"

    invoke-interface {v4, v5, v6, v0}, Lcom/loopj/android/http/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_41
    .catchall {:try_start_36 .. :try_end_41} :catchall_73

    .line 108
    invoke-static {v3}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 109
    if-eqz v1, :cond_33

    .line 111
    :try_start_46
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_33

    .line 112
    :catch_4a
    move-exception v0

    goto :goto_33

    .line 105
    :catch_4c
    move-exception v0

    move-object v1, v2

    .line 106
    :goto_4e
    :try_start_4e
    sget-object v4, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string/jumbo v5, "SaxAsyncHttpRH"

    const-string/jumbo v6, "getResponseData exception"

    invoke-interface {v4, v5, v6, v0}, Lcom/loopj/android/http/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_59
    .catchall {:try_start_4e .. :try_end_59} :catchall_73

    .line 108
    invoke-static {v3}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 109
    if-eqz v1, :cond_33

    .line 111
    :try_start_5e
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_62

    goto :goto_33

    .line 112
    :catch_62
    move-exception v0

    goto :goto_33

    .line 108
    :catchall_64
    move-exception v0

    move-object v1, v2

    :goto_66
    invoke-static {v3}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 109
    if-eqz v1, :cond_6e

    .line 111
    :try_start_6b
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_71

    .line 112
    :cond_6e
    :goto_6e
    throw v0

    :catch_6f
    move-exception v0

    goto :goto_33

    :catch_71
    move-exception v1

    goto :goto_6e

    .line 108
    :catchall_73
    move-exception v0

    goto :goto_66

    .line 105
    :catch_75
    move-exception v0

    goto :goto_4e

    .line 103
    :catch_77
    move-exception v0

    goto :goto_36
.end method

.method public abstract onFailure(I[Lcz/msebera/android/httpclient/Header;Lorg/xml/sax/helpers/DefaultHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lcz/msebera/android/httpclient/Header;",
            "TT;)V"
        }
    .end annotation
.end method

.method public onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 6

    .prologue
    .line 146
    iget-object v0, p0, Lcom/loopj/android/http/SaxAsyncHttpResponseHandler;->handler:Lorg/xml/sax/helpers/DefaultHandler;

    invoke-virtual {p0, p1, p2, v0}, Lcom/loopj/android/http/SaxAsyncHttpResponseHandler;->onFailure(I[Lcz/msebera/android/httpclient/Header;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 147
    return-void
.end method

.method public abstract onSuccess(I[Lcz/msebera/android/httpclient/Header;Lorg/xml/sax/helpers/DefaultHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lcz/msebera/android/httpclient/Header;",
            "TT;)V"
        }
    .end annotation
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 5

    .prologue
    .line 131
    iget-object v0, p0, Lcom/loopj/android/http/SaxAsyncHttpResponseHandler;->handler:Lorg/xml/sax/helpers/DefaultHandler;

    invoke-virtual {p0, p1, p2, v0}, Lcom/loopj/android/http/SaxAsyncHttpResponseHandler;->onSuccess(I[Lcz/msebera/android/httpclient/Header;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 132
    return-void
.end method
