.class Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;
.super Ljava/lang/Object;
.source "CampaignDetailGiftActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Ljava/lang/String;ZZ)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Ljava/lang/String;ZZ)V
    .registers 5

    .prologue
    .line 2713
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->b:Z

    iput-boolean p4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 2718
    :try_start_2
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->a:Ljava/lang/String;

    const-string/jumbo v1, "<"

    const-string/jumbo v2, "&lt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ">"

    const-string/jumbo v2, "&gt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2720
    iget-boolean v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->b:Z

    if-ne v1, v8, :cond_ba

    .line 2722
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2723
    const-string/jumbo v0, "Serial"

    invoke-static {v1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2724
    const-string/jumbo v0, "PrivilegeMessage"

    invoke-static {v1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2725
    const-string/jumbo v2, "CurrentDate"

    invoke-static {v1, v2}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    .line 2726
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/Campaign;

    move-result-object v2

    iget-object v2, v2, Lcom/bzbs/bean/Campaign;->PointPerUnit:Ljava/lang/String;

    invoke-static {v2}, Lcom/bzbs/util/BBUtil;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_57

    .line 2727
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "Points"

    invoke-static {v1, v3}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v2, v6, v7}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;J)Z

    .line 2729
    :cond_57
    const-string/jumbo v2, "ExpireIn"

    invoke-static {v1, v2}, Lcom/bzbs/util/JsonUtil;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 2731
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/Campaign;

    move-result-object v2

    iget-object v2, v2, Lcom/bzbs/bean/Campaign;->Type:Ljava/lang/String;

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 2732
    if-eqz v0, :cond_174

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_174

    .line 2751
    :cond_7a
    :goto_7a
    const-string/jumbo v2, "NFCWriteBack"

    invoke-static {v1, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2752
    if-eqz v1, :cond_252

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_252

    .line 2753
    new-instance v0, Lcom/bzbs/util/DeviceHelper;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bzbs/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 2754
    invoke-virtual {v0}, Lcom/bzbs/util/DeviceHelper;->d()Ljava/lang/String;

    move-result-object v0

    .line 2756
    const-string/jumbo v1, "IMEI=<imei>;SERIAL=<serial>;PRICE=<price>;"

    .line 2757
    const-string/jumbo v2, "<imei>"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2758
    const-string/jumbo v1, "<serial>"

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2759
    const-string/jumbo v1, "<price>"

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/Campaign;

    move-result-object v2

    iget-object v2, v2, Lcom/bzbs/bean/Campaign;->PricePerUnit:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2777
    :cond_ba
    :goto_ba
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->c:Z

    if-ne v0, v8, :cond_13b

    .line 2778
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/Campaign;

    move-result-object v0

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->Website:Ljava/lang/String;

    invoke-static {v0}, Lcom/bzbs/util/BBUtil;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d0} :catch_280

    move-result v0

    if-nez v0, :cond_13b

    .line 2780
    :try_start_d3
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/Campaign;

    move-result-object v0

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->Website:Ljava/lang/String;

    invoke-static {v0}, Lcom/bzbs/util/BBUtil;->a(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_de} :catch_28b

    move-result-object v0

    .line 2783
    :try_start_df
    new-instance v1, Lcom/bzbs/util/DeviceHelper;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bzbs/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 2784
    const-string/jumbo v2, "<deviceId>"

    invoke-virtual {v1}, Lcom/bzbs/util/DeviceHelper;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2785
    const-string/jumbo v1, "<uid>"

    invoke-static {}, Lcom/facebook/Profile;->getCurrentProfile()Lcom/facebook/Profile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/Profile;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_103} :catch_2e7

    move-result-object v0

    .line 2790
    :goto_104
    :try_start_104
    const-string/jumbo v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12a

    const-string/jumbo v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12a

    .line 2791
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2793
    :cond_12a
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2794
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_13b
    .catch Ljava/lang/Exception; {:try_start_104 .. :try_end_13b} :catch_28b

    .line 2813
    :cond_13b
    :goto_13b
    :try_start_13b
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->b(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V

    .line 2814
    invoke-static {}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->h()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "getCampaign|processJsonRedeem"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2815
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/Campaign;

    move-result-object v1

    iget-object v1, v1, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v1}, Lcom/bzbs/util/BBUtil;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;ILcom/bzbs/bean/NFCTag;ZZ)V

    .line 2817
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Z)Z

    .line 2818
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->r(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->b(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Z)V

    .line 2823
    :goto_173
    return-void

    .line 2735
    :cond_174
    const-string/jumbo v0, ""

    .line 2736
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "<p align=\'center\' style=\'color:#0774b5\'>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2738
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const v3, 0x7f090141

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "<br>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2739
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const v3, 0x7f090142

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "<br>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2740
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const v3, 0x7f090143

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "<br>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2741
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const v3, 0x7f090144

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "<br>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2743
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "dd MMM yyyy"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    iget-object v6, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v6}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/Campaign;

    move-result-object v6

    iget-wide v6, v6, Lcom/bzbs/bean/Campaign;->VoucherExpireDate:J

    const-wide/16 v10, 0x3e8

    mul-long/2addr v6, v10

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 2744
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2745
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "</p>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7a

    .line 2771
    :cond_252
    const-string/jumbo v1, "&lt;"

    const-string/jumbo v2, "<"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "&gt;"

    const-string/jumbo v2, ">"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2773
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/Campaign;

    move-result-object v3

    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v7}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->d(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/NFCTag;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/samsung/privilege/util/DialogSerialGift;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/bzbs/bean/Purchasing;Lcom/bzbs/bean/Campaign;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/bzbs/bean/NFCTag;)V
    :try_end_27e
    .catch Ljava/lang/Exception; {:try_start_13b .. :try_end_27e} :catch_280

    goto/16 :goto_ba

    .line 2820
    :catch_280
    move-exception v0

    .line 2821
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const-string/jumbo v1, "Error While Redeem...\r\n{Invalid data format}..."

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->b(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Ljava/lang/String;)V

    goto/16 :goto_173

    .line 2795
    :catch_28b
    move-exception v0

    move-object v1, v0

    .line 2798
    :try_start_28d
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;)Z
    :try_end_296
    .catch Ljava/lang/Exception; {:try_start_28d .. :try_end_296} :catch_2bb

    move-result v0

    if-eqz v0, :cond_2db

    move v0, v8

    .line 2804
    :goto_29a
    if-ne v0, v8, :cond_2dd

    .line 2805
    :try_start_29c
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t go to website:\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->b(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Ljava/lang/String;)V

    goto/16 :goto_13b

    .line 2801
    :catch_2bb
    move-exception v0

    .line 2802
    invoke-static {}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->h()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception := "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2db
    move v0, v9

    goto :goto_29a

    .line 2807
    :cond_2dd
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const-string/jumbo v1, "Can\'t go to website"

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->b(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Ljava/lang/String;)V
    :try_end_2e5
    .catch Ljava/lang/Exception; {:try_start_29c .. :try_end_2e5} :catch_280

    goto/16 :goto_13b

    .line 2786
    :catch_2e7
    move-exception v1

    goto/16 :goto_104
.end method
