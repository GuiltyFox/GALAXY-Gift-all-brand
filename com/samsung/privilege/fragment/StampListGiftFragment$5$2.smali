.class Lcom/samsung/privilege/fragment/StampListGiftFragment$5$2;
.super Ljava/lang/Object;
.source "StampListGiftFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/fragment/StampListGiftFragment$5;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/fragment/StampListGiftFragment$5;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/fragment/StampListGiftFragment$5;)V
    .registers 2

    .prologue
    .line 381
    iput-object p1, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$5$2;->a:Lcom/samsung/privilege/fragment/StampListGiftFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 385
    :try_start_0
    iget-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$5$2;->a:Lcom/samsung/privilege/fragment/StampListGiftFragment$5;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/StampListGiftFragment$5;->c:Lcom/samsung/privilege/fragment/StampListGiftFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->g(Lcom/samsung/privilege/fragment/StampListGiftFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10011d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 386
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 388
    iget-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$5$2;->a:Lcom/samsung/privilege/fragment/StampListGiftFragment$5;

    iget v0, v0, Lcom/samsung/privilege/fragment/StampListGiftFragment$5;->b:I

    if-nez v0, :cond_3e

    .line 389
    iget-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$5$2;->a:Lcom/samsung/privilege/fragment/StampListGiftFragment$5;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/StampListGiftFragment$5;->c:Lcom/samsung/privilege/fragment/StampListGiftFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->g(Lcom/samsung/privilege/fragment/StampListGiftFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10050a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 390
    iget-object v1, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$5$2;->a:Lcom/samsung/privilege/fragment/StampListGiftFragment$5;

    iget-object v1, v1, Lcom/samsung/privilege/fragment/StampListGiftFragment$5;->c:Lcom/samsung/privilege/fragment/StampListGiftFragment;

    const v2, 0x7f09019e

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3e} :catch_3f

    .line 396
    :cond_3e
    :goto_3e
    return-void

    .line 393
    :catch_3f
    move-exception v0

    goto :goto_3e
.end method
