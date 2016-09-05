.class Lcom/bumptech/glide/load/engine/EngineRunnable;
.super Ljava/lang/Object;
.source "EngineRunnable.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/executor/Prioritized;
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/bumptech/glide/Priority;

.field private final b:Lcom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;

.field private final c:Lcom/bumptech/glide/load/engine/DecodeJob;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/DecodeJob",
            "<***>;"
        }
    .end annotation
.end field

.field private d:Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

.field private volatile e:Z


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;Lcom/bumptech/glide/load/engine/DecodeJob;Lcom/bumptech/glide/Priority;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;",
            "Lcom/bumptech/glide/load/engine/DecodeJob",
            "<***>;",
            "Lcom/bumptech/glide/Priority;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/EngineRunnable;->b:Lcom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;

    .line 39
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/EngineRunnable;->c:Lcom/bumptech/glide/load/engine/DecodeJob;

    .line 40
    sget-object v0, Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;->a:Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/EngineRunnable;->d:Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    .line 41
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/EngineRunnable;->a:Lcom/bumptech/glide/Priority;

    .line 42
    return-void
.end method

.method private a(Lcom/bumptech/glide/load/engine/Resource;)V
    .registers 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineRunnable;->b:Lcom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;->a(Lcom/bumptech/glide/load/engine/Resource;)V

    .line 86
    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .registers 3

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/EngineRunnable;->c()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 90
    sget-object v0, Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;->b:Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/EngineRunnable;->d:Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    .line 91
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineRunnable;->b:Lcom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;->b(Lcom/bumptech/glide/load/engine/EngineRunnable;)V

    .line 95
    :goto_f
    return-void

    .line 93
    :cond_10
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineRunnable;->b:Lcom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;->a(Ljava/lang/Exception;)V

    goto :goto_f
.end method

.method private c()Z
    .registers 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineRunnable;->d:Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    sget-object v1, Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;->a:Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private d()Lcom/bumptech/glide/load/engine/Resource;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/EngineRunnable;->c()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 99
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/EngineRunnable;->e()Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    .line 101
    :goto_a
    return-object v0

    :cond_b
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/EngineRunnable;->f()Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    goto :goto_a
.end method

.method private e()Lcom/bumptech/glide/load/engine/Resource;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 106
    const/4 v1, 0x0

    .line 108
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineRunnable;->c:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->a()Lcom/bumptech/glide/load/engine/Resource;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_10

    move-result-object v0

    .line 115
    :goto_7
    if-nez v0, :cond_f

    .line 116
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineRunnable;->c:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->b()Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    .line 118
    :cond_f
    return-object v0

    .line 109
    :catch_10
    move-exception v0

    .line 110
    const-string/jumbo v2, "EngineRunnable"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 111
    const-string/jumbo v2, "EngineRunnable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception decoding result from cache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    move-object v0, v1

    goto :goto_7
.end method

.method private f()Lcom/bumptech/glide/load/engine/Resource;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineRunnable;->c:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->c()Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineRunnable;->e:Z

    .line 46
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineRunnable;->c:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->d()V

    .line 47
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineRunnable;->a:Lcom/bumptech/glide/Priority;

    invoke-virtual {v0}, Lcom/bumptech/glide/Priority;->ordinal()I

    move-result v0

    return v0
.end method

.method public run()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 51
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineRunnable;->e:Z

    if-eqz v0, :cond_6

    .line 78
    :cond_5
    :goto_5
    return-void

    .line 58
    :cond_6
    :try_start_6
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/EngineRunnable;->d()Lcom/bumptech/glide/load/engine/Resource;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_14

    move-result-object v0

    .line 66
    :goto_a
    iget-boolean v2, p0, Lcom/bumptech/glide/load/engine/EngineRunnable;->e:Z

    if-eqz v2, :cond_2c

    .line 67
    if-eqz v0, :cond_5

    .line 68
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/Resource;->d()V

    goto :goto_5

    .line 59
    :catch_14
    move-exception v0

    .line 60
    const-string/jumbo v2, "EngineRunnable"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 61
    const-string/jumbo v2, "EngineRunnable"

    const-string/jumbo v3, "Exception decoding"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_28
    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 63
    goto :goto_a

    .line 73
    :cond_2c
    if-nez v0, :cond_32

    .line 74
    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/engine/EngineRunnable;->a(Ljava/lang/Exception;)V

    goto :goto_5

    .line 76
    :cond_32
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/EngineRunnable;->a(Lcom/bumptech/glide/load/engine/Resource;)V

    goto :goto_5
.end method
