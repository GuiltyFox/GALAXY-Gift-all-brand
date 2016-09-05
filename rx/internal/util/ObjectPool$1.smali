.class Lrx/internal/util/ObjectPool$1;
.super Ljava/lang/Object;
.source "ObjectPool.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/util/ObjectPool;->b()V
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/util/ObjectPool;


# direct methods
.method constructor <init>(Lrx/internal/util/ObjectPool;)V
    .registers 2

    .prologue
    .line 109
    iput-object p1, p0, Lrx/internal/util/ObjectPool$1;->a:Lrx/internal/util/ObjectPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 113
    iget-object v1, p0, Lrx/internal/util/ObjectPool$1;->a:Lrx/internal/util/ObjectPool;

    invoke-static {v1}, Lrx/internal/util/ObjectPool;->a(Lrx/internal/util/ObjectPool;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    .line 114
    iget-object v2, p0, Lrx/internal/util/ObjectPool$1;->a:Lrx/internal/util/ObjectPool;

    invoke-static {v2}, Lrx/internal/util/ObjectPool;->b(Lrx/internal/util/ObjectPool;)I

    move-result v2

    if-ge v1, v2, :cond_2f

    .line 115
    iget-object v2, p0, Lrx/internal/util/ObjectPool$1;->a:Lrx/internal/util/ObjectPool;

    invoke-static {v2}, Lrx/internal/util/ObjectPool;->c(Lrx/internal/util/ObjectPool;)I

    move-result v2

    sub-int v1, v2, v1

    .line 116
    :goto_1b
    if-ge v0, v1, :cond_4c

    .line 117
    iget-object v2, p0, Lrx/internal/util/ObjectPool$1;->a:Lrx/internal/util/ObjectPool;

    invoke-static {v2}, Lrx/internal/util/ObjectPool;->a(Lrx/internal/util/ObjectPool;)Ljava/util/Queue;

    move-result-object v2

    iget-object v3, p0, Lrx/internal/util/ObjectPool$1;->a:Lrx/internal/util/ObjectPool;

    invoke-virtual {v3}, Lrx/internal/util/ObjectPool;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 119
    :cond_2f
    iget-object v2, p0, Lrx/internal/util/ObjectPool$1;->a:Lrx/internal/util/ObjectPool;

    invoke-static {v2}, Lrx/internal/util/ObjectPool;->c(Lrx/internal/util/ObjectPool;)I

    move-result v2

    if-le v1, v2, :cond_4c

    .line 120
    iget-object v2, p0, Lrx/internal/util/ObjectPool$1;->a:Lrx/internal/util/ObjectPool;

    invoke-static {v2}, Lrx/internal/util/ObjectPool;->c(Lrx/internal/util/ObjectPool;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 121
    :goto_3e
    if-ge v0, v1, :cond_4c

    .line 123
    iget-object v2, p0, Lrx/internal/util/ObjectPool$1;->a:Lrx/internal/util/ObjectPool;

    invoke-static {v2}, Lrx/internal/util/ObjectPool;->a(Lrx/internal/util/ObjectPool;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    .line 126
    :cond_4c
    return-void
.end method
