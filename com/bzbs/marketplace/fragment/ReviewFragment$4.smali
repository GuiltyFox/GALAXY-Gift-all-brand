.class Lcom/bzbs/marketplace/fragment/ReviewFragment$4;
.super Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask$CallbackList;
.source "ReviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/fragment/ReviewFragment;->d()V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/fragment/ReviewFragment;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/fragment/ReviewFragment;)V
    .registers 2

    .prologue
    .line 242
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$4;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    invoke-direct {p0}, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask$CallbackList;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 7

    .prologue
    .line 273
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$4;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->b(Lcom/bzbs/marketplace/fragment/ReviewFragment;Z)V

    .line 274
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$4;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->i(Lcom/bzbs/marketplace/fragment/ReviewFragment;)V

    .line 275
    return-void
.end method

.method public a(I[Lcz/msebera/android/httpclient/Header;[BLjava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lcz/msebera/android/httpclient/Header;",
            "[B",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/marketplace/model/review/ReviewModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 245
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$4;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->b(Lcom/bzbs/marketplace/fragment/ReviewFragment;Z)V

    .line 246
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$4;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    invoke-static {v0, v2}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a(Lcom/bzbs/marketplace/fragment/ReviewFragment;Z)Z

    .line 248
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_19

    .line 249
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$4;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    invoke-static {v0, v2}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->c(Lcom/bzbs/marketplace/fragment/ReviewFragment;Z)Z

    .line 252
    :cond_19
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$4;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->i(Lcom/bzbs/marketplace/fragment/ReviewFragment;)V

    .line 254
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$4;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->j(Lcom/bzbs/marketplace/fragment/ReviewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_30

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_47

    .line 255
    :cond_30
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$4;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$4;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 262
    :goto_3e
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$4;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->k(Lcom/bzbs/marketplace/fragment/ReviewFragment;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 269
    :goto_46
    return-void

    .line 258
    :cond_47
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$4;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$4;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_3e

    .line 266
    :cond_56
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$4;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->j(Lcom/bzbs/marketplace/fragment/ReviewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 268
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$4;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->l(Lcom/bzbs/marketplace/fragment/ReviewFragment;)V

    goto :goto_46
.end method
