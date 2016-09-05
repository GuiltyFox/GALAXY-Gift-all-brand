.class public Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;
.super Lcom/bzbs/marketplace/asynctask/BaseAsyntask;
.source "MarketPlaceMenuAsynctask.java"


# instance fields
.field private b:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask$CallbackModel;

.field private c:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask$CallbackList;

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

    .line 32
    invoke-direct {p0}, Lcom/bzbs/marketplace/asynctask/BaseAsyntask;-><init>()V

    .line 28
    iput-boolean v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->f:Z

    .line 30
    iput-boolean v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->h:Z

    .line 33
    iput-object p1, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->e:Landroid/app/Activity;

    .line 34
    iput-object p2, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->g:Ljava/lang/String;

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;)Z
    .registers 2

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;)Z
    .registers 2

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->h:Z

    return v0
.end method

.method static synthetic c(Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;)Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask$CallbackModel;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->b:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask$CallbackModel;

    return-object v0
.end method

.method static synthetic d(Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;)Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask$CallbackList;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->c:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask$CallbackList;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 86
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->d:Lcom/loopj/android/http/AsyncHttpClient;

    .line 87
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->d:Lcom/loopj/android/http/AsyncHttpClient;

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Lcom/loopj/android/http/AsyncHttpClient;->setTimeout(I)V

    .line 88
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->d:Lcom/loopj/android/http/AsyncHttpClient;

    const/4 v1, 0x0

    const/16 v2, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->setMaxRetriesAndTimeout(II)V

    .line 89
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->d:Lcom/loopj/android/http/AsyncHttpClient;

    new-instance v1, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask$1;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask$1;-><init>(Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;)V

    invoke-virtual {v0, p1, v1}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 147
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->f:Z

    .line 151
    return-void
.end method

.method public a(Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask$CallbackList;)V
    .registers 10

    .prologue
    .line 43
    iput-object p1, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->c:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask$CallbackList;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->h:Z

    .line 46
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->a:Ljava/lang/String;

    if-eqz v0, :cond_30

    .line 47
    invoke-static {}, Lcom/samsung/privilege/GalaxyGift;->a()Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 49
    invoke-static {}, Lcom/samsung/privilege/GalaxyGift;->a()Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 51
    if-eqz v1, :cond_30

    .line 52
    sub-long v6, v4, v2

    .line 53
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->c:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask$CallbackList;

    invoke-virtual/range {v0 .. v7}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask$CallbackList;->a(Ljava/lang/String;JJJ)V

    .line 58
    :cond_30
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->g:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->d(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public c(Ljava/lang/String;)Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;
    .registers 2

    .prologue
    .line 38
    iput-object p1, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->a:Ljava/lang/String;

    .line 39
    return-object p0
.end method
