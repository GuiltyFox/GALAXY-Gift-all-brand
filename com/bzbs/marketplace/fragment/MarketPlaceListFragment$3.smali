.class Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$3;
.super Ljava/lang/Object;
.source "MarketPlaceListFragment.java"

# interfaces
.implements Lcom/bzbs/marketplace/listener/OnTabCartItemListener;


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
    .line 185
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$3;->a:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;II)V
    .registers 9

    .prologue
    .line 188
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$3;->a:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->b(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$3;->a:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->b(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_15

    .line 247
    :cond_14
    :goto_14
    :pswitch_14
    return-void

    .line 192
    :cond_15
    packed-switch p3, :pswitch_data_54

    .line 220
    new-instance v1, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v1}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 221
    const-string/jumbo v0, "token"

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$3;->a:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    iget-object v2, v2, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    new-instance v2, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$3;->a:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    iget-object v3, v0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->a:Landroid/app/Activity;

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$3;->a:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->b(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/marketplace/model/url/UrlModel;->getUrlAddCart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/bzbs/marketplace/asynctask/http/HttpMethod;->b:Lcom/bzbs/marketplace/asynctask/http/HttpMethod;

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/bzbs/marketplace/asynctask/http/HttpMethod;)V

    new-instance v0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$3$1;

    invoke-direct {v0, p0}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$3$1;-><init>(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$3;)V

    invoke-virtual {v2, v0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->a(Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;)V

    goto :goto_14

    .line 192
    nop

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_14
        :pswitch_14
    .end packed-switch
.end method
