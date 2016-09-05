.class final Lcom/bzbs/util/AdvertisingIdClient$AdvertisingConnection;
.super Ljava/lang/Object;
.source "AdvertisingIdClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field a:Z

.field private final b:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bzbs/util/AdvertisingIdClient$AdvertisingConnection;->a:Z

    .line 67
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/bzbs/util/AdvertisingIdClient$AdvertisingConnection;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/bzbs/util/AdvertisingIdClient$1;)V
    .registers 2

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/bzbs/util/AdvertisingIdClient$AdvertisingConnection;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/bzbs/util/AdvertisingIdClient$AdvertisingConnection;->a:Z

    if-eqz v0, :cond_a

    .line 81
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 82
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bzbs/util/AdvertisingIdClient$AdvertisingConnection;->a:Z

    .line 83
    iget-object v0, p0, Lcom/bzbs/util/AdvertisingIdClient$AdvertisingConnection;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .prologue
    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/bzbs/util/AdvertisingIdClient$AdvertisingConnection;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_6

    .line 74
    :goto_5
    return-void

    .line 72
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    .prologue
    .line 77
    return-void
.end method
