.class Lcom/bzbs/marketplace/base/BaseAppCompatActivity$5;
.super Ljava/lang/Object;
.source "BaseAppCompatActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bzbs/marketplace/base/BaseAppCompatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    .prologue
    .line 548
    iput-object p1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$5;->this$0:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 551
    iget-object v2, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$5;->this$0:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v2, v2, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->btnBasket:Landroid/widget/ImageView;

    if-eq p1, v2, :cond_c

    iget-object v2, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$5;->this$0:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v2, v2, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->layoutBasket:Landroid/widget/RelativeLayout;

    if-ne p1, v2, :cond_56

    .line 553
    :cond_c
    iget-object v2, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$5;->this$0:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v2, v2, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    instance-of v2, v2, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;

    if-eqz v2, :cond_20

    .line 555
    const-string/jumbo v2, "BZB Campaign Details"

    const-string/jumbo v3, "Click Shopping Cart"

    const-string/jumbo v4, ""

    invoke-static {v2, v3, v4}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    :cond_20
    iget-object v2, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$5;->this$0:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v2, v2, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    instance-of v2, v2, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    if-eqz v2, :cond_34

    .line 559
    const-string/jumbo v2, "BZB Marketplace"

    const-string/jumbo v3, "Click Shopping Cart"

    const-string/jumbo v4, ""

    invoke-static {v2, v3, v4}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    :cond_34
    iget-object v2, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$5;->this$0:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v2, v2, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBeesForBuyPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/marketplace/model/url/UrlModel;->getUrlBasketToolbar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 566
    .local v1, "url":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$5;->this$0:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v2, v2, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    const-class v3, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 567
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "url"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 568
    iget-object v2, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$5;->this$0:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-virtual {v2, v0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->startActivity(Landroid/content/Intent;)V

    .line 570
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "url":Ljava/lang/String;
    :cond_56
    return-void
.end method
