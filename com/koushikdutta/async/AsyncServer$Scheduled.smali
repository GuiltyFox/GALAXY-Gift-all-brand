.class Lcom/koushikdutta/async/AsyncServer$Scheduled;
.super Ljava/lang/Object;
.source "AsyncServer.java"


# instance fields
.field public a:Ljava/lang/Runnable;

.field public b:J


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;J)V
    .registers 4

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncServer$Scheduled;->a:Ljava/lang/Runnable;

    .line 209
    iput-wide p2, p0, Lcom/koushikdutta/async/AsyncServer$Scheduled;->b:J

    .line 210
    return-void
.end method
