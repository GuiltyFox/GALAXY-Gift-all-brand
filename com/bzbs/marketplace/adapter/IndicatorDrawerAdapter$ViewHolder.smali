.class Lcom/bzbs/marketplace/adapter/IndicatorDrawerAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "IndicatorDrawerAdapter.java"


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/adapter/IndicatorDrawerAdapter;

.field private b:Landroid/app/Activity;

.field contentPackSticker:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1006d5
    .end annotation
.end field

.field imageParentSticker:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1006d6
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/adapter/IndicatorDrawerAdapter;Landroid/view/View;Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 90
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/IndicatorDrawerAdapter$ViewHolder;->a:Lcom/bzbs/marketplace/adapter/IndicatorDrawerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 92
    iput-object p3, p0, Lcom/bzbs/marketplace/adapter/IndicatorDrawerAdapter$ViewHolder;->b:Landroid/app/Activity;

    .line 93
    return-void
.end method


# virtual methods
.method public a(ILcom/bzbs/marketplace/model/sticker/StickerModel;)V
    .registers 7

    .prologue
    .line 96
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/IndicatorDrawerAdapter$ViewHolder;->a:Lcom/bzbs/marketplace/adapter/IndicatorDrawerAdapter;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/adapter/IndicatorDrawerAdapter;->a()I

    move-result v0

    if-ne p1, v0, :cond_29

    .line 97
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/IndicatorDrawerAdapter$ViewHolder;->contentPackSticker:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/IndicatorDrawerAdapter$ViewHolder;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 100
    :goto_1a
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/IndicatorDrawerAdapter$ViewHolder;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/IndicatorDrawerAdapter$ViewHolder;->imageParentSticker:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/sticker/StickerModel;->getPictureUrl()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0202e1

    invoke-static {v0, v1, v2, v3}, Lcom/bzbs/marketplace/control/InitImage;->a(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 101
    return-void

    .line 98
    :cond_29
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/IndicatorDrawerAdapter$ViewHolder;->contentPackSticker:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/IndicatorDrawerAdapter$ViewHolder;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_1a
.end method
