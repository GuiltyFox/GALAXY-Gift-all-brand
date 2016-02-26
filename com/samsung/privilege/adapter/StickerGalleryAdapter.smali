.class public Lcom/samsung/privilege/adapter/StickerGalleryAdapter;
.super Landroid/widget/BaseAdapter;
.source "StickerGalleryAdapter.java"


# instance fields
.field GalItemBg:I

.field private cont:Landroid/content/Context;

.field private gImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 6
    .param p1, "c"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "images":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 25
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/samsung/privilege/adapter/StickerGalleryAdapter;->cont:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/samsung/privilege/adapter/StickerGalleryAdapter;->gImages:Ljava/util/ArrayList;

    .line 29
    sget-object v1, Lcom/samsung/privilege/R$styleable;->GalleryTheme:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 30
    .local v0, "typArray":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/privilege/adapter/StickerGalleryAdapter;->GalItemBg:I

    .line 31
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 32
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/privilege/adapter/StickerGalleryAdapter;->gImages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 39
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 43
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v6, 0xc8

    const/16 v9, 0x80

    const/16 v8, 0x30

    .line 48
    new-instance v0, Lcom/loopj/android/image/SmartImageView;

    iget-object v2, p0, Lcom/samsung/privilege/adapter/StickerGalleryAdapter;->cont:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/loopj/android/image/SmartImageView;-><init>(Landroid/content/Context;)V

    .line 51
    .local v0, "imgView":Lcom/loopj/android/image/SmartImageView;
    iget-object v2, p0, Lcom/samsung/privilege/adapter/StickerGalleryAdapter;->gImages:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 52
    .local v1, "photo_src":Ljava/lang/String;
    const/4 v2, 0x0

    const/16 v3, 0xa

    const/4 v4, 0x1

    const v5, 0x7f0203a7

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/loopj/android/image/SmartImageView;->setImageUrl(Ljava/lang/String;ZIZIII)V

    .line 54
    sget v2, Lcom/samsung/privilege/AppSetting;->screenWidth:I

    const/16 v3, 0xf0

    if-gt v2, v3, :cond_39

    .line 55
    new-instance v2, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/loopj/android/image/SmartImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    :goto_2e
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Lcom/loopj/android/image/SmartImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 60
    iget v2, p0, Lcom/samsung/privilege/adapter/StickerGalleryAdapter;->GalItemBg:I

    invoke-virtual {v0, v2}, Lcom/loopj/android/image/SmartImageView;->setBackgroundResource(I)V

    .line 62
    return-object v0

    .line 57
    :cond_39
    new-instance v2, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/loopj/android/image/SmartImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2e
.end method
