.class public Lcom/samsung/privilege/adapter/KeyboardStickerSetAdapter;
.super Landroid/widget/BaseAdapter;
.source "KeyboardStickerSetAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/adapter/KeyboardStickerSetAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static inflater:Landroid/view/LayoutInflater;


# instance fields
.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/privilege/bean/StickerSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/privilege/adapter/KeyboardStickerSetAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 4
    .param p1, "appContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/privilege/bean/StickerSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, "d":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/StickerSet;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    iput-object p2, p0, Lcom/samsung/privilege/adapter/KeyboardStickerSetAdapter;->data:Ljava/util/ArrayList;

    .line 23
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sput-object v0, Lcom/samsung/privilege/adapter/KeyboardStickerSetAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 24
    return-void
.end method


# virtual methods
.method public add(Lcom/samsung/privilege/bean/StickerSet;)V
    .registers 3
    .param p1, "item"    # Lcom/samsung/privilege/bean/StickerSet;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/samsung/privilege/adapter/KeyboardStickerSetAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/privilege/adapter/KeyboardStickerSetAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 39
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v6, 0xc8

    const/4 v2, 0x0

    .line 43
    iget-object v0, p0, Lcom/samsung/privilege/adapter/KeyboardStickerSetAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/privilege/bean/StickerSet;

    .line 45
    .local v8, "stickerSet":Lcom/samsung/privilege/bean/StickerSet;
    const/4 v10, 0x0

    .line 46
    .local v10, "viewHolder":Lcom/samsung/privilege/adapter/KeyboardStickerSetAdapter$ViewHolder;
    move-object v9, p2

    .line 48
    .local v9, "view":Landroid/view/View;
    if-nez p2, :cond_4f

    .line 49
    sget-object v0, Lcom/samsung/privilege/adapter/KeyboardStickerSetAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300f7

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 50
    new-instance v10, Lcom/samsung/privilege/adapter/KeyboardStickerSetAdapter$ViewHolder;

    .end local v10    # "viewHolder":Lcom/samsung/privilege/adapter/KeyboardStickerSetAdapter$ViewHolder;
    invoke-direct {v10}, Lcom/samsung/privilege/adapter/KeyboardStickerSetAdapter$ViewHolder;-><init>()V

    .line 51
    .restart local v10    # "viewHolder":Lcom/samsung/privilege/adapter/KeyboardStickerSetAdapter$ViewHolder;
    const/high16 v0, 0x7f230000

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v10, Lcom/samsung/privilege/adapter/KeyboardStickerSetAdapter$ViewHolder;->progressBarLoading:Landroid/widget/ProgressBar;

    .line 52
    const v0, 0x7f230001

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/loopj/android/image/SmartImageView;

    iput-object v0, v10, Lcom/samsung/privilege/adapter/KeyboardStickerSetAdapter$ViewHolder;->imgStickerSet:Lcom/loopj/android/image/SmartImageView;

    .line 53
    iget-object v0, v10, Lcom/samsung/privilege/adapter/KeyboardStickerSetAdapter$ViewHolder;->imgStickerSet:Lcom/loopj/android/image/SmartImageView;

    iget-object v1, v10, Lcom/samsung/privilege/adapter/KeyboardStickerSetAdapter$ViewHolder;->progressBarLoading:Landroid/widget/ProgressBar;

    iput-object v1, v0, Lcom/loopj/android/image/SmartImageView;->ProgressBarLoading:Landroid/widget/ProgressBar;

    .line 54
    iget-object v0, v10, Lcom/samsung/privilege/adapter/KeyboardStickerSetAdapter$ViewHolder;->imgStickerSet:Lcom/loopj/android/image/SmartImageView;

    invoke-virtual {v0, v2}, Lcom/loopj/android/image/SmartImageView;->setAlpha(I)V

    .line 55
    invoke-virtual {v9, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 69
    :goto_41
    iget-object v0, v10, Lcom/samsung/privilege/adapter/KeyboardStickerSetAdapter$ViewHolder;->imgStickerSet:Lcom/loopj/android/image/SmartImageView;

    iget-object v1, v8, Lcom/samsung/privilege/bean/StickerSet;->PictureUrl:Ljava/lang/String;

    const/4 v4, 0x1

    const v5, 0x7f0203a7

    move v3, v2

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/loopj/android/image/SmartImageView;->setImageUrl(Ljava/lang/String;ZIZIII)V

    .line 71
    return-object v9

    .line 57
    :cond_4f
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "viewHolder":Lcom/samsung/privilege/adapter/KeyboardStickerSetAdapter$ViewHolder;
    check-cast v10, Lcom/samsung/privilege/adapter/KeyboardStickerSetAdapter$ViewHolder;

    .restart local v10    # "viewHolder":Lcom/samsung/privilege/adapter/KeyboardStickerSetAdapter$ViewHolder;
    goto :goto_41
.end method
