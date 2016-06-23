.class Lcom/samsung/privilege/service/BeaconStarterService$4;
.super Ljava/lang/Object;
.source "BeaconStarterService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/service/BeaconStarterService;->showDialogBeacon(Lcom/bzbs/bean/MessageGCM;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/service/BeaconStarterService;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$intNotificationId:I

.field final synthetic val$messageGCM:Lcom/bzbs/bean/MessageGCM;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/service/BeaconStarterService;Landroid/app/Dialog;Lcom/bzbs/bean/MessageGCM;I)V
    .registers 5
    .param p1, "this$0"    # Lcom/samsung/privilege/service/BeaconStarterService;

    .prologue
    .line 543
    iput-object p1, p0, Lcom/samsung/privilege/service/BeaconStarterService$4;->this$0:Lcom/samsung/privilege/service/BeaconStarterService;

    iput-object p2, p0, Lcom/samsung/privilege/service/BeaconStarterService$4;->val$dialog:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/samsung/privilege/service/BeaconStarterService$4;->val$messageGCM:Lcom/bzbs/bean/MessageGCM;

    iput p4, p0, Lcom/samsung/privilege/service/BeaconStarterService$4;->val$intNotificationId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    .line 546
    iget-object v5, p0, Lcom/samsung/privilege/service/BeaconStarterService$4;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 548
    iget-object v5, p0, Lcom/samsung/privilege/service/BeaconStarterService$4;->val$messageGCM:Lcom/bzbs/bean/MessageGCM;

    iget-object v5, v5, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v6, "campaign_beacon"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_aa

    .line 549
    iget-object v5, p0, Lcom/samsung/privilege/service/BeaconStarterService$4;->val$messageGCM:Lcom/bzbs/bean/MessageGCM;

    iget-object v5, v5, Lcom/bzbs/bean/MessageGCM;->agency_id:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/privilege/service/BeaconStarterService$4;->this$0:Lcom/samsung/privilege/service/BeaconStarterService;

    invoke-virtual {v6}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/data/AppSetting;->SPONSOR_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_bb

    .line 550
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/samsung/privilege/service/BeaconStarterService$4;->this$0:Lcom/samsung/privilege/service/BeaconStarterService;

    invoke-virtual {v5}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 551
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 552
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "com.samsung.privilege.service"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 553
    const-string/jumbo v5, "campaign_id"

    iget-object v6, p0, Lcom/samsung/privilege/service/BeaconStarterService$4;->val$messageGCM:Lcom/bzbs/bean/MessageGCM;

    iget-object v6, v6, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    invoke-static {v6}, Lcom/bzbs/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 554
    const-string/jumbo v5, "from_noti"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 555
    const-string/jumbo v5, "from_noti_type"

    iget-object v6, p0, Lcom/samsung/privilege/service/BeaconStarterService$4;->val$messageGCM:Lcom/bzbs/bean/MessageGCM;

    iget-object v6, v6, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 556
    const-string/jumbo v5, "from_noti_alert"

    iget-object v6, p0, Lcom/samsung/privilege/service/BeaconStarterService$4;->val$messageGCM:Lcom/bzbs/bean/MessageGCM;

    iget-object v6, v6, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 557
    iget-object v5, p0, Lcom/samsung/privilege/service/BeaconStarterService$4;->this$0:Lcom/samsung/privilege/service/BeaconStarterService;

    invoke-virtual {v5, v1}, Lcom/samsung/privilege/service/BeaconStarterService;->startActivity(Landroid/content/Intent;)V

    .line 577
    :goto_81
    const-string/jumbo v5, "Push Notification"

    const-string/jumbo v6, "Open Bzbs Campaign Beacon"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/privilege/service/BeaconStarterService$4;->val$messageGCM:Lcom/bzbs/bean/MessageGCM;

    iget-object v8, v8, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/privilege/service/BeaconStarterService$4;->val$messageGCM:Lcom/bzbs/bean/MessageGCM;

    iget-object v8, v8, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_aa
    :try_start_aa
    const-string/jumbo v4, "notification"

    .line 582
    .local v4, "ns":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/privilege/service/BeaconStarterService$4;->this$0:Lcom/samsung/privilege/service/BeaconStarterService;

    invoke-virtual {v5, v4}, Lcom/samsung/privilege/service/BeaconStarterService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 583
    .local v3, "nMgr":Landroid/app/NotificationManager;
    iget v5, p0, Lcom/samsung/privilege/service/BeaconStarterService$4;->val$intNotificationId:I

    invoke-virtual {v3, v5}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_ba} :catch_13d

    .line 587
    .end local v3    # "nMgr":Landroid/app/NotificationManager;
    .end local v4    # "ns":Ljava/lang/String;
    :goto_ba
    return-void

    .line 559
    :cond_bb
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/samsung/privilege/service/BeaconStarterService$4;->this$0:Lcom/samsung/privilege/service/BeaconStarterService;

    invoke-virtual {v5}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 560
    .restart local v1    # "intent":Landroid/content/Intent;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "com.samsung.privilege.service"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 561
    new-instance v2, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

    invoke-direct {v2}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;-><init>()V

    .line 562
    .local v2, "model":Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;
    iget-object v5, p0, Lcom/samsung/privilege/service/BeaconStarterService$4;->val$messageGCM:Lcom/bzbs/bean/MessageGCM;

    iget-object v5, v5, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setID(Ljava/lang/String;)V

    .line 563
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 564
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v5, "ItemMarketPlace"

    invoke-static {v2}, Lorg/parceler/Parcels;->wrap(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 565
    iget-object v5, p0, Lcom/samsung/privilege/service/BeaconStarterService$4;->val$messageGCM:Lcom/bzbs/bean/MessageGCM;

    iget-object v5, v5, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v6, "ads"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_135

    .line 566
    const-string/jumbo v5, "ItemMarketPlace::Ads::Ins"

    invoke-virtual {v0, v5, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 570
    :goto_111
    const-string/jumbo v5, "from_noti"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 571
    const-string/jumbo v5, "from_noti_type"

    iget-object v6, p0, Lcom/samsung/privilege/service/BeaconStarterService$4;->val$messageGCM:Lcom/bzbs/bean/MessageGCM;

    iget-object v6, v6, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 572
    const-string/jumbo v5, "from_noti_alert"

    iget-object v6, p0, Lcom/samsung/privilege/service/BeaconStarterService$4;->val$messageGCM:Lcom/bzbs/bean/MessageGCM;

    iget-object v6, v6, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 573
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 574
    iget-object v5, p0, Lcom/samsung/privilege/service/BeaconStarterService$4;->this$0:Lcom/samsung/privilege/service/BeaconStarterService;

    invoke-virtual {v5, v1}, Lcom/samsung/privilege/service/BeaconStarterService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_81

    .line 568
    :cond_135
    const-string/jumbo v5, "ItemMarketPlace::Ads::Ins"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_111

    .line 584
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "model":Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;
    :catch_13d
    move-exception v5

    goto/16 :goto_ba
.end method
