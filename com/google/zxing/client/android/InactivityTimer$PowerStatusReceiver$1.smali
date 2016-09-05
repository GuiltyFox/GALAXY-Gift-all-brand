.class Lcom/google/zxing/client/android/InactivityTimer$PowerStatusReceiver$1;
.super Ljava/lang/Object;
.source "InactivityTimer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/zxing/client/android/InactivityTimer$PowerStatusReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/zxing/client/android/InactivityTimer$PowerStatusReceiver;


# direct methods
.method constructor <init>(Lcom/google/zxing/client/android/InactivityTimer$PowerStatusReceiver;Z)V
    .registers 3

    .prologue
    .line 111
    iput-object p1, p0, Lcom/google/zxing/client/android/InactivityTimer$PowerStatusReceiver$1;->b:Lcom/google/zxing/client/android/InactivityTimer$PowerStatusReceiver;

    iput-boolean p2, p0, Lcom/google/zxing/client/android/InactivityTimer$PowerStatusReceiver$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/zxing/client/android/InactivityTimer$PowerStatusReceiver$1;->b:Lcom/google/zxing/client/android/InactivityTimer$PowerStatusReceiver;

    iget-object v0, v0, Lcom/google/zxing/client/android/InactivityTimer$PowerStatusReceiver;->a:Lcom/google/zxing/client/android/InactivityTimer;

    iget-boolean v1, p0, Lcom/google/zxing/client/android/InactivityTimer$PowerStatusReceiver$1;->a:Z

    invoke-static {v0, v1}, Lcom/google/zxing/client/android/InactivityTimer;->a(Lcom/google/zxing/client/android/InactivityTimer;Z)V

    .line 115
    return-void
.end method
