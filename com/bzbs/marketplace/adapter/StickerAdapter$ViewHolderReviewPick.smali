.class Lcom/bzbs/marketplace/adapter/StickerAdapter$ViewHolderReviewPick;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "StickerAdapter.java"


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/adapter/StickerAdapter;

.field itemSticker:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100507
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/adapter/StickerAdapter;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 81
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/StickerAdapter$ViewHolderReviewPick;->a:Lcom/bzbs/marketplace/adapter/StickerAdapter;

    .line 82
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 83
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 84
    return-void
.end method


# virtual methods
.method public a(ILcom/bzbs/marketplace/listener/OnTabItemListener;)V
    .registers 5

    .prologue
    .line 95
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/StickerAdapter$ViewHolderReviewPick;->itemSticker:Landroid/widget/ImageView;

    new-instance v1, Lcom/bzbs/marketplace/adapter/StickerAdapter$ViewHolderReviewPick$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/bzbs/marketplace/adapter/StickerAdapter$ViewHolderReviewPick$1;-><init>(Lcom/bzbs/marketplace/adapter/StickerAdapter$ViewHolderReviewPick;Lcom/bzbs/marketplace/listener/OnTabItemListener;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    return-void
.end method

.method public a(ILcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;)V
    .registers 7

    .prologue
    .line 87
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/StickerAdapter$ViewHolderReviewPick;->a:Lcom/bzbs/marketplace/adapter/StickerAdapter;

    const/high16 v2, 0x43160000    # 150.0f

    invoke-virtual {v1, v2}, Lcom/bzbs/marketplace/adapter/StickerAdapter;->a(F)I

    move-result v1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 88
    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/StickerAdapter$ViewHolderReviewPick;->itemSticker:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/StickerAdapter$ViewHolderReviewPick;->a:Lcom/bzbs/marketplace/adapter/StickerAdapter;

    invoke-static {v0}, Lcom/bzbs/marketplace/adapter/StickerAdapter;->a(Lcom/bzbs/marketplace/adapter/StickerAdapter;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/StickerAdapter$ViewHolderReviewPick;->itemSticker:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;->getPictureUrl()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0201c6

    invoke-static {v0, v1, v2, v3}, Lcom/bzbs/marketplace/control/InitImage;->a(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 92
    return-void
.end method
