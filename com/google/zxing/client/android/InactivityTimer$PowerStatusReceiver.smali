.class final Lcom/google/zxing/client/android/InactivityTimer$PowerStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InactivityTimer.java"


# instance fields
.field final synthetic a:Lcom/google/zxing/client/android/InactivityTimer;


# direct methods
.method private constructor <init>(Lcom/google/zxing/client/android/InactivityTimer;)V
    .registers 2

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/zxing/client/android/InactivityTimer$PowerStatusReceiver;->a:Lcom/google/zxing/client/android/InactivityTimer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/zxing/client/android/InactivityTimer;Lcom/google/zxing/client/android/InactivityTimer$1;)V
    .registers 3

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/google/zxing/client/android/InactivityTimer$PowerStatusReceiver;-><init>(Lcom/google/zxing/client/android/InactivityTimer;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .prologue
    .line 107
    const-string/jumbo v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 109
    const-string/jumbo v0, "plugged"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_27

    const/4 v0, 0x1

    .line 111
    :goto_18
    iget-object v1, p0, Lcom/google/zxing/client/android/InactivityTimer$PowerStatusReceiver;->a:Lcom/google/zxing/client/android/InactivityTimer;

    invoke-static {v1}, Lcom/google/zxing/client/android/InactivityTimer;->a(Lcom/google/zxing/client/android/InactivityTimer;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/zxing/client/android/InactivityTimer$PowerStatusReceiver$1;

    invoke-direct {v2, p0, v0}, Lcom/google/zxing/client/android/InactivityTimer$PowerStatusReceiver$1;-><init>(Lcom/google/zxing/client/android/InactivityTimer$PowerStatusReceiver;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 118
    :cond_26
    return-void

    .line 109
    :cond_27
    const/4 v0, 0x0

    goto :goto_18
.end method
