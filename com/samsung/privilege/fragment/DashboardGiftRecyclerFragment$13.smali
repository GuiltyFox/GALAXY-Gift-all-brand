.class Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$13;
.super Lcom/bzbs/lib/http/okhttp/ResponseListener;
.source "DashboardGiftRecyclerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Lcom/bzbs/bean/DashboardItem;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/bean/DashboardItem;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/bzbs/bean/DashboardItem;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 2988
    iput-object p1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$13;->c:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    iput-object p2, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$13;->a:Lcom/bzbs/bean/DashboardItem;

    iput-object p3, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$13;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 3038
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 3040
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$13;->c:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(doWalletTransfer|onFailure)response_code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3042
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$13;->c:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->i(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 3044
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$13;->c:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p2, p4}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 3045
    return-void
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 15

    .prologue
    .line 2991
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$13;->c:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(doWalletTransfer|onComplete)response_code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2993
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$13;->c:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->i(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2996
    :try_start_31
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 2998
    const/4 v0, 0x0

    :goto_37
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_12c

    .line 2999
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 3000
    const-string/jumbo v3, "issuer"

    invoke-static {v2, v3}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3002
    iget-object v4, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$13;->a:Lcom/bzbs/bean/DashboardItem;

    iget-object v4, v4, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ef

    .line 3003
    const-string/jumbo v4, "cardId"

    invoke-static {v2, v4}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3004
    const-string/jumbo v5, "active"

    invoke-static {v2, v5}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 3005
    const-string/jumbo v6, "amount"

    invoke-static {v2, v6}, Lcom/bzbs/util/JsonUtil;->f(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v6

    .line 3006
    const-string/jumbo v8, "name"

    invoke-static {v2, v8}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3007
    const-string/jumbo v9, "description"

    invoke-static {v2, v9}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 3010
    iget-object v2, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$13;->c:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v3, v8}, Lcom/bzbs/data/UserLogin;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3011
    iget-object v2, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$13;->c:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v3, v5}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 3012
    new-instance v2, Ljava/text/DecimalFormat;

    const-string/jumbo v5, "#,###,##0.00"

    invoke-direct {v2, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 3013
    iget-object v5, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$13;->c:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v5}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v2, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v3, v8}, Lcom/bzbs/data/UserLogin;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3015
    iget-object v3, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$13;->a:Lcom/bzbs/bean/DashboardItem;

    iget-object v3, v3, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    const-string/jumbo v5, "wallet_transfer_truemoney"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f3

    .line 3016
    iget-object v3, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$13;->a:Lcom/bzbs/bean/DashboardItem;

    iget-object v3, v3, Lcom/bzbs/bean/DashboardItem;->wallet_url:Ljava/lang/String;

    .line 3017
    const-string/jumbo v5, "{token_wallet}"

    iget-object v8, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$13;->c:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v8}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-static {v8}, Lcom/bzbs/data/UserLogin;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v5, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 3018
    const-string/jumbo v5, "{cardId}"

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 3019
    const-string/jumbo v4, "{amount}"

    invoke-virtual {v2, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 3021
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$13;->c:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v4}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3022
    const-string/jumbo v4, "url"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3023
    iget-object v2, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$13;->c:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->startActivity(Landroid/content/Intent;)V

    .line 2998
    :cond_ef
    :goto_ef
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_37

    .line 3024
    :cond_f3
    iget-object v2, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$13;->a:Lcom/bzbs/bean/DashboardItem;

    iget-object v2, v2, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    const-string/jumbo v3, "wallet_transfer_t2p"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ef

    .line 3025
    iget-object v2, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$13;->c:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    iget-object v3, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$13;->a:Lcom/bzbs/bean/DashboardItem;

    iget-object v5, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$13;->b:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/bzbs/bean/DashboardItem;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_109
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_109} :catch_10a

    goto :goto_ef

    .line 3031
    :catch_10a
    move-exception v0

    .line 3032
    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$13;->c:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-static {v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(doWalletTransfer|Exception):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3034
    :cond_12c
    return-void
.end method
