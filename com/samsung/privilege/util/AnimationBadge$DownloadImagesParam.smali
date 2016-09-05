.class public Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesParam;
.super Ljava/lang/Object;
.source "AnimationBadge.java"


# instance fields
.field public a:Lcom/bzbs/bean/BadgeAlert;

.field public b:Landroid/os/Handler;

.field public c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/bzbs/bean/BadgeAlert;Landroid/os/Handler;Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput-object p1, p0, Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesParam;->a:Lcom/bzbs/bean/BadgeAlert;

    .line 211
    iput-object p2, p0, Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesParam;->b:Landroid/os/Handler;

    .line 212
    iput-object p3, p0, Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesParam;->c:Landroid/content/Context;

    .line 213
    return-void
.end method
