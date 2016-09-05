.class Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$1;
.super Ljava/lang/Object;
.source "MarketPlaceListFragment.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->b()V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;)V
    .registers 2

    .prologue
    .line 157
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$1;->a:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$1;->a:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->tvResult:Landroid/widget/TextView;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$1;->a:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->tvResult:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    :cond_f
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$1;->a:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->a(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;)V

    .line 162
    return-void
.end method
