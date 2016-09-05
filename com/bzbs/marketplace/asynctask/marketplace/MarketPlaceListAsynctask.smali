.class public Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;
.super Lcom/bzbs/marketplace/asynctask/BaseAsyntask;
.source "MarketPlaceListAsynctask.java"


# instance fields
.field private b:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask$CallbackModel;

.field private c:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask$CallbackList;

.field private d:Lcom/loopj/android/http/AsyncHttpClient;

.field private e:Landroid/app/Activity;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Lcom/bzbs/marketplace/asynctask/BaseAsyntask;-><init>()V

    .line 27
    iput-boolean v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;->f:Z

    .line 29
    iput-boolean v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;->h:Z

    .line 32
    iput-object p1, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;->e:Landroid/app/Activity;

    .line 33
    iput-object p2, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;->g:Ljava/lang/String;

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;)Z
    .registers 2

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;)Z
    .registers 2

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;->h:Z

    return v0
.end method

.method static synthetic c(Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;)Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask$CallbackModel;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;->b:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask$CallbackModel;

    return-object v0
.end method

.method static synthetic d(Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;)Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask$CallbackList;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;->c:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask$CallbackList;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 85
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;->d:Lcom/loopj/android/http/AsyncHttpClient;

    .line 86
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;->d:Lcom/loopj/android/http/AsyncHttpClient;

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Lcom/loopj/android/http/AsyncHttpClient;->setTimeout(I)V

    .line 87
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;->d:Lcom/loopj/android/http/AsyncHttpClient;

    const/4 v1, 0x0

    const/16 v2, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->setMaxRetriesAndTimeout(II)V

    .line 88
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;->d:Lcom/loopj/android/http/AsyncHttpClient;

    new-instance v1, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask$1;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask$1;-><init>(Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;)V

    invoke-virtual {v0, p1, v1}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 145
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;->f:Z

    .line 149
    return-void
.end method

.method public a(Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask$CallbackList;)V
    .registers 10

    .prologue
    .line 42
    iput-object p1, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;->c:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask$CallbackList;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;->h:Z

    .line 45
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;->a:Ljava/lang/String;

    if-eqz v0, :cond_30

    .line 46
    invoke-static {}, Lcom/samsung/privilege/GalaxyGift;->a()Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 48
    invoke-static {}, Lcom/samsung/privilege/GalaxyGift;->a()Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 50
    if-eqz v1, :cond_30

    .line 51
    sub-long v6, v4, v2

    .line 52
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;->c:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask$CallbackList;

    invoke-virtual/range {v0 .. v7}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask$CallbackList;->a(Ljava/lang/String;JJJ)V

    .line 57
    :cond_30
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;->g:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;->d(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public c(Ljava/lang/String;)Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;
    .registers 2

    .prologue
    .line 37
    iput-object p1, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;->a:Ljava/lang/String;

    .line 38
    return-object p0
.end method
