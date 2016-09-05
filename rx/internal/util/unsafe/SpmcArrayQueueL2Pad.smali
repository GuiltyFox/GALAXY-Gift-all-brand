.class abstract Lrx/internal/util/unsafe/SpmcArrayQueueL2Pad;
.super Lrx/internal/util/unsafe/SpmcArrayQueueProducerField;
.source "SpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/SpmcArrayQueueProducerField",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lrx/internal/util/unsafe/SpmcArrayQueueProducerField;-><init>(I)V

    .line 53
    return-void
.end method
