.class public Lcom/samsung/privilege/adapter/KeyboardStickerSetAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "KeyboardStickerSetAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/adapter/KeyboardStickerSetAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public imgStickerSet:Lcom/loopj/android/image/SmartImageView;

.field public progressBarLoading:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
