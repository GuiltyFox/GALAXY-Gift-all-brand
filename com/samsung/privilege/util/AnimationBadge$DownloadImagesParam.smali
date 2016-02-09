.class public Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesParam;
.super Ljava/lang/Object;
.source "AnimationBadge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/util/AnimationBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadImagesParam"
.end annotation


# instance fields
.field public gBadge:Lcom/samsung/privilege/bean/BadgeAlert;

.field public gContext:Landroid/content/Context;

.field public gHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/bean/BadgeAlert;Landroid/os/Handler;Landroid/content/Context;)V
    .registers 4
    .param p1, "pBadge"    # Lcom/samsung/privilege/bean/BadgeAlert;
    .param p2, "pHandler"    # Landroid/os/Handler;
    .param p3, "pContext"    # Landroid/content/Context;

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-object p1, p0, Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesParam;->gBadge:Lcom/samsung/privilege/bean/BadgeAlert;

    .line 209
    iput-object p2, p0, Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesParam;->gHandler:Landroid/os/Handler;

    .line 210
    iput-object p3, p0, Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesParam;->gContext:Landroid/content/Context;

    .line 211
    return-void
.end method
