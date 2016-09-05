.class Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList$2;
.super Ljava/lang/Object;
.source "MarketPlaceListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->a(ILcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;)V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;

.field final synthetic c:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;ILcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;)V
    .registers 4

    .prologue
    .line 299
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList$2;->c:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;

    iput p2, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList$2;->a:I

    iput-object p3, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList$2;->b:Lcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    .prologue
    .line 302
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList$2;->c:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;

    iget-object v0, v0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;

    invoke-static {v0}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->c(Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_b

    .line 324
    :goto_a
    return-void

    .line 305
    :cond_b
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList$2;->c:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;

    iget-object v0, v0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;

    invoke-static {v0}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->c(Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList$2;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BZB Category-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList$2;->c:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;

    iget-object v2, v2, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;

    invoke-static {v2}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->b(Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Click BZB Campaign Banner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string/jumbo v1, "Analytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BZB Category-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList$2;->c:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;

    iget-object v3, v3, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;

    invoke-static {v3}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->b(Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , Click BZB Campaign Banner ,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :try_start_9d
    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b7

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 313
    :cond_b7
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList$2;->b:Lcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;

    if-eqz v0, :cond_c3

    .line 314
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList$2;->b:Lcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;

    iget v1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList$2;->a:I

    const/4 v2, 0x1

    invoke-interface {v0, p1, v1, v2}, Lcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;->a(Landroid/view/View;IZ)V
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_c3} :catch_d9

    .line 323
    :cond_c3
    :goto_c3
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList$2;->c:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;

    iget-object v0, v0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_a

    .line 316
    :cond_cc
    :try_start_cc
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList$2;->b:Lcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;

    if-eqz v0, :cond_c3

    .line 317
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList$2;->b:Lcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;

    iget v1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList$2;->a:I

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;->a(Landroid/view/View;IZ)V
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_d8} :catch_d9

    goto :goto_c3

    .line 319
    :catch_d9
    move-exception v0

    .line 320
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c3
.end method
