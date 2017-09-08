.class public Lcom/bzbs/marketplace/fragment/StickerFragment;
.super Lcom/bzbs/marketplace/base/BaseFragment;
.source "StickerFragment.java"


# instance fields
.field g:Lcom/bzbs/marketplace/adapter/StickerAdapter;

.field private h:Lcom/bzbs/marketplace/model/sticker/StickerModel;

.field recyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1004ef
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bzbs/marketplace/model/sticker/StickerModel;)V
    .registers 2

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/bzbs/marketplace/base/BaseFragment;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/StickerFragment;->h:Lcom/bzbs/marketplace/model/sticker/StickerModel;

    .line 45
    return-void
.end method

.method public static a(Lcom/bzbs/marketplace/model/sticker/StickerModel;)Lcom/bzbs/marketplace/fragment/StickerFragment;
    .registers 5

    .prologue
    .line 36
    new-instance v0, Lcom/bzbs/marketplace/fragment/StickerFragment;

    invoke-direct {v0, p0}, Lcom/bzbs/marketplace/fragment/StickerFragment;-><init>(Lcom/bzbs/marketplace/model/sticker/StickerModel;)V

    .line 37
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 38
    const-string/jumbo v2, "SelectStickerFragment:Data"

    invoke-static {p0}, Lorg/parceler/Parcels;->a(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 39
    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/fragment/StickerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 40
    return-object v0
.end method

.method static synthetic a(Lcom/bzbs/marketplace/fragment/StickerFragment;)Lcom/bzbs/marketplace/model/sticker/StickerModel;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/StickerFragment;->h:Lcom/bzbs/marketplace/model/sticker/StickerModel;

    return-object v0
.end method


# virtual methods
.method protected a()I
    .registers 2

    .prologue
    .line 49
    const v0, 0x7f040101

    return v0
.end method

.method protected a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .registers 8

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/StickerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "SelectStickerFragment:Data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 55
    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/StickerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "SelectStickerFragment:Data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-static {v0}, Lorg/parceler/Parcels;->a(Landroid/os/Parcelable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/sticker/StickerModel;

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/StickerFragment;->h:Lcom/bzbs/marketplace/model/sticker/StickerModel;

    .line 58
    :cond_20
    new-instance v0, Lcom/bzbs/marketplace/adapter/StickerAdapter;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/StickerFragment;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/StickerFragment;->h:Lcom/bzbs/marketplace/model/sticker/StickerModel;

    invoke-direct {v0, v1, v2}, Lcom/bzbs/marketplace/adapter/StickerAdapter;-><init>(Landroid/app/Activity;Lcom/bzbs/marketplace/model/sticker/StickerModel;)V

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/StickerFragment;->g:Lcom/bzbs/marketplace/adapter/StickerAdapter;

    .line 59
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/StickerFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/StickerFragment;->a:Landroid/app/Activity;

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 60
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/StickerFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/StickerFragment;->g:Lcom/bzbs/marketplace/adapter/StickerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 62
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/StickerFragment;->g:Lcom/bzbs/marketplace/adapter/StickerAdapter;

    new-instance v1, Lcom/bzbs/marketplace/fragment/StickerFragment$1;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/fragment/StickerFragment$1;-><init>(Lcom/bzbs/marketplace/fragment/StickerFragment;)V

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/adapter/StickerAdapter;->a(Lcom/bzbs/marketplace/listener/OnTabItemListener;)V

    .line 71
    return-void
.end method

.method public onDestroyView()V
    .registers 1

    .prologue
    .line 75
    invoke-super {p0}, Lcom/bzbs/marketplace/base/BaseFragment;->onDestroyView()V

    .line 76
    return-void
.end method
