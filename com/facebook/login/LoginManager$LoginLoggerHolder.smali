.class Lcom/facebook/login/LoginManager$LoginLoggerHolder;
.super Ljava/lang/Object;
.source "LoginManager.java"


# static fields
.field private static volatile logger:Lcom/facebook/login/LoginLogger;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Lcom/facebook/login/LoginLogger;
    .registers 2

    .prologue
    .line 553
    invoke-static {p0}, Lcom/facebook/login/LoginManager$LoginLoggerHolder;->getLogger(Landroid/content/Context;)Lcom/facebook/login/LoginLogger;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized getLogger(Landroid/content/Context;)Lcom/facebook/login/LoginLogger;
    .registers 4

    .prologue
    .line 557
    const-class v1, Lcom/facebook/login/LoginManager$LoginLoggerHolder;

    monitor-enter v1

    if-eqz p0, :cond_a

    .line 558
    :goto_5
    if-nez p0, :cond_f

    .line 559
    const/4 v0, 0x0

    .line 564
    :goto_8
    monitor-exit v1

    return-object v0

    .line 557
    :cond_a
    :try_start_a
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_5

    .line 561
    :cond_f
    sget-object v0, Lcom/facebook/login/LoginManager$LoginLoggerHolder;->logger:Lcom/facebook/login/LoginLogger;

    if-nez v0, :cond_1e

    .line 562
    new-instance v0, Lcom/facebook/login/LoginLogger;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/facebook/login/LoginLogger;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/login/LoginManager$LoginLoggerHolder;->logger:Lcom/facebook/login/LoginLogger;

    .line 564
    :cond_1e
    sget-object v0, Lcom/facebook/login/LoginManager$LoginLoggerHolder;->logger:Lcom/facebook/login/LoginLogger;
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_21

    goto :goto_8

    .line 557
    :catchall_21
    move-exception v0

    monitor-exit v1

    throw v0
.end method
