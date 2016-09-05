.class public Lcom/samsung/privilege/util/AnimationBadge;
.super Ljava/lang/Object;
.source "AnimationBadge.java"


# direct methods
.method public static a(Lcom/bzbs/bean/BadgeAlert;Landroid/os/Handler;Landroid/content/Context;)V
    .registers 7

    .prologue
    .line 43
    new-instance v0, Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesParam;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesParam;-><init>(Lcom/bzbs/bean/BadgeAlert;Landroid/os/Handler;Landroid/content/Context;)V

    .line 44
    new-instance v1, Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesTask;

    invoke-direct {v1}, Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesTask;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesParam;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/bzbs/bean/BadgeAlert;Landroid/os/Handler;Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .registers 4

    .prologue
    .line 38
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/privilege/util/AnimationBadge;->b(Lcom/bzbs/bean/BadgeAlert;Landroid/os/Handler;Landroid/content/Context;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private static b(Lcom/bzbs/bean/BadgeAlert;Landroid/os/Handler;Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .registers 5

    .prologue
    .line 144
    new-instance v0, Lcom/samsung/privilege/util/AnimationBadge$2;

    invoke-direct {v0, p2, p3, p0}, Lcom/samsung/privilege/util/AnimationBadge$2;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/bzbs/bean/BadgeAlert;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 202
    return-void
.end method
