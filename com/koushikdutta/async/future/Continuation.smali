.class public Lcom/koushikdutta/async/future/Continuation;
.super Lcom/koushikdutta/async/future/SimpleCancellable;
.source "Continuation.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/ContinuationCallback;
.implements Lcom/koushikdutta/async/future/Cancellable;
.implements Ljava/lang/Runnable;


# instance fields
.field a:Lcom/koushikdutta/async/callback/CompletedCallback;

.field b:Ljava/lang/Runnable;

.field c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/koushikdutta/async/callback/ContinuationCallback;",
            ">;"
        }
    .end annotation
.end field

.field d:Z

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/future/Continuation;-><init>(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 3

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/future/Continuation;-><init>(Lcom/koushikdutta/async/callback/CompletedCallback;Ljava/lang/Runnable;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/callback/CompletedCallback;Ljava/lang/Runnable;)V
    .registers 4

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;-><init>()V

    .line 77
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/future/Continuation;->c:Ljava/util/LinkedList;

    .line 45
    iput-object p2, p0, Lcom/koushikdutta/async/future/Continuation;->b:Ljava/lang/Runnable;

    .line 46
    iput-object p1, p0, Lcom/koushikdutta/async/future/Continuation;->a:Lcom/koushikdutta/async/callback/CompletedCallback;

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/future/Continuation;)Z
    .registers 2

    .prologue
    .line 8
    iget-boolean v0, p0, Lcom/koushikdutta/async/future/Continuation;->j:Z

    return v0
.end method

.method static synthetic a(Lcom/koushikdutta/async/future/Continuation;Z)Z
    .registers 2

    .prologue
    .line 8
    iput-boolean p1, p0, Lcom/koushikdutta/async/future/Continuation;->j:Z

    return p1
.end method

.method private b(Lcom/koushikdutta/async/callback/ContinuationCallback;)Lcom/koushikdutta/async/callback/ContinuationCallback;
    .registers 3

    .prologue
    .line 80
    instance-of v0, p1, Lcom/koushikdutta/async/future/DependentCancellable;

    if-eqz v0, :cond_a

    move-object v0, p1

    .line 81
    check-cast v0, Lcom/koushikdutta/async/future/DependentCancellable;

    .line 82
    invoke-interface {v0, p0}, Lcom/koushikdutta/async/future/DependentCancellable;->a(Lcom/koushikdutta/async/future/Cancellable;)Lcom/koushikdutta/async/future/DependentCancellable;

    .line 84
    :cond_a
    return-object p1
.end method

.method static synthetic b(Lcom/koushikdutta/async/future/Continuation;)V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/koushikdutta/async/future/Continuation;->h()V

    return-void
.end method

.method private g()Lcom/koushikdutta/async/callback/CompletedCallback;
    .registers 2

    .prologue
    .line 50
    new-instance v0, Lcom/koushikdutta/async/future/Continuation$2;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/future/Continuation$2;-><init>(Lcom/koushikdutta/async/future/Continuation;)V

    return-object v0
.end method

.method private h()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 112
    iget-boolean v0, p0, Lcom/koushikdutta/async/future/Continuation;->i:Z

    if-eqz v0, :cond_6

    .line 136
    :cond_5
    :goto_5
    return-void

    .line 114
    :cond_6
    :goto_6
    iget-object v0, p0, Lcom/koushikdutta/async/future/Continuation;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_41

    iget-boolean v0, p0, Lcom/koushikdutta/async/future/Continuation;->j:Z

    if-nez v0, :cond_41

    invoke-virtual {p0}, Lcom/koushikdutta/async/future/Continuation;->isDone()Z

    move-result v0

    if-nez v0, :cond_41

    invoke-virtual {p0}, Lcom/koushikdutta/async/future/Continuation;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_41

    .line 115
    iget-object v0, p0, Lcom/koushikdutta/async/future/Continuation;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/callback/ContinuationCallback;

    .line 117
    const/4 v1, 0x1

    :try_start_27
    iput-boolean v1, p0, Lcom/koushikdutta/async/future/Continuation;->i:Z

    .line 118
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/koushikdutta/async/future/Continuation;->j:Z

    .line 119
    invoke-direct {p0}, Lcom/koushikdutta/async/future/Continuation;->g()Lcom/koushikdutta/async/callback/CompletedCallback;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/koushikdutta/async/callback/ContinuationCallback;->a(Lcom/koushikdutta/async/future/Continuation;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_33} :catch_36
    .catchall {:try_start_27 .. :try_end_33} :catchall_3d

    .line 125
    iput-boolean v2, p0, Lcom/koushikdutta/async/future/Continuation;->i:Z

    goto :goto_6

    .line 121
    :catch_36
    move-exception v0

    .line 122
    :try_start_37
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/future/Continuation;->a(Ljava/lang/Exception;)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3d

    .line 125
    iput-boolean v2, p0, Lcom/koushikdutta/async/future/Continuation;->i:Z

    goto :goto_6

    :catchall_3d
    move-exception v0

    iput-boolean v2, p0, Lcom/koushikdutta/async/future/Continuation;->i:Z

    throw v0

    .line 128
    :cond_41
    iget-boolean v0, p0, Lcom/koushikdutta/async/future/Continuation;->j:Z

    if-nez v0, :cond_5

    .line 130
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/Continuation;->isDone()Z

    move-result v0

    if-nez v0, :cond_5

    .line 132
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/Continuation;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/future/Continuation;->a(Ljava/lang/Exception;)V

    goto :goto_5
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/callback/ContinuationCallback;)Lcom/koushikdutta/async/future/Continuation;
    .registers 4

    .prologue
    .line 88
    iget-object v0, p0, Lcom/koushikdutta/async/future/Continuation;->c:Ljava/util/LinkedList;

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/future/Continuation;->b(Lcom/koushikdutta/async/callback/ContinuationCallback;)Lcom/koushikdutta/async/callback/ContinuationCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 89
    return-object p0
.end method

.method public a(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 2

    .prologue
    .line 16
    iput-object p1, p0, Lcom/koushikdutta/async/future/Continuation;->a:Lcom/koushikdutta/async/callback/CompletedCallback;

    .line 17
    return-void
.end method

.method public a(Lcom/koushikdutta/async/future/Continuation;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 3

    .prologue
    .line 160
    invoke-virtual {p0, p2}, Lcom/koushikdutta/async/future/Continuation;->a(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 161
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/Continuation;->c()Lcom/koushikdutta/async/future/Continuation;

    .line 162
    return-void
.end method

.method a(Ljava/lang/Exception;)V
    .registers 3

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/Continuation;->f()Z

    move-result v0

    if-nez v0, :cond_7

    .line 75
    :cond_6
    :goto_6
    return-void

    .line 73
    :cond_7
    iget-object v0, p0, Lcom/koushikdutta/async/future/Continuation;->a:Lcom/koushikdutta/async/callback/CompletedCallback;

    if-eqz v0, :cond_6

    .line 74
    iget-object v0, p0, Lcom/koushikdutta/async/future/Continuation;->a:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->a(Ljava/lang/Exception;)V

    goto :goto_6
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 140
    invoke-super {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;->b()Z

    move-result v0

    if-nez v0, :cond_8

    .line 141
    const/4 v0, 0x0

    .line 146
    :goto_7
    return v0

    .line 143
    :cond_8
    iget-object v0, p0, Lcom/koushikdutta/async/future/Continuation;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_11

    .line 144
    iget-object v0, p0, Lcom/koushikdutta/async/future/Continuation;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 146
    :cond_11
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public c()Lcom/koushikdutta/async/future/Continuation;
    .registers 3

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/koushikdutta/async/future/Continuation;->d:Z

    if-eqz v0, :cond_d

    .line 152
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/future/Continuation;->d:Z

    .line 154
    invoke-direct {p0}, Lcom/koushikdutta/async/future/Continuation;->h()V

    .line 155
    return-object p0
.end method

.method public run()V
    .registers 1

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/Continuation;->c()Lcom/koushikdutta/async/future/Continuation;

    .line 167
    return-void
.end method
