.class abstract Lrx/internal/util/unsafe/SpmcArrayQueueProducerIndexCacheField;
.super Lrx/internal/util/unsafe/SpmcArrayQueueMidPad;
.source "SpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/SpmcArrayQueueMidPad",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private volatile f:J


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lrx/internal/util/unsafe/SpmcArrayQueueMidPad;-><init>(I)V

    .line 89
    return-void
.end method


# virtual methods
.method protected final c()J
    .registers 3

    .prologue
    .line 92
    iget-wide v0, p0, Lrx/internal/util/unsafe/SpmcArrayQueueProducerIndexCacheField;->f:J

    return-wide v0
.end method

.method protected final e(J)V
    .registers 4

    .prologue
    .line 96
    iput-wide p1, p0, Lrx/internal/util/unsafe/SpmcArrayQueueProducerIndexCacheField;->f:J

    .line 97
    return-void
.end method
