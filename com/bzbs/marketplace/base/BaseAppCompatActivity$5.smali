.class Lcom/bzbs/marketplace/base/BaseAppCompatActivity$5;
.super Ljava/lang/Object;
.source "BaseAppCompatActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bzbs/marketplace/base/BaseAppCompatActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;)V
    .registers 2

    .prologue
    .line 580
    iput-object p1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$5;->a:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 583
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$5;->a:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v0, v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->p:Landroid/widget/ImageView;

    if-eq p1, v0, :cond_c

    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$5;->a:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v0, v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->w:Landroid/widget/RelativeLayout;

    if-ne p1, v0, :cond_57

    .line 584
    :cond_c
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$5;->a:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v0, v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->g:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    instance-of v0, v0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;

    if-eqz v0, :cond_20

    .line 586
    const-string/jumbo v0, "BZB Campaign Details"

    const-string/jumbo v1, "Click Shopping Cart"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    :cond_20
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$5;->a:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v0, v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->g:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    instance-of v0, v0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    if-eqz v0, :cond_34

    .line 590
    const-string/jumbo v0, "BZB Marketplace"

    const-string/jumbo v1, "Click Shopping Cart"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    :cond_34
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$5;->a:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v0, v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->g:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/marketplace/model/url/UrlModel;->getUrlBasketToolbar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 595
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$5;->a:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v2, v2, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->g:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    const-class v3, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 596
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 597
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$5;->a:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->startActivity(Landroid/content/Intent;)V

    .line 601
    :cond_56
    :goto_56
    return-void

    .line 598
    :cond_57
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$5;->a:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v0, v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->s:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_56

    .line 599
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$5;->a:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v0, v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->g:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$5;->a:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-static {v1}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->b(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;)Landroid/os/Handler;

    move-result-object v1

    const-string/jumbo v2, "campaign_bzbs"

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/DialogSearch;->a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    goto :goto_56
.end method
