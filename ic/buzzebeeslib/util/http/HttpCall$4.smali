.class Lic/buzzebeeslib/util/http/HttpCall$4;
.super Ljava/lang/Thread;
.source "HttpCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/util/http/HttpCall;->RQ_DELETE(Ljava/lang/String;Ljava/util/ArrayList;Lic/buzzebeeslib/util/http/RQListener;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$listener:Lic/buzzebeeslib/util/http/RQListener;

.field private final synthetic val$state:Ljava/lang/Object;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lic/buzzebeeslib/util/http/RQListener;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/util/http/HttpCall$4;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lic/buzzebeeslib/util/http/HttpCall$4;->val$listener:Lic/buzzebeeslib/util/http/RQListener;

    iput-object p3, p0, Lic/buzzebeeslib/util/http/HttpCall$4;->val$state:Ljava/lang/Object;

    .line 298
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 301
    :try_start_0
    iget-object v4, p0, Lic/buzzebeeslib/util/http/HttpCall$4;->val$url:Ljava/lang/String;

    .line 303
    .local v4, "url_encode":Ljava/lang/String;
    const-string v5, " "

    const-string v6, "%20"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 304
    const-string v5, "\""

    const-string v6, "%22"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 305
    const-string v5, "#"

    const-string v6, "%23"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 306
    const-string v5, "{"

    const-string v6, "%7B"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 307
    const-string v5, "}"

    const-string v6, "%7D"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 308
    const-string v5, "<"

    const-string v6, "%3C"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 309
    const-string v5, ">"

    const-string v6, "%3E"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 311
    const-string v5, "MyLog"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "url_encode="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    new-instance v3, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v3, v4}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 316
    .local v3, "method":Lorg/apache/http/client/methods/HttpDelete;
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 317
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    invoke-interface {v0, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 318
    .local v2, "http_response":Lorg/apache/http/HttpResponse;
    const-string v5, "MyLog"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "(http_response|getStatusCode)="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v5, p0, Lic/buzzebeeslib/util/http/HttpCall$4;->val$listener:Lic/buzzebeeslib/util/http/RQListener;

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    invoke-static {v2}, Lic/buzzebeeslib/util/http/HttpUtil;->getResponseBody(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lic/buzzebeeslib/util/http/HttpCall$4;->val$state:Ljava/lang/Object;

    invoke-interface {v5, v6, v7, v8}, Lic/buzzebeeslib/util/http/RQListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_8b
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_8b} :catch_8c
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_8b} :catch_95
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8b} :catch_9e

    .line 327
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .end local v2    # "http_response":Lorg/apache/http/HttpResponse;
    .end local v3    # "method":Lorg/apache/http/client/methods/HttpDelete;
    .end local v4    # "url_encode":Ljava/lang/String;
    :goto_8b
    return-void

    .line 320
    :catch_8c
    move-exception v1

    .line 321
    .local v1, "e":Ljava/io/FileNotFoundException;
    iget-object v5, p0, Lic/buzzebeeslib/util/http/HttpCall$4;->val$listener:Lic/buzzebeeslib/util/http/RQListener;

    iget-object v6, p0, Lic/buzzebeeslib/util/http/HttpCall$4;->val$state:Ljava/lang/Object;

    invoke-interface {v5, v1, v6}, Lic/buzzebeeslib/util/http/RQListener;->onFileNotFoundException(Ljava/io/FileNotFoundException;Ljava/lang/Object;)V

    goto :goto_8b

    .line 322
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_95
    move-exception v1

    .line 323
    .local v1, "e":Ljava/net/MalformedURLException;
    iget-object v5, p0, Lic/buzzebeeslib/util/http/HttpCall$4;->val$listener:Lic/buzzebeeslib/util/http/RQListener;

    iget-object v6, p0, Lic/buzzebeeslib/util/http/HttpCall$4;->val$state:Ljava/lang/Object;

    invoke-interface {v5, v1, v6}, Lic/buzzebeeslib/util/http/RQListener;->onMalformedURLException(Ljava/net/MalformedURLException;Ljava/lang/Object;)V

    goto :goto_8b

    .line 324
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :catch_9e
    move-exception v1

    .line 325
    .local v1, "e":Ljava/io/IOException;
    iget-object v5, p0, Lic/buzzebeeslib/util/http/HttpCall$4;->val$listener:Lic/buzzebeeslib/util/http/RQListener;

    iget-object v6, p0, Lic/buzzebeeslib/util/http/HttpCall$4;->val$state:Ljava/lang/Object;

    invoke-interface {v5, v1, v6}, Lic/buzzebeeslib/util/http/RQListener;->onIOException(Ljava/io/IOException;Ljava/lang/Object;)V

    goto :goto_8b
.end method
