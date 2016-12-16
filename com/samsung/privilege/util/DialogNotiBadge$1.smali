.class final Lcom/samsung/privilege/util/DialogNotiBadge$1;
.super Ljava/lang/Object;
.source "DialogNotiBadge.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogNotiBadge;->a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/app/Dialog;Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 55
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogNotiBadge$1;->a:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogNotiBadge$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/privilege/util/DialogNotiBadge$1;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    .prologue
    const/4 v3, 0x2

    .line 58
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogNotiBadge$1;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 61
    :try_start_6
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogNotiBadge$1;->b:Ljava/lang/String;

    const-string/jumbo v1, ":"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 62
    array-length v1, v0

    if-ne v1, v3, :cond_de

    .line 63
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string/jumbo v2, "campaignId"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 64
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogNotiBadge$1;->c:Landroid/content/Context;

    const-class v3, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    const-string/jumbo v2, "campaign_id"

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 66
    iget-object v2, p0, Lcom/samsung/privilege/util/DialogNotiBadge$1;->c:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 68
    :cond_3a
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string/jumbo v2, "campaignbzbId"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 69
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogNotiBadge$1;->c:Landroid/content/Context;

    const-class v3, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    new-instance v2, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

    invoke-direct {v2}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;-><init>()V

    .line 71
    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setID(Ljava/lang/String;)V

    .line 72
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 73
    const-string/jumbo v4, "ItemMarketPlace"

    invoke-static {v2}, Lorg/parceler/Parcels;->a(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 74
    const-string/jumbo v2, "ItemMarketPlace::Ads::Ins"

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 75
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 76
    iget-object v2, p0, Lcom/samsung/privilege/util/DialogNotiBadge$1;->c:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 78
    :cond_78
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string/jumbo v2, "dashboard"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 79
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogNotiBadge$1;->c:Landroid/content/Context;

    const-class v3, Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    const-string/jumbo v2, "dashboard_key"

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    iget-object v2, p0, Lcom/samsung/privilege/util/DialogNotiBadge$1;->c:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 83
    :cond_9b
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    .line 84
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 85
    iget-object v2, p0, Lcom/samsung/privilege/util/DialogNotiBadge$1;->c:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 87
    :cond_bb
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string/jumbo v2, "categoryId"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_de

    .line 88
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogNotiBadge$1;->c:Landroid/content/Context;

    const-class v3, Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    const-string/jumbo v2, "category_noti"

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogNotiBadge$1;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_de} :catch_df

    .line 96
    :cond_de
    :goto_de
    return-void

    .line 93
    :catch_df
    move-exception v0

    goto :goto_de
.end method
