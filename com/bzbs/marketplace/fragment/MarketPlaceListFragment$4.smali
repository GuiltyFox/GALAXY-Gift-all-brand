.class Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$4;
.super Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask$CallbackList;
.source "MarketPlaceListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->a(ZLjava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;Z)V
    .registers 3

    .prologue
    .line 272
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$4;->b:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    iput-boolean p2, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$4;->a:Z

    invoke-direct {p0}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask$CallbackList;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 7

    .prologue
    .line 301
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$4;->b:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->a(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;Z)V

    .line 302
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$4;->b:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->c(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;)V

    .line 303
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
            "Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 275
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$4;->b:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->a(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;Z)V

    .line 276
    iget-boolean v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$4;->a:Z

    if-eqz v0, :cond_44

    .line 277
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$4;->b:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    invoke-static {v0, p4}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->a(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 278
    if-eqz p4, :cond_19

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_26

    .line 279
    :cond_19
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$4;->b:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->tvResult:Landroid/widget/TextView;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$4;->b:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->tvResult:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 281
    :cond_26
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$4;->b:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->c(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;)V

    .line 282
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$4;->b:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$4;->b:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    invoke-static {v1}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->d(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->b(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;Ljava/util/ArrayList;)V

    .line 283
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$4;->b:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->rootFooter:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$4;->b:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->rootFooter:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 297
    :cond_43
    :goto_43
    return-void

    .line 285
    :cond_44
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$4;->b:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->tvResult:Landroid/widget/TextView;

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$4;->b:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->tvResult:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 286
    :cond_51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$4$1;

    invoke-direct {v1, p0, p4}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$4$1;-><init>(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$4;Ljava/util/ArrayList;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_43
.end method

.method public a(Ljava/lang/String;JJJ)V
    .registers 10

    .prologue
    .line 307
    invoke-super/range {p0 .. p7}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask$CallbackList;->a(Ljava/lang/String;JJJ)V

    .line 308
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$4;->b:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->e(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_28

    .line 309
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$4$2;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$4$2;-><init>(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$4;)V

    .line 310
    invoke-virtual {v1}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$4$2;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 309
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 311
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$4;->b:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    invoke-static {v1, v0}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->b(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;Ljava/util/ArrayList;)V

    .line 313
    :cond_28
    return-void
.end method
