.class Lcom/koushikdutta/async/PushParser$ByteArrayWaiter;
.super Lcom/koushikdutta/async/PushParser$Waiter;
.source "PushParser.java"


# instance fields
.field a:Lcom/koushikdutta/async/PushParser$ParseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/PushParser$ParseCallback",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/koushikdutta/async/PushParser$ParseCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/koushikdutta/async/PushParser$ParseCallback",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/PushParser$Waiter;-><init>(I)V

    .line 50
    if-gtz p1, :cond_e

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "length should be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_e
    iput-object p2, p0, Lcom/koushikdutta/async/PushParser$ByteArrayWaiter;->a:Lcom/koushikdutta/async/PushParser$ParseCallback;

    .line 53
    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/PushParser$Waiter;
    .registers 5

    .prologue
    .line 57
    iget v0, p0, Lcom/koushikdutta/async/PushParser$ByteArrayWaiter;->c:I

    new-array v0, v0, [B

    .line 58
    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/ByteBufferList;->a([B)V

    .line 59
    iget-object v1, p0, Lcom/koushikdutta/async/PushParser$ByteArrayWaiter;->a:Lcom/koushikdutta/async/PushParser$ParseCallback;

    invoke-interface {v1, v0}, Lcom/koushikdutta/async/PushParser$ParseCallback;->a(Ljava/lang/Object;)V

    .line 60
    const/4 v0, 0x0

    return-object v0
.end method
