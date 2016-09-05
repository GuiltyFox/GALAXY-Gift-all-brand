.class final Lrx/functions/Actions$1;
.super Ljava/lang/Object;
.source "Actions.java"

# interfaces
.implements Lrx/functions/Func0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/functions/Actions;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func0",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/functions/Action0;

.field final synthetic b:Ljava/lang/Object;


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lrx/functions/Actions$1;->a:Lrx/functions/Action0;

    invoke-interface {v0}, Lrx/functions/Action0;->a()V

    .line 232
    iget-object v0, p0, Lrx/functions/Actions$1;->b:Ljava/lang/Object;

    return-object v0
.end method
