.class public Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;
.super Lcom/bzbs/marketplace/asynctask/BaseAsyntask;
.source "HttpAsynctask.java"


# instance fields
.field private callbackHttpAsyncTask:Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;

.field private client:Lcom/loopj/android/http/AsyncHttpClient;

.field private isCancelRequest:Z

.field private mActivity:Landroid/app/Activity;

.field private params:Lcom/loopj/android/http/RequestParams;

.field private status:Lcom/bzbs/marketplace/asynctask/http/HttpMethod;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/bzbs/marketplace/asynctask/http/HttpMethod;)V
    .registers 6
    .param p1, "mActivity"    # Landroid/app/Activity;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/loopj/android/http/RequestParams;
    .param p4, "status"    # Lcom/bzbs/marketplace/asynctask/http/HttpMethod;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/bzbs/marketplace/asynctask/BaseAsyntask;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->isCancelRequest:Z

    .line 27
    iput-object p1, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->mActivity:Landroid/app/Activity;

    .line 28
    iput-object p2, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->url:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->params:Lcom/loopj/android/http/RequestParams;

    .line 30
    iput-object p4, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->status:Lcom/bzbs/marketplace/asynctask/http/HttpMethod;

    .line 31
    return-void
.end method

.method private DELETE()V
    .registers 4

    .prologue
    .line 184
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->client:Lcom/loopj/android/http/AsyncHttpClient;

    .line 185
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->client:Lcom/loopj/android/http/AsyncHttpClient;

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Lcom/loopj/android/http/AsyncHttpClient;->setTimeout(I)V

    .line 186
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->client:Lcom/loopj/android/http/AsyncHttpClient;

    const/4 v1, 0x0

    const/16 v2, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->setMaxRetriesAndTimeout(II)V

    .line 187
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->client:Lcom/loopj/android/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->url:Ljava/lang/String;

    new-instance v2, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$4;

    invoke-direct {v2, p0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$4;-><init>(Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;)V

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->delete(Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 212
    return-void
.end method

.method private GET()V
    .registers 4

    .prologue
    .line 86
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->client:Lcom/loopj/android/http/AsyncHttpClient;

    .line 87
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->client:Lcom/loopj/android/http/AsyncHttpClient;

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Lcom/loopj/android/http/AsyncHttpClient;->setTimeout(I)V

    .line 88
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->client:Lcom/loopj/android/http/AsyncHttpClient;

    const/4 v1, 0x0

    const/16 v2, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->setMaxRetriesAndTimeout(II)V

    .line 89
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->client:Lcom/loopj/android/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->url:Ljava/lang/String;

    new-instance v2, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$1;

    invoke-direct {v2, p0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$1;-><init>(Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;)V

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 114
    return-void
.end method

.method private POST()V
    .registers 5

    .prologue
    .line 117
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->client:Lcom/loopj/android/http/AsyncHttpClient;

    .line 118
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->client:Lcom/loopj/android/http/AsyncHttpClient;

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Lcom/loopj/android/http/AsyncHttpClient;->setTimeout(I)V

    .line 119
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->client:Lcom/loopj/android/http/AsyncHttpClient;

    const/4 v1, 0x0

    const/16 v2, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->setMaxRetriesAndTimeout(II)V

    .line 120
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->client:Lcom/loopj/android/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->params:Lcom/loopj/android/http/RequestParams;

    new-instance v3, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$2;

    invoke-direct {v3, p0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$2;-><init>(Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 150
    return-void
.end method

.method private POST_IMAGE()V
    .registers 5

    .prologue
    .line 215
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->client:Lcom/loopj/android/http/AsyncHttpClient;

    .line 216
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->client:Lcom/loopj/android/http/AsyncHttpClient;

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Lcom/loopj/android/http/AsyncHttpClient;->setTimeout(I)V

    .line 217
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->client:Lcom/loopj/android/http/AsyncHttpClient;

    const/4 v1, 0x0

    const/16 v2, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->setMaxRetriesAndTimeout(II)V

    .line 218
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->client:Lcom/loopj/android/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->params:Lcom/loopj/android/http/RequestParams;

    new-instance v3, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$5;

    invoke-direct {v3, p0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$5;-><init>(Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 244
    return-void
.end method

.method private PUT()V
    .registers 4

    .prologue
    .line 153
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->client:Lcom/loopj/android/http/AsyncHttpClient;

    .line 154
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->client:Lcom/loopj/android/http/AsyncHttpClient;

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Lcom/loopj/android/http/AsyncHttpClient;->setTimeout(I)V

    .line 155
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->client:Lcom/loopj/android/http/AsyncHttpClient;

    const/4 v1, 0x0

    const/16 v2, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->setMaxRetriesAndTimeout(II)V

    .line 156
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->client:Lcom/loopj/android/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->url:Ljava/lang/String;

    new-instance v2, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$3;

    invoke-direct {v2, p0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$3;-><init>(Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;)V

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->put(Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 181
    return-void
.end method

.method static synthetic access$000(Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;)Z
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->isCancelRequest:Z

    return v0
.end method

.method static synthetic access$100(Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;)Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->callbackHttpAsyncTask:Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;

    return-object v0
.end method


# virtual methods
.method public excute()V
    .registers 4

    .prologue
    .line 56
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->url:Ljava/lang/String;

    .line 57
    .local v0, "url_encode":Ljava/lang/String;
    const-string/jumbo v1, " "

    const-string/jumbo v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 58
    const-string/jumbo v1, "\""

    const-string/jumbo v2, "%22"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 59
    const-string/jumbo v1, "#"

    const-string/jumbo v2, "%23"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 60
    const-string/jumbo v1, "{"

    const-string/jumbo v2, "%7B"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 61
    const-string/jumbo v1, "}"

    const-string/jumbo v2, "%7D"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 62
    const-string/jumbo v1, "<"

    const-string/jumbo v2, "%3C"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 63
    const-string/jumbo v1, ">"

    const-string/jumbo v2, "%3E"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 64
    const-string/jumbo v1, "|"

    const-string/jumbo v2, "%7C"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->url:Ljava/lang/String;

    .line 66
    sget-object v1, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$6;->$SwitchMap$com$bzbs$marketplace$asynctask$http$HttpMethod:[I

    iget-object v2, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->status:Lcom/bzbs/marketplace/asynctask/http/HttpMethod;

    invoke-virtual {v2}, Lcom/bzbs/marketplace/asynctask/http/HttpMethod;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_76

    .line 83
    :goto_61
    return-void

    .line 68
    :pswitch_62
    invoke-direct {p0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->GET()V

    goto :goto_61

    .line 71
    :pswitch_66
    invoke-direct {p0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->POST()V

    goto :goto_61

    .line 74
    :pswitch_6a
    invoke-direct {p0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->PUT()V

    goto :goto_61

    .line 77
    :pswitch_6e
    invoke-direct {p0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->DELETE()V

    goto :goto_61

    .line 80
    :pswitch_72
    invoke-direct {p0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->POST_IMAGE()V

    goto :goto_61

    .line 66
    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_62
        :pswitch_66
        :pswitch_6a
        :pswitch_6e
        :pswitch_72
    .end packed-switch
.end method

.method public excute(Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;)V
    .registers 11
    .param p1, "callbackHttpAsyncTask"    # Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->callbackHttpAsyncTask:Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;

    .line 40
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->cacheName:Ljava/lang/String;

    if-eqz v0, :cond_2c

    .line 41
    invoke-static {}, Lcom/samsung/privilege/GalaxyGift;->getDualCache()Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 43
    .local v2, "start":J
    invoke-static {}, Lcom/samsung/privilege/GalaxyGift;->getDualCache()Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    move-result-object v0

    iget-object v8, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->cacheName:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->changeCacheName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 44
    .local v1, "result":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 45
    .local v4, "end":J
    if-eqz v1, :cond_2c

    .line 46
    sub-long v6, v4, v2

    .local v6, "time":J
    move-object v0, p1

    .line 47
    invoke-virtual/range {v0 .. v7}, Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;->onCache(Ljava/lang/String;JJJ)V

    .line 52
    .end local v1    # "result":Ljava/lang/String;
    .end local v2    # "start":J
    .end local v4    # "end":J
    .end local v6    # "time":J
    :cond_2c
    invoke-virtual {p0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->excute()V

    .line 53
    return-void
.end method

.method public onCancel()V
    .registers 2

    .prologue
    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->isCancelRequest:Z

    .line 248
    return-void
.end method

.method public setCache(Ljava/lang/String;)Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;
    .registers 2
    .param p1, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->cacheName:Ljava/lang/String;

    .line 35
    return-object p0
.end method
