.class public Lcom/bzbs/lib/survey/http/HttpAsynctask;
.super Lcom/bzbs/lib/survey/http/BaseAsyntask;
.source "HttpAsynctask.java"


# instance fields
.field private callbackHttpAsyncTask:Lcom/bzbs/lib/survey/http/CallbackHttpAsyncTask;

.field private client:Lcom/loopj/android/http/AsyncHttpClient;

.field private isCancelRequest:Z

.field private mActivity:Landroid/app/Activity;

.field private params:Lcom/loopj/android/http/RequestParams;

.field private status:Lcom/bzbs/lib/survey/http/HttpMethod;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/bzbs/lib/survey/http/HttpMethod;)V
    .registers 6
    .param p1, "mActivity"    # Landroid/app/Activity;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/loopj/android/http/RequestParams;
    .param p4, "status"    # Lcom/bzbs/lib/survey/http/HttpMethod;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/bzbs/lib/survey/http/BaseAsyntask;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask;->isCancelRequest:Z

    .line 30
    iput-object p1, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask;->mActivity:Landroid/app/Activity;

    .line 31
    iput-object p2, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask;->url:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask;->params:Lcom/loopj/android/http/RequestParams;

    .line 33
    iput-object p4, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask;->status:Lcom/bzbs/lib/survey/http/HttpMethod;

    .line 35
    invoke-static {p1}, Lcom/bzbs/lib/survey/http/CacheLibs;->initCaching(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method private DELETE()V
    .registers 4

    .prologue
    .line 233
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask;->client:Lcom/loopj/android/http/AsyncHttpClient;

    .line 234
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask;->client:Lcom/loopj/android/http/AsyncHttpClient;

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Lcom/loopj/android/http/AsyncHttpClient;->setTimeout(I)V

    .line 235
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask;->client:Lcom/loopj/android/http/AsyncHttpClient;

    const/4 v1, 0x0

    const/16 v2, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->setMaxRetriesAndTimeout(II)V

    .line 236
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask;->client:Lcom/loopj/android/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask;->url:Ljava/lang/String;

    new-instance v2, Lcom/bzbs/lib/survey/http/HttpAsynctask$6;

    invoke-direct {v2, p0}, Lcom/bzbs/lib/survey/http/HttpAsynctask$6;-><init>(Lcom/bzbs/lib/survey/http/HttpAsynctask;)V

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->delete(Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 260
    return-void
.end method

.method private GET()V
    .registers 4

    .prologue
    .line 129
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask;->client:Lcom/loopj/android/http/AsyncHttpClient;

    .line 130
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask;->client:Lcom/loopj/android/http/AsyncHttpClient;

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Lcom/loopj/android/http/AsyncHttpClient;->setTimeout(I)V

    .line 131
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask;->client:Lcom/loopj/android/http/AsyncHttpClient;

    const/4 v1, 0x0

    const/16 v2, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->setMaxRetriesAndTimeout(II)V

    .line 132
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask;->client:Lcom/loopj/android/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask;->url:Ljava/lang/String;

    new-instance v2, Lcom/bzbs/lib/survey/http/HttpAsynctask$3;

    invoke-direct {v2, p0}, Lcom/bzbs/lib/survey/http/HttpAsynctask$3;-><init>(Lcom/bzbs/lib/survey/http/HttpAsynctask;)V

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 161
    return-void
.end method

.method private POST()V
    .registers 5

    .prologue
    .line 164
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask;->client:Lcom/loopj/android/http/AsyncHttpClient;

    .line 165
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask;->client:Lcom/loopj/android/http/AsyncHttpClient;

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Lcom/loopj/android/http/AsyncHttpClient;->setTimeout(I)V

    .line 166
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask;->client:Lcom/loopj/android/http/AsyncHttpClient;

    const/4 v1, 0x0

    const/16 v2, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->setMaxRetriesAndTimeout(II)V

    .line 167
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask;->client:Lcom/loopj/android/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask;->params:Lcom/loopj/android/http/RequestParams;

    new-instance v3, Lcom/bzbs/lib/survey/http/HttpAsynctask$4;

    invoke-direct {v3, p0}, Lcom/bzbs/lib/survey/http/HttpAsynctask$4;-><init>(Lcom/bzbs/lib/survey/http/HttpAsynctask;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 200
    return-void
.end method

.method private POST_IMAGE()V
    .registers 5

    .prologue
    .line 263
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask;->client:Lcom/loopj/android/http/AsyncHttpClient;

    .line 264
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask;->client:Lcom/loopj/android/http/AsyncHttpClient;

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Lcom/loopj/android/http/AsyncHttpClient;->setTimeout(I)V

    .line 265
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask;->client:Lcom/loopj/android/http/AsyncHttpClient;

    const/4 v1, 0x0

    const/16 v2, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->setMaxRetriesAndTimeout(II)V

    .line 266
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask;->client:Lcom/loopj/android/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask;->params:Lcom/loopj/android/http/RequestParams;

    new-instance v3, Lcom/bzbs/lib/survey/http/HttpAsynctask$7;

    invoke-direct {v3, p0}, Lcom/bzbs/lib/survey/http/HttpAsynctask$7;-><init>(Lcom/bzbs/lib/survey/http/HttpAsynctask;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 296
    return-void
.end method

.method private PUT()V
    .registers 4

    .prologue
    .line 203
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask;->client:Lcom/loopj/android/http/AsyncHttpClient;

    .line 204
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask;->client:Lcom/loopj/android/http/AsyncHttpClient;

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Lcom/loopj/android/http/AsyncHttpClient;->setTimeout(I)V

    .line 205
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask;->client:Lcom/loopj/android/http/AsyncHttpClient;

    const/4 v1, 0x0

    const/16 v2, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->setMaxRetriesAndTimeout(II)V

    .line 206
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask;->client:Lcom/loopj/android/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask;->url:Ljava/lang/String;

    new-instance v2, Lcom/bzbs/lib/survey/http/HttpAsynctask$5;

    invoke-direct {v2, p0}, Lcom/bzbs/lib/survey/http/HttpAsynctask$5;-><init>(Lcom/bzbs/lib/survey/http/HttpAsynctask;)V

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->put(Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 230
    return-void
.end method

.method static synthetic access$000(Lcom/bzbs/lib/survey/http/HttpAsynctask;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/http/HttpAsynctask;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/bzbs/lib/survey/http/HttpAsynctask;->loadCache(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/bzbs/lib/survey/http/HttpAsynctask;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/bzbs/lib/survey/http/HttpAsynctask;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/bzbs/lib/survey/http/HttpAsynctask;->isJson(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/bzbs/lib/survey/http/HttpAsynctask;)Z
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/http/HttpAsynctask;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask;->isCancelRequest:Z

    return v0
.end method

.method static synthetic access$300(Lcom/bzbs/lib/survey/http/HttpAsynctask;)Lcom/bzbs/lib/survey/http/CallbackHttpAsyncTask;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/http/HttpAsynctask;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask;->callbackHttpAsyncTask:Lcom/bzbs/lib/survey/http/CallbackHttpAsyncTask;

    return-object v0
.end method

.method private isJson(Ljava/lang/String;)Z
    .registers 6
    .param p1, "jsonCache"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 115
    :try_start_1
    new-instance v3, Lorg/json/JSONTokener;

    invoke-direct {v3, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    .line 117
    .local v1, "json":Ljava/lang/Object;
    instance-of v3, v1, Lorg/json/JSONObject;

    if-eqz v3, :cond_f

    .line 125
    .end local v1    # "json":Ljava/lang/Object;
    :cond_e
    :goto_e
    return v2

    .line 119
    .restart local v1    # "json":Ljava/lang/Object;
    :cond_f
    instance-of v3, v1, Lorg/json/JSONArray;
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_11} :catch_15

    if-nez v3, :cond_e

    .line 125
    .end local v1    # "json":Ljava/lang/Object;
    :goto_13
    const/4 v2, 0x0

    goto :goto_e

    .line 122
    :catch_15
    move-exception v0

    .line 123
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_13
.end method

.method private loadCache(Ljava/lang/String;)V
    .registers 3
    .param p1, "jsonCache"    # Ljava/lang/String;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask;->callbackHttpAsyncTask:Lcom/bzbs/lib/survey/http/CallbackHttpAsyncTask;

    if-nez v0, :cond_5

    .line 111
    :cond_4
    :goto_4
    return-void

    .line 109
    :cond_5
    invoke-direct {p0, p1}, Lcom/bzbs/lib/survey/http/HttpAsynctask;->isJson(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 110
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask;->callbackHttpAsyncTask:Lcom/bzbs/lib/survey/http/CallbackHttpAsyncTask;

    invoke-virtual {v0, p1}, Lcom/bzbs/lib/survey/http/CallbackHttpAsyncTask;->onCache(Ljava/lang/String;)V

    goto :goto_4
.end method


# virtual methods
.method public execute()V
    .registers 4

    .prologue
    .line 54
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask;->url:Ljava/lang/String;

    .line 55
    .local v0, "url_encode":Ljava/lang/String;
    const-string/jumbo v1, " "

    const-string/jumbo v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 56
    const-string/jumbo v1, "\""

    const-string/jumbo v2, "%22"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 57
    const-string/jumbo v1, "#"

    const-string/jumbo v2, "%23"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 58
    const-string/jumbo v1, "{"

    const-string/jumbo v2, "%7B"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 59
    const-string/jumbo v1, "}"

    const-string/jumbo v2, "%7D"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 60
    const-string/jumbo v1, "<"

    const-string/jumbo v2, "%3C"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 61
    const-string/jumbo v1, ">"

    const-string/jumbo v2, "%3E"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 62
    const-string/jumbo v1, "|"

    const-string/jumbo v2, "%7C"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask;->url:Ljava/lang/String;

    .line 64
    sget-object v1, Lcom/bzbs/lib/survey/http/HttpAsynctask$8;->$SwitchMap$com$bzbs$lib$survey$http$HttpMethod:[I

    iget-object v2, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask;->status:Lcom/bzbs/lib/survey/http/HttpMethod;

    invoke-virtual {v2}, Lcom/bzbs/lib/survey/http/HttpMethod;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_8a

    .line 103
    :goto_61
    return-void

    .line 66
    :pswitch_62
    iget-object v1, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask;->cacheName:Ljava/lang/String;

    new-instance v2, Lcom/bzbs/lib/survey/http/HttpAsynctask$1;

    invoke-direct {v2, p0}, Lcom/bzbs/lib/survey/http/HttpAsynctask$1;-><init>(Lcom/bzbs/lib/survey/http/HttpAsynctask;)V

    invoke-static {v1, v2}, Lcom/bzbs/lib/survey/http/CacheLibs;->getObject(Ljava/lang/String;Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerGet;)V

    .line 77
    invoke-direct {p0}, Lcom/bzbs/lib/survey/http/HttpAsynctask;->GET()V

    goto :goto_61

    .line 80
    :pswitch_70
    iget-object v1, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask;->cacheName:Ljava/lang/String;

    new-instance v2, Lcom/bzbs/lib/survey/http/HttpAsynctask$2;

    invoke-direct {v2, p0}, Lcom/bzbs/lib/survey/http/HttpAsynctask$2;-><init>(Lcom/bzbs/lib/survey/http/HttpAsynctask;)V

    invoke-static {v1, v2}, Lcom/bzbs/lib/survey/http/CacheLibs;->getObject(Ljava/lang/String;Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerGet;)V

    .line 91
    invoke-direct {p0}, Lcom/bzbs/lib/survey/http/HttpAsynctask;->POST()V

    goto :goto_61

    .line 94
    :pswitch_7e
    invoke-direct {p0}, Lcom/bzbs/lib/survey/http/HttpAsynctask;->PUT()V

    goto :goto_61

    .line 97
    :pswitch_82
    invoke-direct {p0}, Lcom/bzbs/lib/survey/http/HttpAsynctask;->DELETE()V

    goto :goto_61

    .line 100
    :pswitch_86
    invoke-direct {p0}, Lcom/bzbs/lib/survey/http/HttpAsynctask;->POST_IMAGE()V

    goto :goto_61

    .line 64
    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_62
        :pswitch_70
        :pswitch_7e
        :pswitch_82
        :pswitch_86
    .end packed-switch
.end method

.method public execute(Lcom/bzbs/lib/survey/http/CallbackHttpAsyncTask;)V
    .registers 2
    .param p1, "callbackHttpAsyncTask"    # Lcom/bzbs/lib/survey/http/CallbackHttpAsyncTask;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask;->callbackHttpAsyncTask:Lcom/bzbs/lib/survey/http/CallbackHttpAsyncTask;

    .line 50
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/http/HttpAsynctask;->execute()V

    .line 51
    return-void
.end method

.method public onCancel()V
    .registers 2

    .prologue
    .line 299
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask;->isCancelRequest:Z

    .line 300
    return-void
.end method

.method public setCache()Lcom/bzbs/lib/survey/http/HttpAsynctask;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/bzbs/lib/survey/http/HttpAsynctask;->setCache(Ljava/lang/String;)Lcom/bzbs/lib/survey/http/HttpAsynctask;

    move-result-object v0

    return-object v0
.end method

.method public setCache(Ljava/lang/String;)Lcom/bzbs/lib/survey/http/HttpAsynctask;
    .registers 2
    .param p1, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask;->cacheName:Ljava/lang/String;

    .line 40
    return-object p0
.end method
