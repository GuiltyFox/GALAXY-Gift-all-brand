.class public Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter$StickerViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "StampDetailGiftActivity.java"


# instance fields
.field a:Landroid/widget/LinearLayout;

.field b:Landroid/widget/ImageView;

.field c:Landroid/view/View;

.field final synthetic d:Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 1367
    iput-object p1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter$StickerViewHolder;->d:Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter;

    .line 1368
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1370
    const v0, 0x7f1000d9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter$StickerViewHolder;->a:Landroid/widget/LinearLayout;

    .line 1371
    const v0, 0x7f1001f7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter$StickerViewHolder;->b:Landroid/widget/ImageView;

    .line 1372
    const v0, 0x7f1001f8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter$StickerViewHolder;->c:Landroid/view/View;

    .line 1373
    return-void
.end method
