.class abstract Lrx/internal/util/unsafe/SpmcArrayQueueL3Pad;
.super Lrx/internal/util/unsafe/SpmcArrayQueueProducerIndexCacheField;
.source "SpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/SpmcArrayQueueProducerIndexCacheField",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lrx/internal/util/unsafe/SpmcArrayQueueProducerIndexCacheField;-><init>(I)V

    .line 106
    return-void
.end method
