.class Lcom/samsung/privilege/service/BeaconStarterService$5;
.super Ljava/lang/Object;
.source "BeaconStarterService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/service/BeaconStarterService;->a(Lcom/bzbs/bean/MessageGCM;I)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/bzbs/bean/MessageGCM;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/samsung/privilege/service/BeaconStarterService;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/service/BeaconStarterService;Landroid/app/Dialog;Lcom/bzbs/bean/MessageGCM;ILjava/lang/String;)V
    .registers 6

    .prologue
    .line 592
    iput-object p1, p0, Lcom/samsung/privilege/service/BeaconStarterService$5;->e:Lcom/samsung/privilege/service/BeaconStarterService;

    iput-object p2, p0, Lcom/samsung/privilege/service/BeaconStarterService$5;->a:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/samsung/privilege/service/BeaconStarterService$5;->b:Lcom/bzbs/bean/MessageGCM;

    iput p4, p0, Lcom/samsung/privilege/service/BeaconStarterService$5;->c:I

    iput-object p5, p0, Lcom/samsung/privilege/service/BeaconStarterService$5;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 595
    iget-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService$5;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 597
    iget-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService$5;->b:Lcom/bzbs/bean/MessageGCM;

    iget-object v0, v0, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v1, "campaign_beacon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 598
    iget-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService$5;->b:Lcom/bzbs/bean/MessageGCM;

    iget-object v0, v0, Lcom/bzbs/bean/MessageGCM;->agency_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/privilege/service/BeaconStarterService$5;->e:Lcom/samsung/privilege/service/BeaconStarterService;

    invoke-virtual {v1}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 599
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/privilege/service/BeaconStarterService$5;->e:Lcom/samsung/privilege/service/BeaconStarterService;

    invoke-virtual {v1}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 600
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 601
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "com.samsung.privilege.service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 602
    const-string/jumbo v1, "campaign_id"

    iget-object v2, p0, Lcom/samsung/privilege/service/BeaconStarterService$5;->b:Lcom/bzbs/bean/MessageGCM;

    iget-object v2, v2, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    invoke-static {v2}, Lcom/bzbs/util/BBUtil;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 603
    const-string/jumbo v1, "from_noti"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 604
    const-string/jumbo v1, "from_noti_type"

    iget-object v2, p0, Lcom/samsung/privilege/service/BeaconStarterService$5;->b:Lcom/bzbs/bean/MessageGCM;

    iget-object v2, v2, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 605
    const-string/jumbo v1, "from_noti_alert"

    iget-object v2, p0, Lcom/samsung/privilege/service/BeaconStarterService$5;->b:Lcom/bzbs/bean/MessageGCM;

    iget-object v2, v2, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 606
    iget-object v1, p0, Lcom/samsung/privilege/service/BeaconStarterService$5;->e:Lcom/samsung/privilege/service/BeaconStarterService;

    invoke-virtual {v1, v0}, Lcom/samsung/privilege/service/BeaconStarterService;->startActivity(Landroid/content/Intent;)V

    .line 626
    :goto_81
    const-string/jumbo v0, "Push Notification"

    const-string/jumbo v1, "Open Bzbs Campaign Beacon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/privilege/service/BeaconStarterService$5;->b:Lcom/bzbs/bean/MessageGCM;

    iget-object v3, v3, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/service/BeaconStarterService$5;->b:Lcom/bzbs/bean/MessageGCM;

    iget-object v3, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    :cond_aa
    :try_start_aa
    const-string/jumbo v0, "notification"

    .line 631
    iget-object v1, p0, Lcom/samsung/privilege/service/BeaconStarterService$5;->e:Lcom/samsung/privilege/service/BeaconStarterService;

    invoke-virtual {v1, v0}, Lcom/samsung/privilege/service/BeaconStarterService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 632
    iget v1, p0, Lcom/samsung/privilege/service/BeaconStarterService$5;->c:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_ba} :catch_148

    .line 637
    :goto_ba
    iget-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService$5;->e:Lcom/samsung/privilege/service/BeaconStarterService;

    invoke-virtual {v0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/service/BeaconStarterService$5;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->z(Landroid/content/Context;Ljava/lang/String;)V

    .line 638
    return-void

    .line 608
    :cond_c6
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/privilege/service/BeaconStarterService$5;->e:Lcom/samsung/privilege/service/BeaconStarterService;

    invoke-virtual {v1}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 609
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "com.samsung.privilege.service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 610
    new-instance v1, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

    invoke-direct {v1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;-><init>()V

    .line 611
    iget-object v2, p0, Lcom/samsung/privilege/service/BeaconStarterService$5;->b:Lcom/bzbs/bean/MessageGCM;

    iget-object v2, v2, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setID(Ljava/lang/String;)V

    .line 612
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 613
    const-string/jumbo v3, "ItemMarketPlace"

    invoke-static {v1}, Lorg/parceler/Parcels;->a(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 614
    iget-object v1, p0, Lcom/samsung/privilege/service/BeaconStarterService$5;->b:Lcom/bzbs/bean/MessageGCM;

    iget-object v1, v1, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v3, "ads"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_140

    .line 615
    const-string/jumbo v1, "ItemMarketPlace::Ads::Ins"

    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 619
    :goto_11c
    const-string/jumbo v1, "from_noti"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 620
    const-string/jumbo v1, "from_noti_type"

    iget-object v3, p0, Lcom/samsung/privilege/service/BeaconStarterService$5;->b:Lcom/bzbs/bean/MessageGCM;

    iget-object v3, v3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 621
    const-string/jumbo v1, "from_noti_alert"

    iget-object v3, p0, Lcom/samsung/privilege/service/BeaconStarterService$5;->b:Lcom/bzbs/bean/MessageGCM;

    iget-object v3, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 622
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 623
    iget-object v1, p0, Lcom/samsung/privilege/service/BeaconStarterService$5;->e:Lcom/samsung/privilege/service/BeaconStarterService;

    invoke-virtual {v1, v0}, Lcom/samsung/privilege/service/BeaconStarterService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_81

    .line 617
    :cond_140
    const-string/jumbo v1, "ItemMarketPlace::Ads::Ins"

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_11c

    .line 633
    :catch_148
    move-exception v0

    goto/16 :goto_ba
.end method
