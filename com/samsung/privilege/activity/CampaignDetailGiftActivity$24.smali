.class Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$24;
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
    .line 2838
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$24;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$24;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$24;->b:Z

    iput-boolean p4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$24;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 2843
    :try_start_2
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$24;->a:Ljava/lang/String;

    const-string/jumbo v1, "<"

    const-string/jumbo v2, "&lt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ">"

    const-string/jumbo v2, "&gt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2845
    iget-boolean v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$24;->b:Z

    if-ne v1, v8, :cond_131

    .line 2847
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2848
    const-string/jumbo v0, "Serial"

    invoke-static {v2, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2849
    const-string/jumbo v0, "PrivilegeMessage"

    invoke-static {v2, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2850
    const-string/jumbo v1, "CurrentDate"

    invoke-static {v2, v1}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    .line 2851
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$24;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/Campaign;

    move-result-object v1

    iget-object v1, v1, Lcom/bzbs/bean/Campaign;->PointPerUnit:Ljava/lang/String;

    invoke-static {v1}, Lcom/bzbs/util/BBUtil;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_57

    .line 2852
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$24;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v3, "Points"

    invoke-static {v2, v3}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v1, v6, v7}, Lcom/bzbs/data/UserLogin;->c(Landroid/content/Context;J)Z

    .line 2854
    :cond_57
    const-string/jumbo v1, "ExpireIn"

    invoke-static {v2, v1}, Lcom/bzbs/util/JsonUtil;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 2866
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$24;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/Campaign;

    move-result-object v1

    iget-object v1, v1, Lcom/bzbs/bean/Campaign;->Barcode:Ljava/lang/String;

    if-eqz v1, :cond_d5

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$24;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/Campaign;

    move-result-object v1

    iget-object v1, v1, Lcom/bzbs/bean/Campaign;->Barcode:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d5

    .line 2867
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$24;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/Campaign;

    move-result-object v1

    iget-object v1, v1, Lcom/bzbs/bean/Campaign;->Barcode:Ljava/lang/String;

    const-string/jumbo v3, "QR_CODE_WALLETCARD"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_364

    .line 2868
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$24;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/Campaign;

    move-result-object v1

    const-string/jumbo v3, "QR_CODE"

    iput-object v3, v1, Lcom/bzbs/bean/Campaign;->Barcode:Ljava/lang/String;

    .line 2869
    const-string/jumbo v1, "WalletCard"

    invoke-static {v2, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2870
    if-eqz v1, :cond_364

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_364

    .line 2874
    :goto_a7
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$24;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/Campaign;

    move-result-object v3

    iget-object v3, v3, Lcom/bzbs/bean/Campaign;->Barcode:Ljava/lang/String;

    const-string/jumbo v5, "CODE_128_WALLETCARD"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_361

    .line 2875
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$24;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/Campaign;

    move-result-object v3

    const-string/jumbo v5, "CODE_128"

    iput-object v5, v3, Lcom/bzbs/bean/Campaign;->Barcode:Ljava/lang/String;

    .line 2876
    const-string/jumbo v3, "WalletCard"

    invoke-static {v2, v3}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2877
    if-eqz v5, :cond_361

    const-string/jumbo v3, ""

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_361

    .line 2883
    :cond_d5
    :goto_d5
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$24;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/Campaign;

    move-result-object v1

    iget-object v1, v1, Lcom/bzbs/bean/Campaign;->Type:Ljava/lang/String;

    const-string/jumbo v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f1

    .line 2884
    if-eqz v0, :cond_1eb

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1eb

    .line 2903
    :cond_f1
    :goto_f1
    const-string/jumbo v1, "NFCWriteBack"

    invoke-static {v2, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2904
    if-eqz v1, :cond_2c9

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c9

    .line 2905
    new-instance v0, Lcom/bzbs/util/DeviceHelper;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$24;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bzbs/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 2906
    invoke-virtual {v0}, Lcom/bzbs/util/DeviceHelper;->d()Ljava/lang/String;

    move-result-object v0

    .line 2908
    const-string/jumbo v1, "IMEI=<imei>;SERIAL=<serial>;PRICE=<price>;"

    .line 2909
    const-string/jumbo v2, "<imei>"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2910
    const-string/jumbo v1, "<serial>"

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2911
    const-string/jumbo v1, "<price>"

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$24;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/Campaign;

    move-result-object v2

    iget-object v2, v2, Lcom/bzbs/bean/Campaign;->PricePerUnit:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2929
    :cond_131
    :goto_131
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$24;->c:Z

    if-ne v0, v8, :cond_1b2

    .line 2930
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$24;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/Campaign;

    move-result-object v0

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->Website:Ljava/lang/String;

    invoke-static {v0}, Lcom/bzbs/util/BBUtil;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_147
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_147} :catch_2f7

    move-result v0

    if-nez v0, :cond_1b2

    .line 2932
    :try_start_14a
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$24;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/Campaign;

    move-result-object v0

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->Website:Ljava/lang/String;

    invoke-static {v0}, Lcom/bzbs/util/BBUtil;->a(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_155
    .catch Ljava/lang/Exception; {:try_start_14a .. :try_end_155} :catch_302

    move-result-object v0

    .line 2935
    :try_start_156
    new-instance v1, Lcom/bzbs/util/DeviceHelper;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$24;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bzbs/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 2936
    const-string/jumbo v2, "<deviceId>"

    invoke-virtual {v1}, Lcom/bzbs/util/DeviceHelper;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2937
    const-string/jumbo v1, "<uid>"

    invoke-static {}, Lcom/facebook/Profile;->getCurrentProfile()Lcom/facebook/Profile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/Profile;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_17a
    .catch Ljava/lang/Exception; {:try_start_156 .. :try_end_17a} :catch_35e

    move-result-object v0

    .line 2942
    :goto_17b
    :try_start_17b
    const-string/jumbo v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a1

    const-string/jumbo v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a1

    .line 2943
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2945
    :cond_1a1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2946
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$24;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1b2
    .catch Ljava/lang/Exception; {:try_start_17b .. :try_end_1b2} :catch_302

    .line 2965
    :cond_1b2
    :goto_1b2
    :try_start_1b2
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$24;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->b(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V

    .line 2966
    invoke-static {}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->g()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "getCampaign|processJsonRedeem"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2967
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$24;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$24;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

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

    .line 2969
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$24;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Z)Z

    .line 2970
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$24;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$24;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->r(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->b(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Z)V

    .line 2975
    :goto_1ea
    return-void

    .line 2887
    :cond_1eb
    const-string/jumbo v0, ""

    .line 2888
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "<p align=\'center\' style=\'color:#0774b5\'>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2890
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$24;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const v3, 0x7f090142

    invoke-virtual {v1, v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "<br>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2891
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$24;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const v3, 0x7f090143

    invoke-virtual {v1, v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "<br>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2892
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$24;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const v3, 0x7f090144

    invoke-virtual {v1, v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "<br>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2893
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$24;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const v3, 0x7f090145

    invoke-virtual {v1, v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "<br>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2895
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "dd MMM yyyy"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    iget-object v6, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$24;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v6}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/Campaign;

    move-result-object v6

    iget-wide v6, v6, Lcom/bzbs/bean/Campaign;->VoucherExpireDate:J

    const-wide/16 v10, 0x3e8

    mul-long/2addr v6, v10

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 2896
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2897
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</p>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_f1

    .line 2923
    :cond_2c9
    const-string/jumbo v1, "&lt;"

    const-string/jumbo v2, "<"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "&gt;"

    const-string/jumbo v2, ">"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2925
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$24;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$24;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$24;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/Campaign;

    move-result-object v3

    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$24;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v7}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->d(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/NFCTag;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/samsung/privilege/util/DialogSerialGift;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/bzbs/bean/Purchasing;Lcom/bzbs/bean/Campaign;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/bzbs/bean/NFCTag;)V
    :try_end_2f5
    .catch Ljava/lang/Exception; {:try_start_1b2 .. :try_end_2f5} :catch_2f7

    goto/16 :goto_131

    .line 2972
    :catch_2f7
    move-exception v0

    .line 2973
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$24;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const-string/jumbo v1, "Error While Redeem...\r\n{Invalid data format}..."

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->b(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Ljava/lang/String;)V

    goto/16 :goto_1ea

    .line 2947
    :catch_302
    move-exception v0

    move-object v1, v0

    .line 2950
    :try_start_304
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$24;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;)Z
    :try_end_30d
    .catch Ljava/lang/Exception; {:try_start_304 .. :try_end_30d} :catch_332

    move-result v0

    if-eqz v0, :cond_352

    move v0, v8

    .line 2956
    :goto_311
    if-ne v0, v8, :cond_354

    .line 2957
    :try_start_313
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$24;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

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

    goto/16 :goto_1b2

    .line 2953
    :catch_332
    move-exception v0

    .line 2954
    invoke-static {}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->g()Ljava/lang/String;

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

    :cond_352
    move v0, v9

    goto :goto_311

    .line 2959
    :cond_354
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$24;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const-string/jumbo v1, "Can\'t go to website"

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->b(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Ljava/lang/String;)V
    :try_end_35c
    .catch Ljava/lang/Exception; {:try_start_313 .. :try_end_35c} :catch_2f7

    goto/16 :goto_1b2

    .line 2938
    :catch_35e
    move-exception v1

    goto/16 :goto_17b

    :cond_361
    move-object v5, v1

    goto/16 :goto_d5

    :cond_364
    move-object v1, v5

    goto/16 :goto_a7
.end method
