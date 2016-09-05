.class Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9$1;
.super Ljava/lang/Object;
.source "DashboardGiftRecyclerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 2578
    iput-object p1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;

    iput-object p2, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 2581
    :try_start_0
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9$1;->a:Ljava/lang/String;

    const-string/jumbo v1, "<"

    const-string/jumbo v2, "&lt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ">"

    const-string/jumbo v2, "&gt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2583
    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;

    iget-object v1, v1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-static {v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->i(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2586
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2587
    const-string/jumbo v0, "Serial"

    invoke-static {v1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2588
    const-string/jumbo v0, "PrivilegeMessage"

    invoke-static {v1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2589
    const-string/jumbo v0, "CurrentDate"

    invoke-static {v1, v0}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3a} :catch_143

    .line 2591
    :try_start_3a
    const-string/jumbo v0, "Points"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 2592
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;J)Z
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_4c} :catch_194

    .line 2596
    :goto_4c
    :try_start_4c
    const-string/jumbo v0, "ExpireIn"

    invoke-static {v1, v0}, Lcom/bzbs/util/JsonUtil;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 2598
    new-instance v3, Lcom/bzbs/bean/Campaign;

    invoke-direct {v3}, Lcom/bzbs/bean/Campaign;-><init>()V

    .line 2599
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;->a:Lcom/bzbs/bean/DashboardItem;

    iget v0, v0, Lcom/bzbs/bean/DashboardItem;->id:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

    .line 2601
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;->a:Lcom/bzbs/bean/DashboardItem;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->line1:Ljava/lang/String;

    iput-object v0, v3, Lcom/bzbs/bean/Campaign;->Name:Ljava/lang/String;

    .line 2602
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;->a:Lcom/bzbs/bean/DashboardItem;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->line2:Ljava/lang/String;

    iput-object v0, v3, Lcom/bzbs/bean/Campaign;->AgencyName:Ljava/lang/String;

    .line 2603
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;->a:Lcom/bzbs/bean/DashboardItem;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->campaignbarcode:Ljava/lang/String;

    iput-object v0, v3, Lcom/bzbs/bean/Campaign;->Barcode:Ljava/lang/String;

    .line 2604
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;->a:Lcom/bzbs/bean/DashboardItem;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->campaigntype:Ljava/lang/String;

    iput-object v0, v3, Lcom/bzbs/bean/Campaign;->Type:Ljava/lang/String;

    .line 2607
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;

    iget-object v1, v1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;->a:Lcom/bzbs/bean/DashboardItem;

    iget v1, v1, Lcom/bzbs/bean/DashboardItem;->id:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2608
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;

    iget-object v1, v1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;->a:Lcom/bzbs/bean/DashboardItem;

    iget v1, v1, Lcom/bzbs/bean/DashboardItem;->id:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/bzbs/data/UserLogin;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2610
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->f(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)V

    .line 2612
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;->a:Lcom/bzbs/bean/DashboardItem;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    if-eqz v0, :cond_12d

    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;->a:Lcom/bzbs/bean/DashboardItem;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_c9} :catch_143

    move-result v0

    if-nez v0, :cond_12d

    .line 2614
    :try_start_cc
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_f0

    .line 2615
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 2616
    invoke-virtual {v0, v5}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 2618
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    const-string/jumbo v1, "Your discount code is already in clipboard."

    invoke-static {v0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->c(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/lang/String;)V
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_f0} :catch_191

    .line 2624
    :cond_f0
    :goto_f0
    :try_start_f0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;

    iget-object v1, v1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/WebViewRedeemActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2625
    const-string/jumbo v1, "url"

    iget-object v2, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;

    iget-object v2, v2, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;->a:Lcom/bzbs/bean/DashboardItem;

    iget-object v2, v2, Lcom/bzbs/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2626
    const-string/jumbo v1, "serial"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2627
    const-string/jumbo v1, "enable_webview_back"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2628
    const-string/jumbo v1, "hide_serial"

    iget-object v2, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;

    iget-object v2, v2, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;->a:Lcom/bzbs/bean/DashboardItem;

    iget-boolean v2, v2, Lcom/bzbs/bean/DashboardItem;->autoredeem_hideserial:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2629
    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;

    iget-object v1, v1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2644
    :goto_12c
    return-void

    .line 2633
    :cond_12d
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;

    iget-object v1, v1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-static {v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->b(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/samsung/privilege/util/DialogSerialGift;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/bzbs/bean/Purchasing;Lcom/bzbs/bean/Campaign;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/bzbs/bean/NFCTag;)V
    :try_end_142
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_142} :catch_143

    goto :goto_12c

    .line 2635
    :catch_143
    move-exception v0

    move-object v1, v0

    .line 2636
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->i(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2638
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    const v2, 0x7f0900be

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2639
    iget-object v2, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;

    iget-object v2, v2, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_185

    .line 2640
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\r\n\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2642
    :cond_185
    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;

    iget-object v1, v1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_12c

    .line 2620
    :catch_191
    move-exception v0

    goto/16 :goto_f0

    .line 2593
    :catch_194
    move-exception v0

    goto/16 :goto_4c
.end method
