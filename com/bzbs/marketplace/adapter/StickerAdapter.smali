.class public Lcom/bzbs/marketplace/adapter/StickerAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "StickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field private b:Landroid/app/Activity;

.field private c:Lcom/bzbs/marketplace/listener/OnTabItemListener;

.field private d:Lcom/bzbs/marketplace/model/sticker/StickerModel;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/bzbs/marketplace/model/sticker/StickerModel;)V
    .registers 4

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/bzbs/marketplace/adapter/StickerAdapter;->e:I

    .line 34
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/StickerAdapter;->b:Landroid/app/Activity;

    .line 35
    iput-object p2, p0, Lcom/bzbs/marketplace/adapter/StickerAdapter;->d:Lcom/bzbs/marketplace/model/sticker/StickerModel;

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/adapter/StickerAdapter;->a:Landroid/view/LayoutInflater;

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/bzbs/marketplace/adapter/StickerAdapter;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/StickerAdapter;->b:Landroid/app/Activity;

    return-object v0
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Lcom/bzbs/marketplace/adapter/StickerAdapter$ViewHolderReviewPick;
    .registers 2

    .prologue
    .line 65
    check-cast p1, Lcom/bzbs/marketplace/adapter/StickerAdapter$ViewHolderReviewPick;

    return-object p1
.end method

.method private a(I)Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;
    .registers 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/StickerAdapter;->d:Lcom/bzbs/marketplace/model/sticker/StickerModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/sticker/StickerModel;->getStickers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;

    return-object v0
.end method


# virtual methods
.method protected a(F)I
    .registers 4

    .prologue
    .line 107
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/StickerAdapter;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 109
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public a(Lcom/bzbs/marketplace/listener/OnTabItemListener;)V
    .registers 2

    .prologue
    .line 74
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/StickerAdapter;->c:Lcom/bzbs/marketplace/listener/OnTabItemListener;

    .line 75
    return-void
.end method

.method public getItemCount()I
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/StickerAdapter;->d:Lcom/bzbs/marketplace/model/sticker/StickerModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/sticker/StickerModel;->getStickers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 2

    .prologue
    .line 41
    return p1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 5

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/adapter/StickerAdapter;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Lcom/bzbs/marketplace/adapter/StickerAdapter$ViewHolderReviewPick;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_16

    .line 53
    invoke-direct {p0, p2}, Lcom/bzbs/marketplace/adapter/StickerAdapter;->a(I)Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/bzbs/marketplace/adapter/StickerAdapter$ViewHolderReviewPick;->a(ILcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;)V

    .line 55
    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/StickerAdapter;->c:Lcom/bzbs/marketplace/listener/OnTabItemListener;

    if-eqz v1, :cond_16

    .line 56
    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/StickerAdapter;->c:Lcom/bzbs/marketplace/listener/OnTabItemListener;

    invoke-virtual {v0, p2, v1}, Lcom/bzbs/marketplace/adapter/StickerAdapter$ViewHolderReviewPick;->a(ILcom/bzbs/marketplace/listener/OnTabItemListener;)V

    .line 58
    :cond_16
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 7

    .prologue
    .line 46
    new-instance v0, Lcom/bzbs/marketplace/adapter/StickerAdapter$ViewHolderReviewPick;

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/StickerAdapter;->a:Landroid/view/LayoutInflater;

    const v2, 0x7f04015f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bzbs/marketplace/adapter/StickerAdapter$ViewHolderReviewPick;-><init>(Lcom/bzbs/marketplace/adapter/StickerAdapter;Landroid/view/View;)V

    return-object v0
.end method
