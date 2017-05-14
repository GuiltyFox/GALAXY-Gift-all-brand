.class public Lcom/bzbs/marketplace/adapter/IndicatorDrawerAdapter;
.super Landroid/widget/BaseAdapter;
.source "IndicatorDrawerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/marketplace/model/sticker/StickerModel;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/app/Activity;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/marketplace/model/sticker/StickerModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/bzbs/marketplace/adapter/IndicatorDrawerAdapter;->d:I

    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/adapter/IndicatorDrawerAdapter;->a:Landroid/view/LayoutInflater;

    .line 34
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/IndicatorDrawerAdapter;->c:Landroid/app/Activity;

    .line 35
    iput-object p2, p0, Lcom/bzbs/marketplace/adapter/IndicatorDrawerAdapter;->b:Ljava/util/ArrayList;

    .line 36
    return-void
.end method

.method private b(I)Lcom/bzbs/marketplace/model/sticker/StickerModel;
    .registers 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/IndicatorDrawerAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/sticker/StickerModel;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 105
    iget v0, p0, Lcom/bzbs/marketplace/adapter/IndicatorDrawerAdapter;->d:I

    return v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 109
    iput p1, p0, Lcom/bzbs/marketplace/adapter/IndicatorDrawerAdapter;->d:I

    .line 111
    invoke-virtual {p0}, Lcom/bzbs/marketplace/adapter/IndicatorDrawerAdapter;->notifyDataSetInvalidated()V

    .line 112
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/IndicatorDrawerAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    .prologue
    .line 50
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    .prologue
    .line 61
    if-nez p2, :cond_1e

    .line 62
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/IndicatorDrawerAdapter;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f04015d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 63
    new-instance v0, Lcom/bzbs/marketplace/adapter/IndicatorDrawerAdapter$ViewHolder;

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/IndicatorDrawerAdapter;->c:Landroid/app/Activity;

    invoke-direct {v0, p0, p2, v1}, Lcom/bzbs/marketplace/adapter/IndicatorDrawerAdapter$ViewHolder;-><init>(Lcom/bzbs/marketplace/adapter/IndicatorDrawerAdapter;Landroid/view/View;Landroid/app/Activity;)V

    .line 65
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 70
    :goto_16
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/adapter/IndicatorDrawerAdapter;->b(I)Lcom/bzbs/marketplace/model/sticker/StickerModel;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/bzbs/marketplace/adapter/IndicatorDrawerAdapter$ViewHolder;->a(ILcom/bzbs/marketplace/model/sticker/StickerModel;)V

    .line 72
    return-object p2

    .line 67
    :cond_1e
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/adapter/IndicatorDrawerAdapter$ViewHolder;

    goto :goto_16
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 80
    return-void
.end method
