.class public Lcom/samsung/privilege/adapter/KeyboardStickerAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "KeyboardStickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/adapter/KeyboardStickerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public imgSticker:Lcom/loopj/android/image/SmartImageView;

.field public progressBarLoading:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
