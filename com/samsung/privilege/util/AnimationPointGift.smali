.class public Lcom/samsung/privilege/util/AnimationPointGift;
.super Ljava/lang/Object;
.source "AnimationPointGift.java"


# static fields
.field public static a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/privilege/util/AnimationPointGift;->a:Z

    return-void
.end method

.method public static a(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V
    .registers 5

    .prologue
    .line 516
    new-instance v0, Lcom/samsung/privilege/util/AnimationPointGift$4;

    invoke-direct {v0, p3, p0, p1}, Lcom/samsung/privilege/util/AnimationPointGift$4;-><init>(Landroid/app/Activity;ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 572
    return-void
.end method
