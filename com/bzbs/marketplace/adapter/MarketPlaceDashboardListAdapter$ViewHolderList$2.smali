.class Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList$2;
.super Ljava/lang/Object;
.source "MarketPlaceDashboardListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList;->a(ILcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;)V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;

.field final synthetic c:Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList;ILcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;)V
    .registers 4

    .prologue
    .line 156
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList$2;->c:Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList;

    iput p2, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList$2;->a:I

    iput-object p3, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList$2;->b:Lcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 159
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList$2;->c:Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList;

    iget-object v0, v0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;

    invoke-static {v0}, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;->b(Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_b

    .line 178
    :goto_a
    return-void

    .line 162
    :cond_b
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList$2;->c:Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList;

    iget-object v0, v0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;

    invoke-static {v0}, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;->b(Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList$2;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;

    .line 170
    :try_start_1b
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList$2;->b:Lcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;

    if-eqz v0, :cond_27

    .line 171
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList$2;->b:Lcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;

    iget v1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList$2;->a:I

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;->a(Landroid/view/View;IZ)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_27} :catch_2f

    .line 177
    :cond_27
    :goto_27
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList$2;->c:Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList;

    iget-object v0, v0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;->notifyDataSetChanged()V

    goto :goto_a

    .line 173
    :catch_2f
    move-exception v0

    .line 174
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_27
.end method
