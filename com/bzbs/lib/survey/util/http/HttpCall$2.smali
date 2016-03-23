.class final Lcom/bzbs/lib/survey/util/http/HttpCall$2;
.super Ljava/lang/Thread;
.source "HttpCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/http/HttpCall;->RQ_GET2(Ljava/lang/String;Lcom/bzbs/lib/survey/util/http/RQListener;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/bzbs/lib/survey/util/http/RQListener;

.field final synthetic val$state:Ljava/lang/Object;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bzbs/lib/survey/util/http/RQListener;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 126
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/http/HttpCall$2;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/bzbs/lib/survey/util/http/HttpCall$2;->val$listener:Lcom/bzbs/lib/survey/util/http/RQListener;

    iput-object p3, p0, Lcom/bzbs/lib/survey/util/http/HttpCall$2;->val$state:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public requestGet(Ljava/lang/String;)Lcom/bzbs/lib/survey/util/http/HttpRS;
    .registers 11
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

    .line 153
    # getter for: Lcom/bzbs/lib/survey/util/http/HttpCall;->httpclient_RQ_GET2:Lorg/apache/http/client/HttpClient;
    invoke-static {}, Lcom/bzbs/lib/survey/util/http/HttpCall;->access$000()Lorg/apache/http/client/HttpClient;

    move-result-object v5

    if-nez v5, :cond_10

    .line 154
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    # setter for: Lcom/bzbs/lib/survey/util/http/HttpCall;->httpclient_RQ_GET2:Lorg/apache/http/client/HttpClient;
    invoke-static {v5}, Lcom/bzbs/lib/survey/util/http/HttpCall;->access$002(Lorg/apache/http/client/HttpClient;)Lorg/apache/http/client/HttpClient;

    .line 157
    :cond_10
    const/4 v3, 0x0

    .line 159
    .local v3, "responseString":Ljava/lang/String;
    :try_start_11
    # getter for: Lcom/bzbs/lib/survey/util/http/HttpCall;->httpclient_RQ_GET2:Lorg/apache/http/client/HttpClient;
    invoke-static {}, Lcom/bzbs/lib/survey/util/http/HttpCall;->access$000()Lorg/apache/http/client/HttpClient;

    move-result-object v5

    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    new-instance v7, Ljava/net/URI;

    invoke-direct {v7, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    invoke-interface {v5, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 160
    .local v2, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    .line 161
    .local v4, "statusLine":Lorg/apache/http/StatusLine;
    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    if-ne v5, v8, :cond_46

    .line 162
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 163
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-interface {v5, v1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 164
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 165
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_3f
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_11 .. :try_end_3f} :catch_5b
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_3f} :catch_7d
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_3f} :catch_9d
    .catchall {:try_start_11 .. :try_end_3f} :catchall_7b

    move-result-object v3

    .line 180
    new-instance v5, Lcom/bzbs/lib/survey/util/http/HttpRS;

    invoke-direct {v5, v8, v3}, Lcom/bzbs/lib/survey/util/http/HttpRS;-><init>(ILjava/lang/String;)V

    .end local v1    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "response":Lorg/apache/http/HttpResponse;
    .end local v4    # "statusLine":Lorg/apache/http/StatusLine;
    :goto_45
    return-object v5

    .line 168
    .restart local v2    # "response":Lorg/apache/http/HttpResponse;
    .restart local v4    # "statusLine":Lorg/apache/http/StatusLine;
    :cond_46
    :try_start_46
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 169
    new-instance v5, Ljava/io/IOException;

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_5b
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_46 .. :try_end_5b} :catch_5b
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_5b} :catch_7d
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_5b} :catch_9d
    .catchall {:try_start_46 .. :try_end_5b} :catchall_7b

    .line 171
    .end local v2    # "response":Lorg/apache/http/HttpResponse;
    .end local v4    # "statusLine":Lorg/apache/http/StatusLine;
    :catch_5b
    move-exception v0

    .line 172
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    :try_start_5c
    new-instance v5, Lcom/bzbs/lib/survey/util/http/HttpRS;

    const/4 v6, -0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "(ClientProtocolException)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/bzbs/lib/survey/util/http/HttpRS;-><init>(ILjava/lang/String;)V
    :try_end_7a
    .catchall {:try_start_5c .. :try_end_7a} :catchall_7b

    goto :goto_45

    .line 177
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catchall_7b
    move-exception v5

    throw v5

    .line 173
    :catch_7d
    move-exception v0

    .line 174
    .local v0, "e":Ljava/io/IOException;
    :try_start_7e
    new-instance v5, Lcom/bzbs/lib/survey/util/http/HttpRS;

    const/4 v6, -0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "(IOException)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/bzbs/lib/survey/util/http/HttpRS;-><init>(ILjava/lang/String;)V

    goto :goto_45

    .line 175
    .end local v0    # "e":Ljava/io/IOException;
    :catch_9d
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Lcom/bzbs/lib/survey/util/http/HttpRS;

    const/4 v6, -0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "(Exception)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/bzbs/lib/survey/util/http/HttpRS;-><init>(ILjava/lang/String;)V
    :try_end_bc
    .catchall {:try_start_7e .. :try_end_bc} :catchall_7b

    goto :goto_45
.end method

.method public run()V
    .registers 8

    .prologue
    .line 129
    :try_start_0
    iget-object v2, p0, Lcom/bzbs/lib/survey/util/http/HttpCall$2;->val$url:Ljava/lang/String;

    .line 131
    .local v2, "url_encode":Ljava/lang/String;
    const-string/jumbo v3, " "

    const-string/jumbo v4, "%20"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 132
    const-string/jumbo v3, "\""

    const-string/jumbo v4, "%22"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 133
    const-string/jumbo v3, "#"

    const-string/jumbo v4, "%23"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 134
    const-string/jumbo v3, "{"

    const-string/jumbo v4, "%7B"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 135
    const-string/jumbo v3, "}"

    const-string/jumbo v4, "%7D"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 136
    const-string/jumbo v3, "<"

    const-string/jumbo v4, "%3C"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 137
    const-string/jumbo v3, ">"

    const-string/jumbo v4, "%3E"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 139
    const-string/jumbo v3, "MyLog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "url_encode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0, v2}, Lcom/bzbs/lib/survey/util/http/HttpCall$2;->requestGet(Ljava/lang/String;)Lcom/bzbs/lib/survey/util/http/HttpRS;

    move-result-object v1

    .line 142
    .local v1, "resp":Lcom/bzbs/lib/survey/util/http/HttpRS;
    iget-object v3, p0, Lcom/bzbs/lib/survey/util/http/HttpCall$2;->val$listener:Lcom/bzbs/lib/survey/util/http/RQListener;

    iget v4, v1, Lcom/bzbs/lib/survey/util/http/HttpRS;->response_code:I

    iget-object v5, v1, Lcom/bzbs/lib/survey/util/http/HttpRS;->response_text:Ljava/lang/String;

    iget-object v6, p0, Lcom/bzbs/lib/survey/util/http/HttpCall$2;->val$state:Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v6}, Lcom/bzbs/lib/survey/util/http/RQListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_71
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_71} :catch_72
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_71} :catch_7b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_71} :catch_84

    .line 150
    .end local v1    # "resp":Lcom/bzbs/lib/survey/util/http/HttpRS;
    .end local v2    # "url_encode":Ljava/lang/String;
    :goto_71
    return-void

    .line 143
    :catch_72
    move-exception v0

    .line 144
    .local v0, "e":Ljava/io/FileNotFoundException;
    iget-object v3, p0, Lcom/bzbs/lib/survey/util/http/HttpCall$2;->val$listener:Lcom/bzbs/lib/survey/util/http/RQListener;

    iget-object v4, p0, Lcom/bzbs/lib/survey/util/http/HttpCall$2;->val$state:Ljava/lang/Object;

    invoke-interface {v3, v0, v4}, Lcom/bzbs/lib/survey/util/http/RQListener;->onFileNotFoundException(Ljava/io/FileNotFoundException;Ljava/lang/Object;)V

    goto :goto_71

    .line 145
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_7b
    move-exception v0

    .line 146
    .local v0, "e":Ljava/net/MalformedURLException;
    iget-object v3, p0, Lcom/bzbs/lib/survey/util/http/HttpCall$2;->val$listener:Lcom/bzbs/lib/survey/util/http/RQListener;

    iget-object v4, p0, Lcom/bzbs/lib/survey/util/http/HttpCall$2;->val$state:Ljava/lang/Object;

    invoke-interface {v3, v0, v4}, Lcom/bzbs/lib/survey/util/http/RQListener;->onMalformedURLException(Ljava/net/MalformedURLException;Ljava/lang/Object;)V

    goto :goto_71

    .line 147
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :catch_84
    move-exception v0

    .line 148
    .local v0, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/bzbs/lib/survey/util/http/HttpCall$2;->val$listener:Lcom/bzbs/lib/survey/util/http/RQListener;

    iget-object v4, p0, Lcom/bzbs/lib/survey/util/http/HttpCall$2;->val$state:Ljava/lang/Object;

    invoke-interface {v3, v0, v4}, Lcom/bzbs/lib/survey/util/http/RQListener;->onIOException(Ljava/io/IOException;Ljava/lang/Object;)V

    goto :goto_71
.end method
