.class public Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;
.super Lcom/bzbs/marketplace/asynctask/BaseAsyntask;
.source "FriendWinnerAsynctask.java"


# instance fields
.field private b:Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask$CallbackModel;

.field private c:Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask$CallbackList;

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

    .line 30
    invoke-direct {p0}, Lcom/bzbs/marketplace/asynctask/BaseAsyntask;-><init>()V

    .line 26
    iput-boolean v0, p0, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;->f:Z

    .line 28
    iput-boolean v0, p0, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;->h:Z

    .line 31
    iput-object p1, p0, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;->e:Landroid/app/Activity;

    .line 32
    iput-object p2, p0, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;->g:Ljava/lang/String;

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;)Z
    .registers 2

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;)Z
    .registers 2

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;->h:Z

    return v0
.end method

.method static synthetic c(Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;)Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask$CallbackModel;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;->b:Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask$CallbackModel;

    return-object v0
.end method

.method static synthetic d(Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;)Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask$CallbackList;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;->c:Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask$CallbackList;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 84
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;->d:Lcom/loopj/android/http/AsyncHttpClient;

    .line 85
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;->d:Lcom/loopj/android/http/AsyncHttpClient;

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Lcom/loopj/android/http/AsyncHttpClient;->setTimeout(I)V

    .line 86
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;->d:Lcom/loopj/android/http/AsyncHttpClient;

    const/4 v1, 0x0

    const/16 v2, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->setMaxRetriesAndTimeout(II)V

    .line 87
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;->d:Lcom/loopj/android/http/AsyncHttpClient;

    new-instance v1, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask$1;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask$1;-><init>(Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;)V

    invoke-virtual {v0, p1, v1}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 147
    return-void
.end method


# virtual methods
.method public a(Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask$CallbackList;)V
    .registers 10

    .prologue
    .line 41
    iput-object p1, p0, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;->c:Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask$CallbackList;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;->h:Z

    .line 44
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;->a:Ljava/lang/String;

    if-eqz v0, :cond_30

    .line 45
    invoke-static {}, Lcom/samsung/privilege/GalaxyGift;->a()Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 47
    invoke-static {}, Lcom/samsung/privilege/GalaxyGift;->a()Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 49
    if-eqz v1, :cond_30

    .line 50
    sub-long v6, v4, v2

    .line 51
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;->c:Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask$CallbackList;

    invoke-virtual/range {v0 .. v7}, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask$CallbackList;->a(Ljava/lang/String;JJJ)V

    .line 56
    :cond_30
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;->g:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;->d(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public c(Ljava/lang/String;)Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;
    .registers 2

    .prologue
    .line 36
    iput-object p1, p0, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;->a:Ljava/lang/String;

    .line 37
    return-object p0
.end method
