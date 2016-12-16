.class Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;
.super Lcom/bzbs/lib/http/okhttp/ResponseListener;
.source "DashboardGiftRecyclerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->b(Lcom/bzbs/bean/DashboardItem;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/bean/DashboardItem;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/bzbs/bean/DashboardItem;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 2973
    iput-object p1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;->c:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    iput-object p2, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;->a:Lcom/bzbs/bean/DashboardItem;

    iput-object p3, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 3045
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 3047
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;->c:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->i(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 3048
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;->c:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p2, p4}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 3049
    return-void
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 2976
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;->c:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(getLastRedeemCode|onComplete)response_code="

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

    .line 2978
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;->c:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_31

    .line 3041
    :goto_30
    return-void

    .line 2982
    :cond_31
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;->c:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->i(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2984
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;->c:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15$1;

    invoke-direct {v1, p0, p4}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15$1;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_30
.end method
