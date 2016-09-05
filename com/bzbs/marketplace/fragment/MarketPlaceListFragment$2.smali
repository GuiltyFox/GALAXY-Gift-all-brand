.class Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$2;
.super Ljava/lang/Object;
.source "MarketPlaceListFragment.java"

# interfaces
.implements Lcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->c()V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;)V
    .registers 2

    .prologue
    .line 169
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$2;->a:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;IZ)V
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 172
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$2;->a:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->b(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$2;->a:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->b(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_16

    .line 182
    :cond_15
    :goto_15
    return-void

    .line 175
    :cond_16
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$2;->a:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    iget-object v1, v1, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->a:Landroid/app/Activity;

    const-class v2, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$2;->a:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    iget-object v1, v1, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->b:Landroid/os/Bundle;

    const-string/jumbo v2, "ItemMarketPlace"

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$2;->a:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    invoke-static {v3}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->b(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/parceler/Parcels;->a(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 177
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$2;->a:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    iget-object v1, v1, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->b:Landroid/os/Bundle;

    const-string/jumbo v2, "ItemMarketPlace::Ads::Ins"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 178
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$2;->a:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    iget-object v1, v1, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 179
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$2;->a:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    invoke-virtual {v1, v0}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->startActivity(Landroid/content/Intent;)V

    .line 181
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$2;->a:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->a:Landroid/app/Activity;

    invoke-virtual {v0, v4, v4}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_15
.end method
