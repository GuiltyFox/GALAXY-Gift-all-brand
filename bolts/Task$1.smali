.class final Lbolts/Task$1;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbolts/Task;
.end annotation


# instance fields
.field final synthetic a:Lbolts/Task$TaskCompletionSource;


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 173
    iget-object v0, p0, Lbolts/Task$1;->a:Lbolts/Task$TaskCompletionSource;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbolts/Task$TaskCompletionSource;->b(Ljava/lang/Object;)V

    .line 174
    return-void
.end method
