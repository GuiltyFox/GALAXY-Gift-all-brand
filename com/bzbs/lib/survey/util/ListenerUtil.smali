.class public Lcom/bzbs/lib/survey/util/ListenerUtil;
.super Ljava/lang/Object;
.source "ListenerUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bzbs/lib/survey/util/ListenerUtil$SetDataToBuzzeBeesListener;,
        Lcom/bzbs/lib/survey/util/ListenerUtil$FacebookDialogListener;
    }
.end annotation


# static fields
.field private static final LOGCAT:Ljava/lang/String; = "ListenerUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/os/Handler;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-static {p0, p1, p2}, Lcom/bzbs/lib/survey/util/ListenerUtil;->showToast(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method

.method private static showToast(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .registers 4
    .param p0, "objActivityContext"    # Landroid/content/Context;
    .param p1, "objHandler"    # Landroid/os/Handler;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 27
    new-instance v0, Lcom/bzbs/lib/survey/util/ListenerUtil$1;

    invoke-direct {v0, p0, p2}, Lcom/bzbs/lib/survey/util/ListenerUtil$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 34
    return-void
.end method
