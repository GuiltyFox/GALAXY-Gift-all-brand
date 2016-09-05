.class public Lcom/bzbs/lib/utils/DeleyUtils;
.super Ljava/lang/Object;
.source "DeleyUtils.java"


# direct methods
.method public static a(Landroid/content/Context;Lcom/bzbs/lib/utils/DeleyUtils$CallbackThread;)V
    .registers 4

    .prologue
    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/bzbs/lib/utils/DeleyUtils$4;

    invoke-direct {v1, p1}, Lcom/bzbs/lib/utils/DeleyUtils$4;-><init>(Lcom/bzbs/lib/utils/DeleyUtils$CallbackThread;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 50
    return-void
.end method
