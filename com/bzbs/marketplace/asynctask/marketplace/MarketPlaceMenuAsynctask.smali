.class public Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;
.super Lcom/bzbs/marketplace/asynctask/BaseAsyntask;
.source "MarketPlaceMenuAsynctask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask$CallbackList;,
        Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask$CallbackModel;
    }
.end annotation


# instance fields
.field private URL:Ljava/lang/String;

.field private activity:Landroid/app/Activity;

.field private callbackList:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask$CallbackList;

.field private callbackModel:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask$CallbackModel;

.field private client:Lcom/loopj/android/http/AsyncHttpClient;

.field private isCancelRequest:Z

.field private isObject:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "URL"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Lcom/bzbs/marketplace/asynctask/BaseAsyntask;-><init>()V

    .line 28
    iput-boolean v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->isCancelRequest:Z

    .line 30
    iput-boolean v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->isObject:Z

    .line 33
    iput-object p1, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->activity:Landroid/app/Activity;

    .line 34
    iput-object p2, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->URL:Ljava/lang/String;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;)Z
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->isCancelRequest:Z

    return v0
.end method

.method static synthetic access$100(Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;)Z
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->isObject:Z

    return v0
.end method

.method static synthetic access$200(Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;)Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask$CallbackModel;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->callbackModel:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask$CallbackModel;

    return-object v0
.end method

.method static synthetic access$300(Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;)Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask$CallbackList;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->callbackList:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask$CallbackList;

    return-object v0
.end method

.method private getData(Ljava/lang/String;)V
    .registers 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 86
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->client:Lcom/loopj/android/http/AsyncHttpClient;

    .line 87
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->client:Lcom/loopj/android/http/AsyncHttpClient;

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Lcom/loopj/android/http/AsyncHttpClient;->setTimeout(I)V

    .line 88
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->client:Lcom/loopj/android/http/AsyncHttpClient;

    const/4 v1, 0x0

    const/16 v2, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->setMaxRetriesAndTimeout(II)V

    .line 89
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->client:Lcom/loopj/android/http/AsyncHttpClient;

    new-instance v1, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask$1;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask$1;-><init>(Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;)V

    invoke-virtual {v0, p1, v1}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 147
    return-void
.end method


# virtual methods
.method public excute()V
    .registers 2

    .prologue
    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->isObject:Z

    .line 82
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->URL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->getData(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public excuteList(Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask$CallbackList;)V
    .registers 11
    .param p1, "callbackList"    # Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask$CallbackList;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->callbackList:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask$CallbackList;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->isObject:Z

    .line 46
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->cacheName:Ljava/lang/String;

    if-eqz v0, :cond_30

    .line 47
    invoke-static {}, Lcom/samsung/privilege/GalaxyGift;->getDualCache()Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 49
    .local v2, "start":J
    invoke-static {}, Lcom/samsung/privilege/GalaxyGift;->getDualCache()Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    move-result-object v0

    iget-object v8, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->cacheName:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->changeCacheName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 50
    .local v1, "result":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 51
    .local v4, "end":J
    if-eqz v1, :cond_30

    .line 52
    sub-long v6, v4, v2

    .line 53
    .local v6, "time":J
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->callbackList:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask$CallbackList;

    invoke-virtual/range {v0 .. v7}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask$CallbackList;->onCache(Ljava/lang/String;JJJ)V

    .line 58
    .end local v1    # "result":Ljava/lang/String;
    .end local v2    # "start":J
    .end local v4    # "end":J
    .end local v6    # "time":J
    :cond_30
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->URL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->getData(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public excuteModel(Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask$CallbackModel;)V
    .registers 11
    .param p1, "callbackModel"    # Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask$CallbackModel;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->callbackModel:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask$CallbackModel;

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->isObject:Z

    .line 65
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->cacheName:Ljava/lang/String;

    if-eqz v0, :cond_30

    .line 66
    invoke-static {}, Lcom/samsung/privilege/GalaxyGift;->getDualCache()Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 68
    .local v2, "start":J
    invoke-static {}, Lcom/samsung/privilege/GalaxyGift;->getDualCache()Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    move-result-object v0

    iget-object v8, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->cacheName:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->changeCacheName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 69
    .local v1, "result":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 70
    .local v4, "end":J
    if-eqz v1, :cond_30

    .line 71
    sub-long v6, v4, v2

    .line 72
    .local v6, "time":J
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->callbackModel:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask$CallbackModel;

    invoke-virtual/range {v0 .. v7}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask$CallbackModel;->onCache(Ljava/lang/String;JJJ)V

    .line 77
    .end local v1    # "result":Ljava/lang/String;
    .end local v2    # "start":J
    .end local v4    # "end":J
    .end local v6    # "time":J
    :cond_30
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->URL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->getData(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public onCancel()V
    .registers 2

    .prologue
    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->isCancelRequest:Z

    .line 151
    return-void
.end method

.method public setCache(Ljava/lang/String;)Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;
    .registers 2
    .param p1, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->cacheName:Ljava/lang/String;

    .line 39
    return-object p0
.end method
