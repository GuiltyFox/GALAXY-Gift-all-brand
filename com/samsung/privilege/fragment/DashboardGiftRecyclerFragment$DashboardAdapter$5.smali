.class Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$5;
.super Ljava/lang/Object;
.source "DashboardGiftRecyclerFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/bzbs/bean/DashboardRow;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;

.field final synthetic b:Lcom/bzbs/bean/DashboardItem;

.field final synthetic c:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;Lcom/bzbs/bean/DashboardItem;)V
    .registers 4

    .prologue
    .line 1332
    iput-object p1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$5;->c:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    iput-object p2, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$5;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;

    iput-object p3, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$5;->b:Lcom/bzbs/bean/DashboardItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 4

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$5;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;->p:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1338
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$5;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;->p:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    .line 1341
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$5;->b:Lcom/bzbs/bean/DashboardItem;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "menu"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1342
    mul-int/lit8 v0, v1, 0x1

    div-int/lit8 v0, v0, 0x1

    .line 1347
    :goto_28
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1348
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$5;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1349
    return-void

    .line 1344
    :cond_35
    mul-int/lit8 v0, v1, 0x2

    div-int/lit8 v0, v0, 0x3

    goto :goto_28
.end method
