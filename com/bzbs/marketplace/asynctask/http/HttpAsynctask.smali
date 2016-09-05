.class public Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;
.super Lcom/bzbs/marketplace/asynctask/BaseAsyntask;
.source "HttpAsynctask.java"


# instance fields
.field private b:Lcom/loopj/android/http/AsyncHttpClient;

.field private c:Landroid/app/Activity;

.field private d:Ljava/lang/String;

.field private e:Lcom/loopj/android/http/RequestParams;

.field private f:Lcom/bzbs/marketplace/asynctask/http/HttpMethod;

.field private g:Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/bzbs/marketplace/asynctask/http/HttpMethod;)V
    .registers 6

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/bzbs/marketplace/asynctask/BaseAsyntask;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->h:Z

    .line 27
    iput-object p1, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->c:Landroid/app/Activity;

    .line 28
    iput-object p2, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->d:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->e:Lcom/loopj/android/http/RequestParams;

    .line 30
    iput-object p4, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->f:Lcom/bzbs/marketplace/asynctask/http/HttpMethod;

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;)Z
    .registers 2

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->h:Z

    return v0
.end method

.method static synthetic b(Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;)Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->g:Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;

    return-object v0
.end method

.method private c()V
    .registers 4

    .prologue
    .line 86
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->b:Lcom/loopj/android/http/AsyncHttpClient;

    .line 87
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->b:Lcom/loopj/android/http/AsyncHttpClient;

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Lcom/loopj/android/http/AsyncHttpClient;->setTimeout(I)V

    .line 88
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->b:Lcom/loopj/android/http/AsyncHttpClient;

    const/4 v1, 0x0

    const/16 v2, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->setMaxRetriesAndTimeout(II)V

    .line 89
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->b:Lcom/loopj/android/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->d:Ljava/lang/String;

    new-instance v2, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$1;

    invoke-direct {v2, p0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$1;-><init>(Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;)V

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 114
    return-void
.end method

.method private d()V
    .registers 5

    .prologue
    .line 117
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->b:Lcom/loopj/android/http/AsyncHttpClient;

    .line 118
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->b:Lcom/loopj/android/http/AsyncHttpClient;

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Lcom/loopj/android/http/AsyncHttpClient;->setTimeout(I)V

    .line 119
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->b:Lcom/loopj/android/http/AsyncHttpClient;

    const/4 v1, 0x0

    const/16 v2, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->setMaxRetriesAndTimeout(II)V

    .line 120
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->b:Lcom/loopj/android/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->e:Lcom/loopj/android/http/RequestParams;

    new-instance v3, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$2;

    invoke-direct {v3, p0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$2;-><init>(Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 150
    return-void
.end method

.method private e()V
    .registers 4

    .prologue
    .line 153
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->b:Lcom/loopj/android/http/AsyncHttpClient;

    .line 154
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->b:Lcom/loopj/android/http/AsyncHttpClient;

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Lcom/loopj/android/http/AsyncHttpClient;->setTimeout(I)V

    .line 155
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->b:Lcom/loopj/android/http/AsyncHttpClient;

    const/4 v1, 0x0

    const/16 v2, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->setMaxRetriesAndTimeout(II)V

    .line 156
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->b:Lcom/loopj/android/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->d:Ljava/lang/String;

    new-instance v2, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$3;

    invoke-direct {v2, p0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$3;-><init>(Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;)V

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->put(Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 181
    return-void
.end method

.method private f()V
    .registers 4

    .prologue
    .line 184
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->b:Lcom/loopj/android/http/AsyncHttpClient;

    .line 185
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->b:Lcom/loopj/android/http/AsyncHttpClient;

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Lcom/loopj/android/http/AsyncHttpClient;->setTimeout(I)V

    .line 186
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->b:Lcom/loopj/android/http/AsyncHttpClient;

    const/4 v1, 0x0

    const/16 v2, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->setMaxRetriesAndTimeout(II)V

    .line 187
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->b:Lcom/loopj/android/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->d:Ljava/lang/String;

    new-instance v2, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$4;

    invoke-direct {v2, p0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$4;-><init>(Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;)V

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->delete(Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 212
    return-void
.end method

.method private g()V
    .registers 5

    .prologue
    .line 215
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->b:Lcom/loopj/android/http/AsyncHttpClient;

    .line 216
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->b:Lcom/loopj/android/http/AsyncHttpClient;

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Lcom/loopj/android/http/AsyncHttpClient;->setTimeout(I)V

    .line 217
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->b:Lcom/loopj/android/http/AsyncHttpClient;

    const/4 v1, 0x0

    const/16 v2, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->setMaxRetriesAndTimeout(II)V

    .line 218
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->b:Lcom/loopj/android/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->e:Lcom/loopj/android/http/RequestParams;

    new-instance v3, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$5;

    invoke-direct {v3, p0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$5;-><init>(Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 244
    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 56
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->d:Ljava/lang/String;

    .line 57
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

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->d:Ljava/lang/String;

    .line 66
    sget-object v0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$6;->a:[I

    iget-object v1, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->f:Lcom/bzbs/marketplace/asynctask/http/HttpMethod;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/asynctask/http/HttpMethod;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_76

    .line 83
    :goto_61
    return-void

    .line 68
    :pswitch_62
    invoke-direct {p0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->c()V

    goto :goto_61

    .line 71
    :pswitch_66
    invoke-direct {p0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->d()V

    goto :goto_61

    .line 74
    :pswitch_6a
    invoke-direct {p0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->e()V

    goto :goto_61

    .line 77
    :pswitch_6e
    invoke-direct {p0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->f()V

    goto :goto_61

    .line 80
    :pswitch_72
    invoke-direct {p0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->g()V

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

.method public a(Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;)V
    .registers 10

    .prologue
    .line 39
    iput-object p1, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->g:Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;

    .line 40
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->a:Ljava/lang/String;

    if-eqz v0, :cond_2c

    .line 41
    invoke-static {}, Lcom/samsung/privilege/GalaxyGift;->a()Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 43
    invoke-static {}, Lcom/samsung/privilege/GalaxyGift;->a()Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 45
    if-eqz v1, :cond_2c

    .line 46
    sub-long v6, v4, v2

    move-object v0, p1

    .line 47
    invoke-virtual/range {v0 .. v7}, Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;->a(Ljava/lang/String;JJJ)V

    .line 52
    :cond_2c
    invoke-virtual {p0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->a()V

    .line 53
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->h:Z

    .line 248
    return-void
.end method

.method public c(Ljava/lang/String;)Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;
    .registers 2

    .prologue
    .line 34
    iput-object p1, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->a:Ljava/lang/String;

    .line 35
    return-object p0
.end method
