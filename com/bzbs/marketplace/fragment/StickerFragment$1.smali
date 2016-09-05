.class Lcom/bzbs/marketplace/fragment/StickerFragment$1;
.super Ljava/lang/Object;
.source "StickerFragment.java"

# interfaces
.implements Lcom/bzbs/marketplace/listener/OnTabItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/fragment/StickerFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/fragment/StickerFragment;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/fragment/StickerFragment;)V
    .registers 2

    .prologue
    .line 62
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/StickerFragment$1;->a:Lcom/bzbs/marketplace/fragment/StickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .registers 4

    .prologue
    .line 68
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/StickerFragment$1;->a:Lcom/bzbs/marketplace/fragment/StickerFragment;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/StickerFragment;->a(Lcom/bzbs/marketplace/fragment/StickerFragment;)Lcom/bzbs/marketplace/model/sticker/StickerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/sticker/StickerModel;->getStickers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;

    invoke-static {v0}, Lcom/bzbs/marketplace/util/StickerEvents;->a(Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;)V

    .line 69
    return-void
.end method
