.class public Lcom/samsung/privilege/util/http/HttpCall;
.super Ljava/lang/Object;
.source "HttpCall.java"


# static fields
.field private static httpclient_RQ_GET2:Lorg/apache/http/client/HttpClient;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 114
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    sput-object v0, Lcom/samsung/privilege/util/http/HttpCall;->httpclient_RQ_GET2:Lorg/apache/http/client/HttpClient;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static RQ_DELETE(Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V
    .registers 5
    .param p0, "url"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/samsung/privilege/util/http/RQListener;
    .param p3, "state"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/privilege/bean/InputItem;",
            ">;",
            "Lcom/samsung/privilege/util/http/RQListener;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 304
    .local p1, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/InputItem;>;"
    new-instance v0, Lcom/samsung/privilege/util/http/HttpCall$4;

    invoke-direct {v0, p0, p2, p3}, Lcom/samsung/privilege/util/http/HttpCall$4;-><init>(Ljava/lang/String;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    .line 335
    invoke-virtual {v0}, Lcom/samsung/privilege/util/http/HttpCall$4;->start()V

    .line 336
    return-void
.end method

.method public static RQ_GET(Ljava/lang/String;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V
    .registers 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "listener"    # Lcom/samsung/privilege/util/http/RQListener;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 53
    new-instance v0, Lcom/samsung/privilege/util/http/HttpCall$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/privilege/util/http/HttpCall$1;-><init>(Ljava/lang/String;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    .line 111
    invoke-virtual {v0}, Lcom/samsung/privilege/util/http/HttpCall$1;->start()V

    .line 112
    return-void
.end method

.method public static RQ_GET2(Ljava/lang/String;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V
    .registers 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "listener"    # Lcom/samsung/privilege/util/http/RQListener;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 128
    new-instance v0, Lcom/samsung/privilege/util/http/HttpCall$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/privilege/util/http/HttpCall$2;-><init>(Ljava/lang/String;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    .line 185
    invoke-virtual {v0}, Lcom/samsung/privilege/util/http/HttpCall$2;->start()V

    .line 186
    return-void
.end method

.method public static RQ_GET2_CANCEL()V
    .registers 1

    .prologue
    .line 117
    sget-object v0, Lcom/samsung/privilege/util/http/HttpCall;->httpclient_RQ_GET2:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_10

    .line 119
    :try_start_4
    sget-object v0, Lcom/samsung/privilege/util/http/HttpCall;->httpclient_RQ_GET2:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_11

    .line 123
    :goto_d
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/privilege/util/http/HttpCall;->httpclient_RQ_GET2:Lorg/apache/http/client/HttpClient;

    .line 125
    :cond_10
    return-void

    .line 120
    :catch_11
    move-exception v0

    goto :goto_d
.end method

.method public static RQ_GET_CACHE(Ljava/lang/String;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "listener"    # Lcom/samsung/privilege/util/http/RQListener;
    .param p2, "state"    # Ljava/lang/Object;
    .param p3, "cache_name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-string v0, "RQ_GET_CACHE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RQ_GET_CACHE="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {p0, p1, p2}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method public static RQ_POST(Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V
    .registers 5
    .param p0, "url"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/samsung/privilege/util/http/RQListener;
    .param p3, "state"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/privilege/bean/InputItem;",
            ">;",
            "Lcom/samsung/privilege/util/http/RQListener;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 189
    .local p1, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/InputItem;>;"
    new-instance v0, Lcom/samsung/privilege/util/http/HttpCall$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/privilege/util/http/HttpCall$3;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    .line 300
    invoke-virtual {v0}, Lcom/samsung/privilege/util/http/HttpCall$3;->start()V

    .line 301
    return-void
.end method

.method public static RQ_POST_APACHE(Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V
    .registers 10
    .param p0, "url"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/samsung/privilege/util/http/RQListener;
    .param p3, "state"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/privilege/bean/InputItem;",
            ">;",
            "Lcom/samsung/privilege/util/http/RQListener;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 340
    .local p1, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/InputItem;>;"
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 341
    .local v0, "httpclient":Lorg/apache/http/client/HttpClient;
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "http://www.yoursite.com/script.php"

    invoke-direct {v1, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 345
    .local v1, "httppost":Lorg/apache/http/client/methods/HttpPost;
    :try_start_c
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 346
    .local v2, "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "id"

    const-string v5, "12345"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "stringdata"

    const-string v5, "AndDev is Cool!"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    new-instance v3, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v3, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 351
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_35
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_c .. :try_end_35} :catch_38
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_35} :catch_36

    .line 357
    .end local v2    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :goto_35
    return-void

    .line 354
    :catch_36
    move-exception v3

    goto :goto_35

    .line 352
    :catch_38
    move-exception v3

    goto :goto_35
.end method

.method static synthetic access$0()Lorg/apache/http/client/HttpClient;
    .registers 1

    .prologue
    .line 114
    sget-object v0, Lcom/samsung/privilege/util/http/HttpCall;->httpclient_RQ_GET2:Lorg/apache/http/client/HttpClient;

    return-object v0
.end method

.method static synthetic access$1(Lorg/apache/http/client/HttpClient;)V
    .registers 1

    .prologue
    .line 114
    sput-object p0, Lcom/samsung/privilege/util/http/HttpCall;->httpclient_RQ_GET2:Lorg/apache/http/client/HttpClient;

    return-void
.end method
