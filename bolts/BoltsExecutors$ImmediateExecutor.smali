.class Lbolts/BoltsExecutors$ImmediateExecutor;
.super Ljava/lang/Object;
.source "BoltsExecutors.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field private a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lbolts/BoltsExecutors$ImmediateExecutor;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method synthetic constructor <init>(Lbolts/BoltsExecutors$1;)V
    .registers 2

    .prologue
    .line 62
    invoke-direct {p0}, Lbolts/BoltsExecutors$ImmediateExecutor;-><init>()V

    return-void
.end method

.method private a()I
    .registers 4

    .prologue
    .line 72
    iget-object v0, p0, Lbolts/BoltsExecutors$ImmediateExecutor;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 73
    if-nez v0, :cond_f

    .line 74
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 76
    :cond_f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 77
    iget-object v1, p0, Lbolts/BoltsExecutors$ImmediateExecutor;->a:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 78
    return v0
.end method

.method private b()I
    .registers 4

    .prologue
    .line 87
    iget-object v0, p0, Lbolts/BoltsExecutors$ImmediateExecutor;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 88
    if-nez v0, :cond_f

    .line 89
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 91
    :cond_f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 92
    if-nez v0, :cond_1d

    .line 93
    iget-object v1, p0, Lbolts/BoltsExecutors$ImmediateExecutor;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 97
    :goto_1c
    return v0

    .line 95
    :cond_1d
    iget-object v1, p0, Lbolts/BoltsExecutors$ImmediateExecutor;->a:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_1c
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 4

    .prologue
    .line 102
    invoke-direct {p0}, Lbolts/BoltsExecutors$ImmediateExecutor;->a()I

    move-result v0

    .line 104
    const/16 v1, 0xf

    if-gt v0, v1, :cond_f

    .line 105
    :try_start_8
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_17

    .line 110
    :goto_b
    invoke-direct {p0}, Lbolts/BoltsExecutors$ImmediateExecutor;->b()I

    .line 112
    return-void

    .line 107
    :cond_f
    :try_start_f
    invoke-static {}, Lbolts/BoltsExecutors;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_17

    goto :goto_b

    .line 110
    :catchall_17
    move-exception v0

    invoke-direct {p0}, Lbolts/BoltsExecutors$ImmediateExecutor;->b()I

    throw v0
.end method
