.class public Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;
.super Lcom/bzbs/marketplace/asynctask/BaseAsyntask;
.source "PointAsynctask.java"


# instance fields
.field private b:Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$CallbackModel;

.field private c:Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$CallbackList;

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
    iput-boolean v0, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->f:Z

    .line 29
    iput-boolean v0, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->h:Z

    .line 32
    iput-object p1, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->e:Landroid/app/Activity;

    .line 33
    iput-object p2, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->g:Ljava/lang/String;

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;)Z
    .registers 2

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;)Z
    .registers 2

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->h:Z

    return v0
.end method

.method static synthetic c(Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;)Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$CallbackModel;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->b:Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$CallbackModel;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 85
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->d:Lcom/loopj/android/http/AsyncHttpClient;

    .line 86
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->d:Lcom/loopj/android/http/AsyncHttpClient;

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Lcom/loopj/android/http/AsyncHttpClient;->setTimeout(I)V

    .line 87
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->d:Lcom/loopj/android/http/AsyncHttpClient;

    const/4 v1, 0x0

    const/16 v2, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->setMaxRetriesAndTimeout(II)V

    .line 88
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->d:Lcom/loopj/android/http/AsyncHttpClient;

    new-instance v1, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$1;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$1;-><init>(Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;)V

    invoke-virtual {v0, p1, v1}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 146
    return-void
.end method

.method static synthetic d(Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;)Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$CallbackList;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->c:Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$CallbackList;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$CallbackModel;)V
    .registers 10

    .prologue
    .line 61
    iput-object p1, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->b:Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$CallbackModel;

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->h:Z

    .line 64
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->a:Ljava/lang/String;

    if-eqz v0, :cond_30

    .line 65
    invoke-static {}, Lcom/samsung/privilege/GalaxyGift;->a()Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 67
    invoke-static {}, Lcom/samsung/privilege/GalaxyGift;->a()Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 69
    if-eqz v1, :cond_30

    .line 70
    sub-long v6, v4, v2

    .line 71
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->b:Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$CallbackModel;

    invoke-virtual/range {v0 .. v7}, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$CallbackModel;->a(Ljava/lang/String;JJJ)V

    .line 76
    :cond_30
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->g:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->c(Ljava/lang/String;)V

    .line 77
    return-void
.end method
