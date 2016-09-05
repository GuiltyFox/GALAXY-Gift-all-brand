.class public Lcom/bzbs/marketplace/adapter/pager/StickerPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "StickerPagerAdapter.java"


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/marketplace/model/sticker/StickerModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/marketplace/model/sticker/StickerModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 19
    iput-object p2, p0, Lcom/bzbs/marketplace/adapter/pager/StickerPagerAdapter;->a:Ljava/util/ArrayList;

    .line 20
    return-void
.end method


# virtual methods
.method public a(I)Landroid/support/v4/app/Fragment;
    .registers 3

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/bzbs/marketplace/adapter/pager/StickerPagerAdapter;->e(I)Lcom/bzbs/marketplace/model/sticker/StickerModel;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/StickerFragment;->a(Lcom/bzbs/marketplace/model/sticker/StickerModel;)Lcom/bzbs/marketplace/fragment/StickerFragment;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/pager/StickerPagerAdapter;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/pager/StickerPagerAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_5
.end method

.method public e(I)Lcom/bzbs/marketplace/model/sticker/StickerModel;
    .registers 3

    .prologue
    .line 23
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/pager/StickerPagerAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/sticker/StickerModel;

    return-object v0
.end method
