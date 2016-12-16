.class Lcom/samsung/privilege/activity/MainPagerActivity$7;
.super Lcom/bzbs/lib/http/okhttp/ResponseListener;
.source "MainPagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainPagerActivity;->onResume()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/MainPagerActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V
    .registers 2

    .prologue
    .line 741
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$7;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 796
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 798
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$7;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v0, p2, p4}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 799
    return-void
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 744
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$7;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Lcom/samsung/privilege/activity/MainPagerActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(CheckNFC|onComplete)response_code="

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

    .line 746
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$7;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->b(Lcom/samsung/privilege/activity/MainPagerActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 749
    :try_start_31
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 751
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$7;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    new-instance v2, Lcom/bzbs/bean/NFCResult;

    invoke-direct {v2, v0}, Lcom/bzbs/bean/NFCResult;-><init>(Lorg/json/JSONObject;)V

    invoke-static {v1, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Lcom/samsung/privilege/activity/MainPagerActivity;Lcom/bzbs/bean/NFCResult;)Lcom/bzbs/bean/NFCResult;

    .line 753
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$7;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    const v1, 0x7f090248

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 754
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$7;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->c(Lcom/samsung/privilege/activity/MainPagerActivity;)Lcom/bzbs/bean/NFCResult;

    move-result-object v1

    iget-object v1, v1, Lcom/bzbs/bean/NFCResult;->alert_no_plan:Ljava/lang/String;

    if-eqz v1, :cond_6c

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$7;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->c(Lcom/samsung/privilege/activity/MainPagerActivity;)Lcom/bzbs/bean/NFCResult;

    move-result-object v1

    iget-object v1, v1, Lcom/bzbs/bean/NFCResult;->alert_no_plan:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6c

    .line 755
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$7;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->c(Lcom/samsung/privilege/activity/MainPagerActivity;)Lcom/bzbs/bean/NFCResult;

    move-result-object v0

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->alert_no_plan:Ljava/lang/String;

    .line 759
    :cond_6c
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$7;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->c(Lcom/samsung/privilege/activity/MainPagerActivity;)Lcom/bzbs/bean/NFCResult;

    move-result-object v1

    iget-object v1, v1, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_9d

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$7;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->c(Lcom/samsung/privilege/activity/MainPagerActivity;)Lcom/bzbs/bean/NFCResult;

    move-result-object v1

    iget-object v1, v1, Lcom/bzbs/bean/NFCResult;->planes_action:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_9d

    .line 760
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$7;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    new-instance v2, Lcom/samsung/privilege/activity/MainPagerActivity$7$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity$7$1;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity$7;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 782
    :goto_92
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$7;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$7$4;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$7$4;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity$7;)V

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 792
    :goto_9c
    return-void

    .line 765
    :cond_9d
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$7;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->c(Lcom/samsung/privilege/activity/MainPagerActivity;)Lcom/bzbs/bean/NFCResult;

    move-result-object v0

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_da

    .line 766
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$7;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$7$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$7$2;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity$7;)V

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_b6
    .catch Lorg/json/JSONException; {:try_start_31 .. :try_end_b6} :catch_b7

    goto :goto_92

    .line 789
    :catch_b7
    move-exception v0

    .line 790
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$7;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Lcom/samsung/privilege/activity/MainPagerActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(PostNFCEncyptListener|onComplete|JSONException):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9c

    .line 772
    :cond_da
    :try_start_da
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$7;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$7$3;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$7$3;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity$7;)V

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_e4
    .catch Lorg/json/JSONException; {:try_start_da .. :try_end_e4} :catch_b7

    goto :goto_92
.end method
