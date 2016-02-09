.class Lcom/samsung/privilege/util/http/HttpCall$1;
.super Ljava/lang/Thread;
.source "HttpCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$listener:Lcom/samsung/privilege/util/http/RQListener;

.field private final synthetic val$state:Ljava/lang/Object;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/util/http/HttpCall$1;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/privilege/util/http/HttpCall$1;->val$listener:Lcom/samsung/privilege/util/http/RQListener;

    iput-object p3, p0, Lcom/samsung/privilege/util/http/HttpCall$1;->val$state:Ljava/lang/Object;

    .line 53
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public requestGet(Ljava/lang/String;)Lcom/samsung/privilege/util/http/HttpRS;
    .registers 12
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0xc8

    .line 80
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 82
    .local v1, "httpclient":Lorg/apache/http/client/HttpClient;
    const/4 v4, 0x0

    .line 84
    .local v4, "responseString":Ljava/lang/String;
    :try_start_8
    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    new-instance v7, Ljava/net/URI;

    invoke-direct {v7, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    invoke-interface {v1, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 85
    .local v3, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    .line 86
    .local v5, "statusLine":Lorg/apache/http/StatusLine;
    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    if-ne v6, v8, :cond_39

    .line 87
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 88
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-interface {v6, v2}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 89
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 90
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_32
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_8 .. :try_end_32} :catch_4e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_32} :catch_6a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_32} :catch_86

    move-result-object v4

    .line 108
    new-instance v6, Lcom/samsung/privilege/util/http/HttpRS;

    invoke-direct {v6, v8, v4}, Lcom/samsung/privilege/util/http/HttpRS;-><init>(ILjava/lang/String;)V

    .end local v2    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    .end local v5    # "statusLine":Lorg/apache/http/StatusLine;
    :goto_38
    return-object v6

    .line 93
    .restart local v3    # "response":Lorg/apache/http/HttpResponse;
    .restart local v5    # "statusLine":Lorg/apache/http/StatusLine;
    :cond_39
    :try_start_39
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 94
    new-instance v6, Ljava/io/IOException;

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_4e
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_39 .. :try_end_4e} :catch_4e
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_4e} :catch_6a
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_4e} :catch_86

    .line 96
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    .end local v5    # "statusLine":Lorg/apache/http/StatusLine;
    :catch_4e
    move-exception v0

    .line 97
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    new-instance v6, Lcom/samsung/privilege/util/http/HttpRS;

    const/16 v7, -0x1e

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "(ClientProtocolException)"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/samsung/privilege/util/http/HttpRS;-><init>(ILjava/lang/String;)V

    goto :goto_38

    .line 98
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_6a
    move-exception v0

    .line 99
    .local v0, "e":Ljava/io/IOException;
    new-instance v6, Lcom/samsung/privilege/util/http/HttpRS;

    const/16 v7, -0x14

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "(IOException)"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/samsung/privilege/util/http/HttpRS;-><init>(ILjava/lang/String;)V

    goto :goto_38

    .line 100
    .end local v0    # "e":Ljava/io/IOException;
    :catch_86
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Lcom/samsung/privilege/util/http/HttpRS;

    const/16 v7, -0xa

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "(Exception)"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/samsung/privilege/util/http/HttpRS;-><init>(ILjava/lang/String;)V

    goto :goto_38
.end method

.method public run()V
    .registers 8

    .prologue
    .line 56
    :try_start_0
    iget-object v2, p0, Lcom/samsung/privilege/util/http/HttpCall$1;->val$url:Ljava/lang/String;

    .line 58
    .local v2, "url_encode":Ljava/lang/String;
    const-string v3, " "

    const-string v4, "%20"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 59
    const-string v3, "\""

    const-string v4, "%22"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 60
    const-string v3, "#"

    const-string v4, "%23"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 61
    const-string v3, "{"

    const-string v4, "%7B"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 62
    const-string v3, "}"

    const-string v4, "%7D"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 63
    const-string v3, "<"

    const-string v4, "%3C"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 64
    const-string v3, ">"

    const-string v4, "%3E"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 66
    const-string v3, "MyLog"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "url_encode="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0, v2}, Lcom/samsung/privilege/util/http/HttpCall$1;->requestGet(Ljava/lang/String;)Lcom/samsung/privilege/util/http/HttpRS;

    move-result-object v1

    .line 69
    .local v1, "resp":Lcom/samsung/privilege/util/http/HttpRS;
    iget-object v3, p0, Lcom/samsung/privilege/util/http/HttpCall$1;->val$listener:Lcom/samsung/privilege/util/http/RQListener;

    iget v4, v1, Lcom/samsung/privilege/util/http/HttpRS;->response_code:I

    iget-object v5, v1, Lcom/samsung/privilege/util/http/HttpRS;->response_text:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/privilege/util/http/HttpCall$1;->val$state:Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v6}, Lcom/samsung/privilege/util/http/RQListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_5d
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_5d} :catch_5e
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_5d} :catch_67
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5d} :catch_70

    .line 77
    .end local v1    # "resp":Lcom/samsung/privilege/util/http/HttpRS;
    .end local v2    # "url_encode":Ljava/lang/String;
    :goto_5d
    return-void

    .line 70
    :catch_5e
    move-exception v0

    .line 71
    .local v0, "e":Ljava/io/FileNotFoundException;
    iget-object v3, p0, Lcom/samsung/privilege/util/http/HttpCall$1;->val$listener:Lcom/samsung/privilege/util/http/RQListener;

    iget-object v4, p0, Lcom/samsung/privilege/util/http/HttpCall$1;->val$state:Ljava/lang/Object;

    invoke-interface {v3, v0, v4}, Lcom/samsung/privilege/util/http/RQListener;->onFileNotFoundException(Ljava/io/FileNotFoundException;Ljava/lang/Object;)V

    goto :goto_5d

    .line 72
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_67
    move-exception v0

    .line 73
    .local v0, "e":Ljava/net/MalformedURLException;
    iget-object v3, p0, Lcom/samsung/privilege/util/http/HttpCall$1;->val$listener:Lcom/samsung/privilege/util/http/RQListener;

    iget-object v4, p0, Lcom/samsung/privilege/util/http/HttpCall$1;->val$state:Ljava/lang/Object;

    invoke-interface {v3, v0, v4}, Lcom/samsung/privilege/util/http/RQListener;->onMalformedURLException(Ljava/net/MalformedURLException;Ljava/lang/Object;)V

    goto :goto_5d

    .line 74
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :catch_70
    move-exception v0

    .line 75
    .local v0, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/samsung/privilege/util/http/HttpCall$1;->val$listener:Lcom/samsung/privilege/util/http/RQListener;

    iget-object v4, p0, Lcom/samsung/privilege/util/http/HttpCall$1;->val$state:Ljava/lang/Object;

    invoke-interface {v3, v0, v4}, Lcom/samsung/privilege/util/http/RQListener;->onIOException(Ljava/io/IOException;Ljava/lang/Object;)V

    goto :goto_5d
.end method
