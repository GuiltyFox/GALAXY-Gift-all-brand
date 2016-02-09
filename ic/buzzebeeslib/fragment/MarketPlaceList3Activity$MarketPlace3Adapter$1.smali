.class Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$1;
.super Ljava/lang/Object;
.source "MarketPlaceList3Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;

.field private final synthetic val$campaign_type_final:Ljava/lang/String;

.field private final synthetic val$campaign_website_final:Ljava/lang/String;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;

    iput-object p2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$1;->val$campaign_type_final:Ljava/lang/String;

    iput-object p3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$1;->val$campaign_website_final:Ljava/lang/String;

    .line 1393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1396
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$1;->val$campaign_type_final:Ljava/lang/String;

    const-string v4, "3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b8

    .line 1397
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$1;->val$campaign_website_final:Ljava/lang/String;

    if-eqz v3, :cond_b8

    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$1;->val$campaign_website_final:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b8

    .line 1399
    :try_start_18
    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$1;->val$campaign_website_final:Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1a} :catch_e5

    .line 1402
    .local v2, "url":Ljava/lang/String;
    :try_start_1a
    const-string v3, "<uid>"

    iget-object v4, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;
    invoke-static {v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->access$1(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;)Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    move-result-object v4

    invoke-virtual {v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lic/buzzebeeslib/LibUserLogin;->GetFacebookUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1403
    new-instance v0, Lic/buzzebeeslib/util/DeviceHelper;

    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;
    invoke-static {v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->access$1(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;)Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    move-result-object v3

    invoke-virtual {v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lic/buzzebeeslib/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 1404
    .local v0, "deviceHelper":Lic/buzzebeeslib/util/DeviceHelper;
    const-string v3, "<deviceId>"

    invoke-virtual {v0}, Lic/buzzebeeslib/util/DeviceHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_46} :catch_e7

    move-result-object v2

    .line 1409
    .end local v0    # "deviceHelper":Lic/buzzebeeslib/util/DeviceHelper;
    :goto_47
    :try_start_47
    const-string v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_66

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_66

    .line 1410
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1412
    :cond_66
    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b9

    .line 1413
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;
    invoke-static {v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->access$1(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;)Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    move-result-object v4

    invoke-virtual {v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBeesForBuyPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&return_url=bzbs_buy_return_url&header=false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1418
    :goto_99
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;
    invoke-static {v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->access$1(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;)Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    move-result-object v3

    invoke-virtual {v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lic/buzzebeeslib/activity/WebViewBuyPointActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1419
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "url"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1420
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;
    invoke-static {v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->access$1(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;)Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->startActivity(Landroid/content/Intent;)V

    .line 1426
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "url":Ljava/lang/String;
    :cond_b8
    :goto_b8
    return-void

    .line 1415
    .restart local v2    # "url":Ljava/lang/String;
    :cond_b9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "?token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;
    invoke-static {v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->access$1(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;)Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    move-result-object v4

    invoke-virtual {v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBeesForBuyPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&return_url=bzbs_buy_return_url&header=false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_e3} :catch_e5

    move-result-object v2

    goto :goto_99

    .line 1421
    .end local v2    # "url":Ljava/lang/String;
    :catch_e5
    move-exception v3

    goto :goto_b8

    .line 1405
    .restart local v2    # "url":Ljava/lang/String;
    :catch_e7
    move-exception v3

    goto/16 :goto_47
.end method
