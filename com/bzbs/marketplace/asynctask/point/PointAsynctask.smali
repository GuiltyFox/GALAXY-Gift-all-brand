.class public Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;
.super Lcom/bzbs/marketplace/asynctask/BaseAsyntask;
.source "PointAsynctask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$CallbackList;,
        Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$CallbackModel;
    }
.end annotation


# instance fields
.field private URL:Ljava/lang/String;

.field private activity:Landroid/app/Activity;

.field private callbackList:Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$CallbackList;

.field private callbackModel:Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$CallbackModel;

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

    .line 31
    invoke-direct {p0}, Lcom/bzbs/marketplace/asynctask/BaseAsyntask;-><init>()V

    .line 27
    iput-boolean v0, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->isCancelRequest:Z

    .line 29
    iput-boolean v0, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->isObject:Z

    .line 32
    iput-object p1, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->activity:Landroid/app/Activity;

    .line 33
    iput-object p2, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->URL:Ljava/lang/String;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;)Z
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->isCancelRequest:Z

    return v0
.end method

.method static synthetic access$100(Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;)Z
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->isObject:Z

    return v0
.end method

.method static synthetic access$200(Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;)Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$CallbackModel;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->callbackModel:Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$CallbackModel;

    return-object v0
.end method

.method static synthetic access$300(Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;)Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$CallbackList;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->callbackList:Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$CallbackList;

    return-object v0
.end method

.method private getData(Ljava/lang/String;)V
    .registers 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 85
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->client:Lcom/loopj/android/http/AsyncHttpClient;

    .line 86
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->client:Lcom/loopj/android/http/AsyncHttpClient;

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Lcom/loopj/android/http/AsyncHttpClient;->setTimeout(I)V

    .line 87
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->client:Lcom/loopj/android/http/AsyncHttpClient;

    const/4 v1, 0x0

    const/16 v2, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->setMaxRetriesAndTimeout(II)V

    .line 88
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->client:Lcom/loopj/android/http/AsyncHttpClient;

    new-instance v1, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$1;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$1;-><init>(Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;)V

    invoke-virtual {v0, p1, v1}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 146
    return-void
.end method


# virtual methods
.method public excute()V
    .registers 2

    .prologue
    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->isObject:Z

    .line 81
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->URL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->getData(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public excuteList(Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$CallbackList;)V
    .registers 11
    .param p1, "callbackList"    # Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$CallbackList;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->callbackList:Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$CallbackList;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->isObject:Z

    .line 45
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->cacheName:Ljava/lang/String;

    if-eqz v0, :cond_30

    .line 46
    invoke-static {}, Lcom/samsung/privilege/GalaxyGift;->getDualCache()Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 48
    .local v2, "start":J
    invoke-static {}, Lcom/samsung/privilege/GalaxyGift;->getDualCache()Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    move-result-object v0

    iget-object v8, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->cacheName:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->changeCacheName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 49
    .local v1, "result":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 50
    .local v4, "end":J
    if-eqz v1, :cond_30

    .line 51
    sub-long v6, v4, v2

    .line 52
    .local v6, "time":J
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->callbackList:Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$CallbackList;

    invoke-virtual/range {v0 .. v7}, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$CallbackList;->onCache(Ljava/lang/String;JJJ)V

    .line 57
    .end local v1    # "result":Ljava/lang/String;
    .end local v2    # "start":J
    .end local v4    # "end":J
    .end local v6    # "time":J
    :cond_30
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->URL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->getData(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public excuteModel(Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$CallbackModel;)V
    .registers 11
    .param p1, "callbackModel"    # Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$CallbackModel;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->callbackModel:Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$CallbackModel;

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->isObject:Z

    .line 64
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->cacheName:Ljava/lang/String;

    if-eqz v0, :cond_30

    .line 65
    invoke-static {}, Lcom/samsung/privilege/GalaxyGift;->getDualCache()Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 67
    .local v2, "start":J
    invoke-static {}, Lcom/samsung/privilege/GalaxyGift;->getDualCache()Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    move-result-object v0

    iget-object v8, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->cacheName:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->changeCacheName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 68
    .local v1, "result":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 69
    .local v4, "end":J
    if-eqz v1, :cond_30

    .line 70
    sub-long v6, v4, v2

    .line 71
    .local v6, "time":J
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->callbackModel:Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$CallbackModel;

    invoke-virtual/range {v0 .. v7}, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$CallbackModel;->onCache(Ljava/lang/String;JJJ)V

    .line 76
    .end local v1    # "result":Ljava/lang/String;
    .end local v2    # "start":J
    .end local v4    # "end":J
    .end local v6    # "time":J
    :cond_30
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->URL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->getData(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public onCancel()V
    .registers 2

    .prologue
    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->isCancelRequest:Z

    .line 150
    return-void
.end method

.method public setCache(Ljava/lang/String;)Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;
    .registers 2
    .param p1, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->cacheName:Ljava/lang/String;

    .line 38
    return-object p0
.end method
