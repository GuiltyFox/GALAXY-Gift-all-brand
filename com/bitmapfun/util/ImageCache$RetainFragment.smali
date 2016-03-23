.class public Lcom/bitmapfun/util/ImageCache$RetainFragment;
.super Landroid/app/Fragment;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bitmapfun/util/ImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RetainFragment"
.end annotation


# instance fields
.field private mObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 548
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getObject()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 573
    iget-object v0, p0, Lcom/bitmapfun/util/ImageCache$RetainFragment;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 552
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 555
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bitmapfun/util/ImageCache$RetainFragment;->setRetainInstance(Z)V

    .line 556
    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .registers 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 564
    iput-object p1, p0, Lcom/bitmapfun/util/ImageCache$RetainFragment;->mObject:Ljava/lang/Object;

    .line 565
    return-void
.end method
