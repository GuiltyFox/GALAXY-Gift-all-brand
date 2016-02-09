.class public Lic/buzzebeeslib/adapter/KeyboardStickerAdapter;
.super Landroid/widget/BaseAdapter;
.source "KeyboardStickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/adapter/KeyboardStickerAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static inflater:Landroid/view/LayoutInflater;


# instance fields
.field private activity:Landroid/app/Activity;

.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lic/buzzebeeslib/bean/Sticker;",
            ">;"
        }
    .end annotation
.end field

.field private gImageFetcher:Lcom/bitmapfun/util/ImageFetcher;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lic/buzzebeeslib/adapter/KeyboardStickerAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/bitmapfun/util/ImageFetcher;)V
    .registers 6
    .param p1, "a"    # Landroid/app/Activity;
    .param p3, "pImageFetcher"    # Lcom/bitmapfun/util/ImageFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lic/buzzebeeslib/bean/Sticker;",
            ">;",
            "Lcom/bitmapfun/util/ImageFetcher;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "d":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/Sticker;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    iput-object p1, p0, Lic/buzzebeeslib/adapter/KeyboardStickerAdapter;->activity:Landroid/app/Activity;

    .line 28
    iput-object p3, p0, Lic/buzzebeeslib/adapter/KeyboardStickerAdapter;->gImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    .line 29
    iput-object p2, p0, Lic/buzzebeeslib/adapter/KeyboardStickerAdapter;->data:Ljava/util/ArrayList;

    .line 30
    iget-object v0, p0, Lic/buzzebeeslib/adapter/KeyboardStickerAdapter;->activity:Landroid/app/Activity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sput-object v0, Lic/buzzebeeslib/adapter/KeyboardStickerAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 31
    return-void
.end method


# virtual methods
.method public add(Lic/buzzebeeslib/bean/Sticker;)V
    .registers 3
    .param p1, "item"    # Lic/buzzebeeslib/bean/Sticker;

    .prologue
    .line 34
    iget-object v0, p0, Lic/buzzebeeslib/adapter/KeyboardStickerAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lic/buzzebeeslib/adapter/KeyboardStickerAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 42
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 46
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 50
    const/4 v8, 0x0

    .line 52
    .local v8, "sticker":Lic/buzzebeeslib/bean/Sticker;
    :try_start_1
    iget-object v1, p0, Lic/buzzebeeslib/adapter/KeyboardStickerAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lic/buzzebeeslib/bean/Sticker;

    invoke-virtual {v1}, Lic/buzzebeeslib/bean/Sticker;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lic/buzzebeeslib/bean/Sticker;

    move-object v8, v0
    :try_end_11
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_11} :catch_5a

    .line 58
    :goto_11
    const/4 v10, 0x0

    .line 59
    .local v10, "viewHolder":Lic/buzzebeeslib/adapter/KeyboardStickerAdapter$ViewHolder;
    move-object v9, p2

    .line 61
    .local v9, "view":Landroid/view/View;
    if-nez p2, :cond_5f

    .line 62
    sget-object v1, Lic/buzzebeeslib/adapter/KeyboardStickerAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v2, Lic/buzzebeeslib/R$layout;->bz_keyboard_sticker_row:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 63
    new-instance v10, Lic/buzzebeeslib/adapter/KeyboardStickerAdapter$ViewHolder;

    .end local v10    # "viewHolder":Lic/buzzebeeslib/adapter/KeyboardStickerAdapter$ViewHolder;
    invoke-direct {v10}, Lic/buzzebeeslib/adapter/KeyboardStickerAdapter$ViewHolder;-><init>()V

    .line 64
    .restart local v10    # "viewHolder":Lic/buzzebeeslib/adapter/KeyboardStickerAdapter$ViewHolder;
    sget v1, Lic/buzzebeeslib/R$idKeyboardStickerRow;->progressBarLoading:I

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, v10, Lic/buzzebeeslib/adapter/KeyboardStickerAdapter$ViewHolder;->progressBarLoading:Landroid/widget/ProgressBar;

    .line 65
    sget v1, Lic/buzzebeeslib/R$idKeyboardStickerRow;->imgSticker:I

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v10, Lic/buzzebeeslib/adapter/KeyboardStickerAdapter$ViewHolder;->imgSticker:Landroid/widget/ImageView;

    .line 66
    sget v1, Lic/buzzebeeslib/R$idKeyboardStickerRow;->tvStickerName:I

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v10, Lic/buzzebeeslib/adapter/KeyboardStickerAdapter$ViewHolder;->tvStickerName:Landroid/widget/TextView;

    .line 69
    invoke-virtual {v9, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 74
    :goto_44
    iget-object v1, v10, Lic/buzzebeeslib/adapter/KeyboardStickerAdapter$ViewHolder;->tvStickerName:Landroid/widget/TextView;

    iget-object v2, v8, Lic/buzzebeeslib/bean/Sticker;->Text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v1, p0, Lic/buzzebeeslib/adapter/KeyboardStickerAdapter;->gImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    iget-object v2, v8, Lic/buzzebeeslib/bean/Sticker;->PictureUrl:Ljava/lang/String;

    iget-object v3, v10, Lic/buzzebeeslib/adapter/KeyboardStickerAdapter$ViewHolder;->imgSticker:Landroid/widget/ImageView;

    iget-object v4, v10, Lic/buzzebeeslib/adapter/KeyboardStickerAdapter$ViewHolder;->progressBarLoading:Landroid/widget/ProgressBar;

    sget v5, Lic/buzzebeeslib/R$drawable;->bz_pixel100:I

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 87
    return-object v9

    .line 53
    .end local v9    # "view":Landroid/view/View;
    .end local v10    # "viewHolder":Lic/buzzebeeslib/adapter/KeyboardStickerAdapter$ViewHolder;
    :catch_5a
    move-exception v7

    .line 55
    .local v7, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v7}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_11

    .line 71
    .end local v7    # "e":Ljava/lang/CloneNotSupportedException;
    .restart local v9    # "view":Landroid/view/View;
    .restart local v10    # "viewHolder":Lic/buzzebeeslib/adapter/KeyboardStickerAdapter$ViewHolder;
    :cond_5f
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "viewHolder":Lic/buzzebeeslib/adapter/KeyboardStickerAdapter$ViewHolder;
    check-cast v10, Lic/buzzebeeslib/adapter/KeyboardStickerAdapter$ViewHolder;

    .restart local v10    # "viewHolder":Lic/buzzebeeslib/adapter/KeyboardStickerAdapter$ViewHolder;
    goto :goto_44
.end method
