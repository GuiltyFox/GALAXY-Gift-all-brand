.class abstract Lrx/internal/util/unsafe/MpmcArrayQueueL2Pad;
.super Lrx/internal/util/unsafe/MpmcArrayQueueProducerField;
.source "MpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/MpmcArrayQueueProducerField",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lrx/internal/util/unsafe/MpmcArrayQueueProducerField;-><init>(I)V

    .line 53
    return-void
.end method
