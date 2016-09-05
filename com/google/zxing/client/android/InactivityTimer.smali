.class public final Lcom/google/zxing/client/android/InactivityTimer;
.super Ljava/lang/Object;
.source "InactivityTimer.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/content/BroadcastReceiver;

.field private d:Z

.field private e:Landroid/os/Handler;

.field private f:Ljava/lang/Runnable;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const-class v0, Lcom/google/zxing/client/android/InactivityTimer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/InactivityTimer;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .registers 5

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/zxing/client/android/InactivityTimer;->d:Z

    .line 43
    iput-object p1, p0, Lcom/google/zxing/client/android/InactivityTimer;->b:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/google/zxing/client/android/InactivityTimer;->f:Ljava/lang/Runnable;

    .line 46
    new-instance v0, Lcom/google/zxing/client/android/InactivityTimer$PowerStatusReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/zxing/client/android/InactivityTimer$PowerStatusReceiver;-><init>(Lcom/google/zxing/client/android/InactivityTimer;Lcom/google/zxing/client/android/InactivityTimer$1;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/InactivityTimer;->c:Landroid/content/BroadcastReceiver;

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/client/android/InactivityTimer;->e:Landroid/os/Handler;

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/google/zxing/client/android/InactivityTimer;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/zxing/client/android/InactivityTimer;->e:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/google/zxing/client/android/InactivityTimer;Z)V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/google/zxing/client/android/InactivityTimer;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .registers 3

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/google/zxing/client/android/InactivityTimer;->g:Z

    .line 98
    iget-boolean v0, p0, Lcom/google/zxing/client/android/InactivityTimer;->d:Z

    if-eqz v0, :cond_9

    .line 100
    invoke-virtual {p0}, Lcom/google/zxing/client/android/InactivityTimer;->a()V

    .line 102
    :cond_9
    return-void
.end method

.method private d()V
    .registers 3

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/google/zxing/client/android/InactivityTimer;->d:Z

    if-eqz v0, :cond_e

    .line 78
    iget-object v0, p0, Lcom/google/zxing/client/android/InactivityTimer;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/zxing/client/android/InactivityTimer;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/zxing/client/android/InactivityTimer;->d:Z

    .line 81
    :cond_e
    return-void
.end method

.method private e()V
    .registers 5

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/google/zxing/client/android/InactivityTimer;->d:Z

    if-nez v0, :cond_16

    .line 85
    iget-object v0, p0, Lcom/google/zxing/client/android/InactivityTimer;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/zxing/client/android/InactivityTimer;->c:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/zxing/client/android/InactivityTimer;->d:Z

    .line 88
    :cond_16
    return-void
.end method

.method private f()V
    .registers 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/zxing/client/android/InactivityTimer;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 92
    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/zxing/client/android/InactivityTimer;->f()V

    .line 55
    iget-boolean v0, p0, Lcom/google/zxing/client/android/InactivityTimer;->g:Z

    if-eqz v0, :cond_11

    .line 56
    iget-object v0, p0, Lcom/google/zxing/client/android/InactivityTimer;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/zxing/client/android/InactivityTimer;->f:Ljava/lang/Runnable;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 58
    :cond_11
    return-void
.end method

.method public b()V
    .registers 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/zxing/client/android/InactivityTimer;->e()V

    .line 65
    invoke-virtual {p0}, Lcom/google/zxing/client/android/InactivityTimer;->a()V

    .line 66
    return-void
.end method

.method public c()V
    .registers 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/zxing/client/android/InactivityTimer;->f()V

    .line 73
    invoke-direct {p0}, Lcom/google/zxing/client/android/InactivityTimer;->d()V

    .line 74
    return-void
.end method
