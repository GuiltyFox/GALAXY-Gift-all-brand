.class Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15$1;
.super Ljava/lang/Object;
.source "DashboardGiftRecyclerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 2984
    iput-object p1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;

    iput-object p2, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v2, 0x1

    .line 2988
    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15$1;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 2989
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v1, v2, :cond_12f

    .line 2990
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 2991
    const-string/jumbo v1, "Serial"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2992
    const-string/jumbo v1, "PrivilegeMessage"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2993
    const-string/jumbo v1, "CurrentDate"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    .line 2994
    const-string/jumbo v1, "ExpireIn"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 2996
    new-instance v3, Lcom/bzbs/bean/Campaign;

    invoke-direct {v3}, Lcom/bzbs/bean/Campaign;-><init>()V

    .line 2997
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;->a:Lcom/bzbs/bean/DashboardItem;

    iget v0, v0, Lcom/bzbs/bean/DashboardItem;->id:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

    .line 2999
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;->a:Lcom/bzbs/bean/DashboardItem;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->line1:Ljava/lang/String;

    iput-object v0, v3, Lcom/bzbs/bean/Campaign;->Name:Ljava/lang/String;

    .line 3000
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;->a:Lcom/bzbs/bean/DashboardItem;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->line2:Ljava/lang/String;

    iput-object v0, v3, Lcom/bzbs/bean/Campaign;->AgencyName:Ljava/lang/String;

    .line 3001
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;->a:Lcom/bzbs/bean/DashboardItem;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->campaignbarcode:Ljava/lang/String;

    iput-object v0, v3, Lcom/bzbs/bean/Campaign;->Barcode:Ljava/lang/String;

    .line 3002
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;->a:Lcom/bzbs/bean/DashboardItem;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->campaigntype:Ljava/lang/String;

    iput-object v0, v3, Lcom/bzbs/bean/Campaign;->Type:Ljava/lang/String;

    .line 3005
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;->c:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;

    iget-object v1, v1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;->a:Lcom/bzbs/bean/DashboardItem;

    iget v1, v1, Lcom/bzbs/bean/DashboardItem;->id:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3006
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;->c:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;

    iget-object v1, v1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;->a:Lcom/bzbs/bean/DashboardItem;

    iget v1, v1, Lcom/bzbs/bean/DashboardItem;->id:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/bzbs/data/UserLogin;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3008
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;->c:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->f(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)V

    .line 3010
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;->a:Lcom/bzbs/bean/DashboardItem;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    if-eqz v0, :cond_108

    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;->a:Lcom/bzbs/bean/DashboardItem;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a4} :catch_11e

    move-result v0

    if-nez v0, :cond_108

    .line 3012
    :try_start_a7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_cb

    .line 3013
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;->c:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 3014
    invoke-virtual {v0, v5}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 3016
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;->c:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    const-string/jumbo v1, "Your discount code is already in clipboard."

    invoke-static {v0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->c(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/lang/String;)V
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_cb} :catch_13f

    .line 3022
    :cond_cb
    :goto_cb
    :try_start_cb
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;

    iget-object v1, v1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;->c:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/WebViewRedeemActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3023
    const-string/jumbo v1, "url"

    iget-object v2, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;

    iget-object v2, v2, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;->a:Lcom/bzbs/bean/DashboardItem;

    iget-object v2, v2, Lcom/bzbs/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3024
    const-string/jumbo v1, "serial"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3025
    const-string/jumbo v1, "enable_webview_back"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3026
    const-string/jumbo v1, "hide_serial"

    iget-object v2, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;

    iget-object v2, v2, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;->a:Lcom/bzbs/bean/DashboardItem;

    iget-boolean v2, v2, Lcom/bzbs/bean/DashboardItem;->autoredeem_hideserial:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3027
    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;

    iget-object v1, v1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;->c:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3039
    :goto_107
    return-void

    .line 3030
    :cond_108
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;->c:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;

    iget-object v1, v1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;->c:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-static {v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->b(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/samsung/privilege/util/DialogSerialGift;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/bzbs/bean/Purchasing;Lcom/bzbs/bean/Campaign;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/bzbs/bean/NFCTag;)V
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_11d} :catch_11e

    goto :goto_107

    .line 3035
    :catch_11e
    move-exception v0

    .line 3036
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;->c:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;

    iget-object v1, v1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_107

    .line 3033
    :cond_12f
    :try_start_12f
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;->c:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;

    iget-object v1, v1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_13e
    .catch Ljava/lang/Exception; {:try_start_12f .. :try_end_13e} :catch_11e

    goto :goto_107

    .line 3018
    :catch_13f
    move-exception v0

    goto :goto_cb
.end method
