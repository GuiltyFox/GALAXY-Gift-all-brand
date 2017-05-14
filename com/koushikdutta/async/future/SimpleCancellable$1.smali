.class final Lcom/koushikdutta/async/future/SimpleCancellable$1;
.super Lcom/koushikdutta/async/future/SimpleCancellable;
.source "SimpleCancellable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/future/SimpleCancellable;
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;-><init>()V

    .line 76
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleCancellable$1;->f()Z

    .line 77
    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/koushikdutta/async/future/Cancellable;)Lcom/koushikdutta/async/future/DependentCancellable;
    .registers 3

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/koushikdutta/async/future/SimpleCancellable;->b(Lcom/koushikdutta/async/future/Cancellable;)Lcom/koushikdutta/async/future/SimpleCancellable;

    move-result-object v0

    return-object v0
.end method
