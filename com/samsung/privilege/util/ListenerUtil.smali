.class public Lcom/samsung/privilege/util/ListenerUtil;
.super Ljava/lang/Object;
.source "ListenerUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/util/ListenerUtil$FacebookDialogListener;,
        Lcom/samsung/privilege/util/ListenerUtil$FacebookPostListener;,
        Lcom/samsung/privilege/util/ListenerUtil$SetDataToBuzzeBeesListener;
    }
.end annotation


# static fields
.field private static final LOGCAT:Ljava/lang/String; = "ListenerUtil"

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const-class v0, Lcom/samsung/privilege/util/ListenerUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/util/ListenerUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/samsung/privilege/util/ListenerUtil;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 41
    invoke-static {p0, p1, p2}, Lcom/samsung/privilege/util/ListenerUtil;->showToast(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method

.method private static showToast(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .registers 4
    .param p0, "objActivityContext"    # Landroid/content/Context;
    .param p1, "objHandler"    # Landroid/os/Handler;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 42
    new-instance v0, Lcom/samsung/privilege/util/ListenerUtil$1;

    invoke-direct {v0, p0, p2}, Lcom/samsung/privilege/util/ListenerUtil$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    return-void
.end method
