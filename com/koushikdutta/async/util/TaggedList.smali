.class public Lcom/koushikdutta/async/util/TaggedList;
.super Ljava/util/ArrayList;
.source "TaggedList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()TV;"
        }
    .end annotation

    .prologue
    .line 9
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/koushikdutta/async/util/TaggedList;->a:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)V"
        }
    .end annotation

    .prologue
    .line 13
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/koushikdutta/async/util/TaggedList;->a:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 14
    monitor-exit p0

    return-void

    .line 13
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)V"
        }
    .end annotation

    .prologue
    .line 17
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/koushikdutta/async/util/TaggedList;->a:Ljava/lang/Object;

    if-nez v0, :cond_7

    .line 18
    iput-object p1, p0, Lcom/koushikdutta/async/util/TaggedList;->a:Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 19
    :cond_7
    monitor-exit p0

    return-void

    .line 17
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
