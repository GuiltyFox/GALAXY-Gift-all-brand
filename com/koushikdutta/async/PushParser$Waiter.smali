.class abstract Lcom/koushikdutta/async/PushParser$Waiter;
.super Ljava/lang/Object;
.source "PushParser.java"


# instance fields
.field c:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/koushikdutta/async/PushParser$Waiter;->c:I

    .line 23
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/PushParser$Waiter;
.end method
