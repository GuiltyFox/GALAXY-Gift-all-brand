.class Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$4$1;
.super Ljava/lang/Object;
.source "MarketPlaceListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$4;->a(I[Lcz/msebera/android/httpclient/Header;[BLjava/util/ArrayList;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$4;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$4;Ljava/util/ArrayList;)V
    .registers 3

    .prologue
    .line 286
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$4$1;->b:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$4;

    iput-object p2, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$4$1;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 289
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$4$1;->b:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$4;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$4;->b:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->rootFooter:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$4$1;->b:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$4;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$4;->b:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->rootFooter:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 290
    :cond_13
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$4$1;->b:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$4;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$4;->b:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->d(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$4$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 291
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$4$1;->b:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$4;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$4;->b:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->c(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;)V

    .line 292
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$4$1;->b:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$4;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$4;->b:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$4$1;->b:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$4;

    iget-object v1, v1, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$4;->b:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    invoke-static {v1}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->d(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->b(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;Ljava/util/ArrayList;)V

    .line 293
    return-void
.end method
