.class public Lcom/samsung/privilege/newconcepts/utils/RESTLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "RESTLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;,
        Lcom/samsung/privilege/newconcepts/utils/RESTLoader$RESTResponse;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Lcom/samsung/privilege/newconcepts/utils/RESTLoader$RESTResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$samsung$privilege$newconcepts$utils$RESTLoader$HTTPVerb:[I = null

.field private static final STALE_DELTA:J = 0x927c0L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAction:Landroid/net/Uri;

.field private mLastLoad:J

.field private mParams:Landroid/os/Bundle;

.field private mRestResponse:Lcom/samsung/privilege/newconcepts/utils/RESTLoader$RESTResponse;

.field private mVerb:Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;


# direct methods
.method static synthetic $SWITCH_TABLE$com$samsung$privilege$newconcepts$utils$RESTLoader$HTTPVerb()[I
    .registers 3

    .prologue
    .line 32
    sget-object v0, Lcom/samsung/privilege/newconcepts/utils/RESTLoader;->$SWITCH_TABLE$com$samsung$privilege$newconcepts$utils$RESTLoader$HTTPVerb:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;->values()[Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;->DELETE:Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;

    invoke-virtual {v1}, Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_39

    :goto_15
    :try_start_15
    sget-object v1, Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;->GET:Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;

    invoke-virtual {v1}, Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_37

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;->POST:Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;

    invoke-virtual {v1}, Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_35

    :goto_27
    :try_start_27
    sget-object v1, Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;->PUT:Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;

    invoke-virtual {v1}, Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_33

    :goto_30
    sput-object v0, Lcom/samsung/privilege/newconcepts/utils/RESTLoader;->$SWITCH_TABLE$com$samsung$privilege$newconcepts$utils$RESTLoader$HTTPVerb:[I

    goto :goto_4

    :catch_33
    move-exception v1

    goto :goto_30

    :catch_35
    move-exception v1

    goto :goto_27

    :catch_37
    move-exception v1

    goto :goto_1e

    :catch_39
    move-exception v1

    goto :goto_15
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const-class v0, Lcom/samsung/privilege/newconcepts/utils/RESTLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/newconcepts/utils/RESTLoader;->TAG:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;Landroid/net/Uri;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "verb"    # Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;
    .param p3, "action"    # Landroid/net/Uri;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 81
    iput-object p2, p0, Lcom/samsung/privilege/newconcepts/utils/RESTLoader;->mVerb:Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;

    .line 82
    iput-object p3, p0, Lcom/samsung/privilege/newconcepts/utils/RESTLoader;->mAction:Landroid/net/Uri;

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "verb"    # Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;
    .param p3, "action"    # Landroid/net/Uri;
    .param p4, "params"    # Landroid/os/Bundle;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 88
    iput-object p2, p0, Lcom/samsung/privilege/newconcepts/utils/RESTLoader;->mVerb:Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;

    .line 89
    iput-object p3, p0, Lcom/samsung/privilege/newconcepts/utils/RESTLoader;->mAction:Landroid/net/Uri;

    .line 90
    iput-object p4, p0, Lcom/samsung/privilege/newconcepts/utils/RESTLoader;->mParams:Landroid/os/Bundle;

    .line 91
    return-void
.end method

.method private static attachUriWithQuery(Lorg/apache/http/client/methods/HttpRequestBase;Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 9
    .param p0, "request"    # Lorg/apache/http/client/methods/HttpRequestBase;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 241
    if-nez p2, :cond_f

    .line 244
    :try_start_2
    new-instance v3, Ljava/net/URI;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->setURI(Ljava/net/URI;)V

    .line 261
    :goto_e
    return-void

    .line 247
    :cond_f
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 250
    .local v2, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-static {p2}, Lcom/samsung/privilege/newconcepts/utils/RESTLoader;->paramsToList(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4c

    .line 254
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 255
    new-instance v3, Ljava/net/URI;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->setURI(Ljava/net/URI;)V
    :try_end_31
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_31} :catch_32

    goto :goto_e

    .line 258
    .end local v2    # "uriBuilder":Landroid/net/Uri$Builder;
    :catch_32
    move-exception v0

    .line 259
    .local v0, "e":Ljava/net/URISyntaxException;
    sget-object v3, Lcom/samsung/privilege/newconcepts/utils/RESTLoader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "URI syntax was incorrect: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 250
    .end local v0    # "e":Ljava/net/URISyntaxException;
    .restart local v2    # "uriBuilder":Landroid/net/Uri$Builder;
    :cond_4c
    :try_start_4c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/message/BasicNameValuePair;

    .line 251
    .local v1, "param":Lorg/apache/http/message/BasicNameValuePair;
    invoke-virtual {v1}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_5d
    .catch Ljava/net/URISyntaxException; {:try_start_4c .. :try_end_5d} :catch_32

    goto :goto_1b
.end method

.method private static paramsToList(Landroid/os/Bundle;)Ljava/util/List;
    .registers 7
    .param p0, "params"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 284
    .local v0, "formList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_18

    .line 293
    return-object v0

    .line 284
    :cond_18
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 285
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 290
    .local v2, "value":Ljava/lang/Object;
    if-eqz v2, :cond_11

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11
.end method

.method private static verbToString(Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;)Ljava/lang/String;
    .registers 3
    .param p0, "verb"    # Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;

    .prologue
    .line 264
    invoke-static {}, Lcom/samsung/privilege/newconcepts/utils/RESTLoader;->$SWITCH_TABLE$com$samsung$privilege$newconcepts$utils$RESTLoader$HTTPVerb()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1c

    .line 278
    const-string v0, ""

    :goto_f
    return-object v0

    .line 266
    :pswitch_10
    const-string v0, "GET"

    goto :goto_f

    .line 269
    :pswitch_13
    const-string v0, "POST"

    goto :goto_f

    .line 272
    :pswitch_16
    const-string v0, "PUT"

    goto :goto_f

    .line 275
    :pswitch_19
    const-string v0, "DELETE"

    goto :goto_f

    .line 264
    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_10
        :pswitch_13
        :pswitch_16
        :pswitch_19
    .end packed-switch
.end method


# virtual methods
.method public deliverResult(Lcom/samsung/privilege/newconcepts/utils/RESTLoader$RESTResponse;)V
    .registers 2
    .param p1, "data"    # Lcom/samsung/privilege/newconcepts/utils/RESTLoader$RESTResponse;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/samsung/privilege/newconcepts/utils/RESTLoader;->mRestResponse:Lcom/samsung/privilege/newconcepts/utils/RESTLoader$RESTResponse;

    .line 201
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 202
    return-void
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, Lcom/samsung/privilege/newconcepts/utils/RESTLoader$RESTResponse;

    invoke-virtual {p0, p1}, Lcom/samsung/privilege/newconcepts/utils/RESTLoader;->deliverResult(Lcom/samsung/privilege/newconcepts/utils/RESTLoader$RESTResponse;)V

    return-void
.end method

.method public loadInBackground()Lcom/samsung/privilege/newconcepts/utils/RESTLoader$RESTResponse;
    .registers 16

    .prologue
    .line 97
    :try_start_0
    iget-object v12, p0, Lcom/samsung/privilege/newconcepts/utils/RESTLoader;->mAction:Landroid/net/Uri;

    if-nez v12, :cond_11

    .line 98
    sget-object v12, Lcom/samsung/privilege/newconcepts/utils/RESTLoader;->TAG:Ljava/lang/String;

    const-string v13, "You did not define an action. REST call canceled."

    invoke-static {v12, v13}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v10, Lcom/samsung/privilege/newconcepts/utils/RESTLoader$RESTResponse;

    invoke-direct {v10}, Lcom/samsung/privilege/newconcepts/utils/RESTLoader$RESTResponse;-><init>()V

    .line 193
    :goto_10
    return-object v10

    .line 106
    :cond_11
    const/4 v6, 0x0

    .line 110
    .local v6, "request":Lorg/apache/http/client/methods/HttpRequestBase;
    invoke-static {}, Lcom/samsung/privilege/newconcepts/utils/RESTLoader;->$SWITCH_TABLE$com$samsung$privilege$newconcepts$utils$RESTLoader$HTTPVerb()[I

    move-result-object v12

    iget-object v13, p0, Lcom/samsung/privilege/newconcepts/utils/RESTLoader;->mVerb:Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;

    invoke-virtual {v13}, Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_14e

    .line 156
    :cond_21
    :goto_21
    if-eqz v6, :cond_146

    .line 157
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 161
    .local v1, "client":Lorg/apache/http/client/HttpClient;
    sget-object v12, Lcom/samsung/privilege/newconcepts/utils/RESTLoader;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Executing request: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, p0, Lcom/samsung/privilege/newconcepts/utils/RESTLoader;->mVerb:Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;

    invoke-static {v14}, Lcom/samsung/privilege/newconcepts/utils/RESTLoader;->verbToString(Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/samsung/privilege/newconcepts/utils/RESTLoader;->mAction:Landroid/net/Uri;

    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/privilege/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-interface {v1, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 167
    .local v7, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    .line 168
    .local v8, "responseEntity":Lorg/apache/http/HttpEntity;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    .line 169
    .local v9, "responseStatus":Lorg/apache/http/StatusLine;
    if-eqz v9, :cond_140

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    .line 172
    .local v11, "statusCode":I
    :goto_64
    new-instance v10, Lcom/samsung/privilege/newconcepts/utils/RESTLoader$RESTResponse;

    if-eqz v8, :cond_143

    invoke-static {v8}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v12

    :goto_6c
    invoke-direct {v10, v12, v11}, Lcom/samsung/privilege/newconcepts/utils/RESTLoader$RESTResponse;-><init>(Ljava/lang/String;I)V

    .line 173
    .local v10, "restResponse":Lcom/samsung/privilege/newconcepts/utils/RESTLoader$RESTResponse;
    goto :goto_10

    .line 112
    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .end local v7    # "response":Lorg/apache/http/HttpResponse;
    .end local v8    # "responseEntity":Lorg/apache/http/HttpEntity;
    .end local v9    # "responseStatus":Lorg/apache/http/StatusLine;
    .end local v10    # "restResponse":Lcom/samsung/privilege/newconcepts/utils/RESTLoader$RESTResponse;
    .end local v11    # "statusCode":I
    :pswitch_70
    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    .end local v6    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    invoke-direct {v6}, Lorg/apache/http/client/methods/HttpGet;-><init>()V

    .line 113
    .restart local v6    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    iget-object v12, p0, Lcom/samsung/privilege/newconcepts/utils/RESTLoader;->mAction:Landroid/net/Uri;

    iget-object v13, p0, Lcom/samsung/privilege/newconcepts/utils/RESTLoader;->mParams:Landroid/os/Bundle;

    invoke-static {v6, v12, v13}, Lcom/samsung/privilege/newconcepts/utils/RESTLoader;->attachUriWithQuery(Lorg/apache/http/client/methods/HttpRequestBase;Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_7c
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_7c} :catch_7d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_7c} :catch_bd
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_7c} :catch_f7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7c} :catch_131

    goto :goto_21

    .line 179
    .end local v6    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    :catch_7d
    move-exception v2

    .line 180
    .local v2, "e":Ljava/net/URISyntaxException;
    sget-object v12, Lcom/samsung/privilege/newconcepts/utils/RESTLoader;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "URI syntax was incorrect. "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, p0, Lcom/samsung/privilege/newconcepts/utils/RESTLoader;->mVerb:Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;

    invoke-static {v14}, Lcom/samsung/privilege/newconcepts/utils/RESTLoader;->verbToString(Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/samsung/privilege/newconcepts/utils/RESTLoader;->mAction:Landroid/net/Uri;

    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    new-instance v10, Lcom/samsung/privilege/newconcepts/utils/RESTLoader$RESTResponse;

    invoke-direct {v10}, Lcom/samsung/privilege/newconcepts/utils/RESTLoader$RESTResponse;-><init>()V

    goto/16 :goto_10

    .line 118
    .end local v2    # "e":Ljava/net/URISyntaxException;
    .restart local v6    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    :pswitch_af
    :try_start_af
    new-instance v6, Lorg/apache/http/client/methods/HttpDelete;

    .end local v6    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    invoke-direct {v6}, Lorg/apache/http/client/methods/HttpDelete;-><init>()V

    .line 119
    .restart local v6    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    iget-object v12, p0, Lcom/samsung/privilege/newconcepts/utils/RESTLoader;->mAction:Landroid/net/Uri;

    iget-object v13, p0, Lcom/samsung/privilege/newconcepts/utils/RESTLoader;->mParams:Landroid/os/Bundle;

    invoke-static {v6, v12, v13}, Lcom/samsung/privilege/newconcepts/utils/RESTLoader;->attachUriWithQuery(Lorg/apache/http/client/methods/HttpRequestBase;Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_bb
    .catch Ljava/net/URISyntaxException; {:try_start_af .. :try_end_bb} :catch_7d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_af .. :try_end_bb} :catch_bd
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_af .. :try_end_bb} :catch_f7
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_bb} :catch_131

    goto/16 :goto_21

    .line 183
    .end local v6    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    :catch_bd
    move-exception v2

    .line 184
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v12, Lcom/samsung/privilege/newconcepts/utils/RESTLoader;->TAG:Ljava/lang/String;

    const-string v13, "A UrlEncodedFormEntity was created with an unsupported encoding."

    invoke-static {v12, v13}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    new-instance v10, Lcom/samsung/privilege/newconcepts/utils/RESTLoader$RESTResponse;

    invoke-direct {v10}, Lcom/samsung/privilege/newconcepts/utils/RESTLoader$RESTResponse;-><init>()V

    goto/16 :goto_10

    .line 124
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v6    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    :pswitch_cc
    :try_start_cc
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    .end local v6    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    invoke-direct {v6}, Lorg/apache/http/client/methods/HttpPost;-><init>()V

    .line 125
    .restart local v6    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    new-instance v12, Ljava/net/URI;

    iget-object v13, p0, Lcom/samsung/privilege/newconcepts/utils/RESTLoader;->mAction:Landroid/net/Uri;

    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v12}, Lorg/apache/http/client/methods/HttpRequestBase;->setURI(Ljava/net/URI;)V

    .line 132
    move-object v0, v6

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    move-object v4, v0

    .line 134
    .local v4, "postRequest":Lorg/apache/http/client/methods/HttpPost;
    iget-object v12, p0, Lcom/samsung/privilege/newconcepts/utils/RESTLoader;->mParams:Landroid/os/Bundle;

    if-eqz v12, :cond_21

    .line 135
    new-instance v3, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    iget-object v12, p0, Lcom/samsung/privilege/newconcepts/utils/RESTLoader;->mParams:Landroid/os/Bundle;

    invoke-static {v12}, Lcom/samsung/privilege/newconcepts/utils/RESTLoader;->paramsToList(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v12

    invoke-direct {v3, v12}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    .line 136
    .local v3, "formEntity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    invoke-virtual {v4, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_f5
    .catch Ljava/net/URISyntaxException; {:try_start_cc .. :try_end_f5} :catch_7d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_cc .. :try_end_f5} :catch_bd
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_cc .. :try_end_f5} :catch_f7
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_f5} :catch_131

    goto/16 :goto_21

    .line 187
    .end local v3    # "formEntity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v4    # "postRequest":Lorg/apache/http/client/methods/HttpPost;
    .end local v6    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    :catch_f7
    move-exception v2

    .line 188
    .local v2, "e":Lorg/apache/http/client/ClientProtocolException;
    sget-object v12, Lcom/samsung/privilege/newconcepts/utils/RESTLoader;->TAG:Ljava/lang/String;

    const-string v13, "There was a problem when sending the request."

    invoke-static {v12, v13}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    new-instance v10, Lcom/samsung/privilege/newconcepts/utils/RESTLoader$RESTResponse;

    invoke-direct {v10}, Lcom/samsung/privilege/newconcepts/utils/RESTLoader$RESTResponse;-><init>()V

    goto/16 :goto_10

    .line 142
    .end local v2    # "e":Lorg/apache/http/client/ClientProtocolException;
    .restart local v6    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    :pswitch_106
    :try_start_106
    new-instance v6, Lorg/apache/http/client/methods/HttpPut;

    .end local v6    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    invoke-direct {v6}, Lorg/apache/http/client/methods/HttpPut;-><init>()V

    .line 143
    .restart local v6    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    new-instance v12, Ljava/net/URI;

    iget-object v13, p0, Lcom/samsung/privilege/newconcepts/utils/RESTLoader;->mAction:Landroid/net/Uri;

    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v12}, Lorg/apache/http/client/methods/HttpRequestBase;->setURI(Ljava/net/URI;)V

    .line 146
    move-object v0, v6

    check-cast v0, Lorg/apache/http/client/methods/HttpPut;

    move-object v5, v0

    .line 148
    .local v5, "putRequest":Lorg/apache/http/client/methods/HttpPut;
    iget-object v12, p0, Lcom/samsung/privilege/newconcepts/utils/RESTLoader;->mParams:Landroid/os/Bundle;

    if-eqz v12, :cond_21

    .line 149
    new-instance v3, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    iget-object v12, p0, Lcom/samsung/privilege/newconcepts/utils/RESTLoader;->mParams:Landroid/os/Bundle;

    invoke-static {v12}, Lcom/samsung/privilege/newconcepts/utils/RESTLoader;->paramsToList(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v12

    invoke-direct {v3, v12}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    .line 150
    .restart local v3    # "formEntity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    invoke-virtual {v5, v3}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_12f
    .catch Ljava/net/URISyntaxException; {:try_start_106 .. :try_end_12f} :catch_7d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_106 .. :try_end_12f} :catch_bd
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_106 .. :try_end_12f} :catch_f7
    .catch Ljava/io/IOException; {:try_start_106 .. :try_end_12f} :catch_131

    goto/16 :goto_21

    .line 191
    .end local v3    # "formEntity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v5    # "putRequest":Lorg/apache/http/client/methods/HttpPut;
    .end local v6    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    :catch_131
    move-exception v2

    .line 192
    .local v2, "e":Ljava/io/IOException;
    sget-object v12, Lcom/samsung/privilege/newconcepts/utils/RESTLoader;->TAG:Ljava/lang/String;

    const-string v13, "There was a problem when sending the request."

    invoke-static {v12, v13}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    new-instance v10, Lcom/samsung/privilege/newconcepts/utils/RESTLoader$RESTResponse;

    invoke-direct {v10}, Lcom/samsung/privilege/newconcepts/utils/RESTLoader$RESTResponse;-><init>()V

    goto/16 :goto_10

    .line 169
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v6    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local v7    # "response":Lorg/apache/http/HttpResponse;
    .restart local v8    # "responseEntity":Lorg/apache/http/HttpEntity;
    .restart local v9    # "responseStatus":Lorg/apache/http/StatusLine;
    :cond_140
    const/4 v11, 0x0

    goto/16 :goto_64

    .line 172
    .restart local v11    # "statusCode":I
    :cond_143
    const/4 v12, 0x0

    goto/16 :goto_6c

    .line 177
    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .end local v7    # "response":Lorg/apache/http/HttpResponse;
    .end local v8    # "responseEntity":Lorg/apache/http/HttpEntity;
    .end local v9    # "responseStatus":Lorg/apache/http/StatusLine;
    .end local v11    # "statusCode":I
    :cond_146
    :try_start_146
    new-instance v10, Lcom/samsung/privilege/newconcepts/utils/RESTLoader$RESTResponse;

    invoke-direct {v10}, Lcom/samsung/privilege/newconcepts/utils/RESTLoader$RESTResponse;-><init>()V
    :try_end_14b
    .catch Ljava/net/URISyntaxException; {:try_start_146 .. :try_end_14b} :catch_7d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_146 .. :try_end_14b} :catch_bd
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_146 .. :try_end_14b} :catch_f7
    .catch Ljava/io/IOException; {:try_start_146 .. :try_end_14b} :catch_131

    goto/16 :goto_10

    .line 110
    nop

    :pswitch_data_14e
    .packed-switch 0x1
        :pswitch_70
        :pswitch_cc
        :pswitch_106
        :pswitch_af
    .end packed-switch
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/samsung/privilege/newconcepts/utils/RESTLoader;->loadInBackground()Lcom/samsung/privilege/newconcepts/utils/RESTLoader$RESTResponse;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .registers 3

    .prologue
    .line 227
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onReset()V

    .line 230
    invoke-virtual {p0}, Lcom/samsung/privilege/newconcepts/utils/RESTLoader;->onStopLoading()V

    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/privilege/newconcepts/utils/RESTLoader;->mRestResponse:Lcom/samsung/privilege/newconcepts/utils/RESTLoader$RESTResponse;

    .line 236
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/privilege/newconcepts/utils/RESTLoader;->mLastLoad:J

    .line 237
    return-void
.end method

.method protected onStartLoading()V
    .registers 5

    .prologue
    .line 206
    iget-object v0, p0, Lcom/samsung/privilege/newconcepts/utils/RESTLoader;->mRestResponse:Lcom/samsung/privilege/newconcepts/utils/RESTLoader$RESTResponse;

    if-eqz v0, :cond_9

    .line 209
    iget-object v0, p0, Lcom/samsung/privilege/newconcepts/utils/RESTLoader;->mRestResponse:Lcom/samsung/privilege/newconcepts/utils/RESTLoader$RESTResponse;

    invoke-super {p0, v0}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 214
    :cond_9
    iget-object v0, p0, Lcom/samsung/privilege/newconcepts/utils/RESTLoader;->mRestResponse:Lcom/samsung/privilege/newconcepts/utils/RESTLoader$RESTResponse;

    if-eqz v0, :cond_1b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/privilege/newconcepts/utils/RESTLoader;->mLastLoad:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1e

    :cond_1b
    invoke-virtual {p0}, Lcom/samsung/privilege/newconcepts/utils/RESTLoader;->forceLoad()V

    .line 215
    :cond_1e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/privilege/newconcepts/utils/RESTLoader;->mLastLoad:J

    .line 216
    return-void
.end method

.method protected onStopLoading()V
    .registers 1

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/samsung/privilege/newconcepts/utils/RESTLoader;->cancelLoad()Z

    .line 223
    return-void
.end method
