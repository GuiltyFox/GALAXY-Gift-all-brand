.class Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener$1;
.super Ljava/lang/Object;
.source "HistoryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;->onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 529
    iput-object p1, p0, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;

    iput-object p2, p0, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 534
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener$1;->a:Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 554
    new-instance v3, Lcom/bzbs/bean/Campaign;

    invoke-direct {v3}, Lcom/bzbs/bean/Campaign;-><init>()V

    .line 555
    const-string/jumbo v0, "CampaignId"

    invoke-static {v1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

    .line 556
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;

    invoke-static {v0}, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;->a(Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;)Lcom/bzbs/bean/Purchasing;

    move-result-object v0

    iget-object v0, v0, Lcom/bzbs/bean/Purchasing;->AgencyID:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/bzbs/bean/Campaign;->AgencyID:Ljava/lang/String;

    .line 557
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;

    invoke-static {v0}, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;->a(Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;)Lcom/bzbs/bean/Purchasing;

    move-result-object v0

    iget-object v0, v0, Lcom/bzbs/bean/Purchasing;->AgencyName:Ljava/lang/String;

    iput-object v0, v3, Lcom/bzbs/bean/Campaign;->AgencyName:Ljava/lang/String;

    .line 558
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;

    invoke-static {v0}, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;->a(Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;)Lcom/bzbs/bean/Purchasing;

    move-result-object v0

    iget-object v0, v0, Lcom/bzbs/bean/Purchasing;->Barcode:Ljava/lang/String;

    iput-object v0, v3, Lcom/bzbs/bean/Campaign;->Barcode:Ljava/lang/String;

    .line 559
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;

    invoke-static {v0}, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;->a(Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;)Lcom/bzbs/bean/Purchasing;

    move-result-object v0

    iget-object v0, v0, Lcom/bzbs/bean/Purchasing;->Type:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/bzbs/bean/Campaign;->Type:Ljava/lang/String;

    .line 560
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;

    invoke-static {v0}, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;->a(Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;)Lcom/bzbs/bean/Purchasing;

    move-result-object v0

    iget-object v0, v0, Lcom/bzbs/bean/Purchasing;->CategoryID:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/bzbs/bean/Campaign;->CategoryID:Ljava/lang/String;

    .line 561
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;

    invoke-static {v0}, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;->a(Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;)Lcom/bzbs/bean/Purchasing;

    move-result-object v0

    iget v0, v0, Lcom/bzbs/bean/Purchasing;->MinutesValidAfterUsed:I

    iput v0, v3, Lcom/bzbs/bean/Campaign;->MinutesValidAfterUsed:I

    .line 563
    const-string/jumbo v0, "Serial"

    invoke-static {v1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 564
    const-string/jumbo v0, "ExpireIn"

    invoke-static {v1, v0}, Lcom/bzbs/util/JsonUtil;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 565
    const-string/jumbo v0, "PrivilegeMessage"

    invoke-static {v1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 566
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;

    invoke-static {v0}, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;->a(Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;)Lcom/bzbs/bean/Purchasing;

    move-result-object v0

    iget-wide v8, v0, Lcom/bzbs/bean/Purchasing;->VoucherExpireDate:J

    .line 578
    iget-object v0, v3, Lcom/bzbs/bean/Campaign;->Barcode:Ljava/lang/String;

    if-eqz v0, :cond_cd

    iget-object v0, v3, Lcom/bzbs/bean/Campaign;->Barcode:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cd

    .line 579
    iget-object v0, v3, Lcom/bzbs/bean/Campaign;->Barcode:Ljava/lang/String;

    const-string/jumbo v2, "QR_CODE_WALLETCARD"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23c

    .line 580
    const-string/jumbo v0, "QR_CODE"

    iput-object v0, v3, Lcom/bzbs/bean/Campaign;->Barcode:Ljava/lang/String;

    .line 581
    const-string/jumbo v0, "WalletCard"

    invoke-static {v1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 582
    if-eqz v0, :cond_23c

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23c

    .line 586
    :goto_ab
    iget-object v2, v3, Lcom/bzbs/bean/Campaign;->Barcode:Ljava/lang/String;

    const-string/jumbo v5, "CODE_128_WALLETCARD"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_239

    .line 587
    const-string/jumbo v2, "CODE_128"

    iput-object v2, v3, Lcom/bzbs/bean/Campaign;->Barcode:Ljava/lang/String;

    .line 588
    const-string/jumbo v2, "WalletCard"

    invoke-static {v1, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 589
    if-eqz v5, :cond_239

    const-string/jumbo v2, ""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_239

    .line 595
    :cond_cd
    :goto_cd
    iget-object v0, v3, Lcom/bzbs/bean/Campaign;->Type:Ljava/lang/String;

    const-string/jumbo v2, "777"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10b

    .line 596
    const-string/jumbo v0, "Website"

    invoke-static {v1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 597
    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;

    iget-object v1, v1, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    iget-object v2, p0, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;

    invoke-static {v2}, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;->a(Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;)Lcom/bzbs/bean/Purchasing;

    move-result-object v2

    iget-object v2, v2, Lcom/bzbs/bean/Purchasing;->RedeemKey:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/samsung/privilege/activity/HistoryActivity;->a(Lcom/samsung/privilege/activity/HistoryActivity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_ee} :catch_138

    .line 630
    :goto_ee
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/HistoryActivity;->j(Lcom/samsung/privilege/activity/HistoryActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 632
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;

    invoke-static {v0}, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;->b(Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10a

    .line 633
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/HistoryActivity;->a(Lcom/samsung/privilege/activity/HistoryActivity;I)V

    .line 635
    :cond_10a
    return-void

    .line 599
    :cond_10b
    :try_start_10b
    iget-object v0, v3, Lcom/bzbs/bean/Campaign;->Type:Ljava/lang/String;

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_121

    .line 600
    if-eqz v6, :cond_145

    const-string/jumbo v0, ""

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_145

    .line 623
    :cond_121
    :goto_121
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;

    iget-object v1, v1, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/HistoryActivity;->k(Lcom/samsung/privilege/activity/HistoryActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;

    invoke-static {v2}, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;->a(Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;)Lcom/bzbs/bean/Purchasing;

    move-result-object v2

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/samsung/privilege/util/DialogSerialGift;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/bzbs/bean/Purchasing;Lcom/bzbs/bean/Campaign;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/bzbs/bean/NFCTag;)V
    :try_end_137
    .catch Ljava/lang/Exception; {:try_start_10b .. :try_end_137} :catch_138

    goto :goto_ee

    .line 625
    :catch_138
    move-exception v0

    .line 626
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 627
    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;

    iget-object v1, v1, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-static {v1, v0}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_ee

    .line 603
    :cond_145
    :try_start_145
    const-string/jumbo v0, ""

    .line 604
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "<p align=\'center\' style=\'color:#0774b5\'>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;

    iget-object v1, v1, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    const v2, 0x7f090142

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/HistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "<br>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 607
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;

    iget-object v1, v1, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    const v2, 0x7f090143

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/HistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "<br>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 608
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;

    iget-object v1, v1, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    const v2, 0x7f090144

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/HistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "<br>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 609
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;

    iget-object v1, v1, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    const v2, 0x7f090145

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/HistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "<br>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 612
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "dd MMM yyyy"

    iget-object v6, p0, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;

    iget-object v6, v6, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-virtual {v6}, Lcom/samsung/privilege/activity/HistoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/util/LanguageSetting;->b(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v1, v2, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 613
    const-string/jumbo v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 614
    new-instance v2, Ljava/util/Date;

    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v8

    invoke-direct {v2, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 616
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 617
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</p>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_236
    .catch Ljava/lang/Exception; {:try_start_145 .. :try_end_236} :catch_138

    move-result-object v6

    goto/16 :goto_121

    :cond_239
    move-object v5, v0

    goto/16 :goto_cd

    :cond_23c
    move-object v0, v5

    goto/16 :goto_ab
.end method
