.class Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1$1;
.super Ljava/lang/Object;
.source "CampaignDetailAdBuzzActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1$1;->this$2:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;

    .line 1876
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 12
    .param p1, "p_dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 1878
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1879
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1$1;->this$2:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;

    move-result-object v4

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v4

    iget-object v5, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1$1;->this$2:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;
    invoke-static {v5}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;

    move-result-object v5

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static {v5}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v5

    sget v6, Lic/buzzebeeslib/R$string;->survey_submit_success:I

    invoke-virtual {v5, v6}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    # invokes: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$3(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;Ljava/lang/String;)V

    .line 1882
    :try_start_20
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1$1;->this$2:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;

    move-result-object v4

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v4

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$1(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v4

    iget-object v4, v4, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v4, v4, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAction:Lic/buzzebeeslib/bean/CampaignExtraAction;

    iget-object v4, v4, Lic/buzzebeeslib/bean/CampaignExtraAction;->type:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "open app"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_3d} :catch_fc

    move-result v4

    if-eqz v4, :cond_ff

    .line 1885
    :try_start_40
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1$1;->this$2:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;

    move-result-object v4

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v4

    invoke-virtual {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1$1;->this$2:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;
    invoke-static {v5}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;

    move-result-object v5

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static {v5}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v5

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v5}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$1(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v5

    iget-object v5, v5, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAction:Lic/buzzebeeslib/bean/CampaignExtraAction;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraAction;->and_ns:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1886
    .local v0, "LaunchApp":Landroid/content/Intent;
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1$1;->this$2:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;

    move-result-object v4

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v4

    invoke-virtual {v4, v0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_73} :catch_81

    .line 1911
    .end local v0    # "LaunchApp":Landroid/content/Intent;
    :cond_73
    :goto_73
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1$1;->this$2:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;

    move-result-object v4

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v4

    invoke-virtual {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->finish()V

    .line 1912
    return-void

    .line 1887
    :catch_81
    move-exception v2

    .line 1889
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_82
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1$1;->this$2:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;

    move-result-object v4

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "market://details?id="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1$1;->this$2:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;
    invoke-static {v8}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;

    move-result-object v8

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static {v8}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v8

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v8}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$1(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v8

    iget-object v8, v8, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v8, v8, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAction:Lic/buzzebeeslib/bean/CampaignExtraAction;

    iget-object v8, v8, Lic/buzzebeeslib/bean/CampaignExtraAction;->and_ns:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_bd
    .catch Landroid/content/ActivityNotFoundException; {:try_start_82 .. :try_end_bd} :catch_be
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_bd} :catch_fc

    goto :goto_73

    .line 1890
    :catch_be
    move-exception v1

    .line 1891
    .local v1, "anfe":Landroid/content/ActivityNotFoundException;
    :try_start_bf
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1$1;->this$2:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;

    move-result-object v4

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "http://play.google.com/store/apps/details?id="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1$1;->this$2:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;
    invoke-static {v8}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;

    move-result-object v8

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static {v8}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v8

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v8}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$1(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v8

    iget-object v8, v8, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v8, v8, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAction:Lic/buzzebeeslib/bean/CampaignExtraAction;

    iget-object v8, v8, Lic/buzzebeeslib/bean/CampaignExtraAction;->and_ns:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_73

    .line 1907
    .end local v1    # "anfe":Landroid/content/ActivityNotFoundException;
    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_fc
    move-exception v4

    goto/16 :goto_73

    .line 1894
    :cond_ff
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1$1;->this$2:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;

    move-result-object v4

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v4

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$1(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v4

    iget-object v4, v4, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v4, v4, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAction:Lic/buzzebeeslib/bean/CampaignExtraAction;

    iget-object v4, v4, Lic/buzzebeeslib/bean/CampaignExtraAction;->type:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "open link"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 1895
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1$1;->this$2:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;

    move-result-object v4

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v4

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$1(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v4

    iget-object v4, v4, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v5, "6"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_191

    .line 1896
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1$1;->this$2:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;

    move-result-object v4

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v4

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$1(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v4

    iget-object v4, v4, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v4, v4, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAction:Lic/buzzebeeslib/bean/CampaignExtraAction;

    iget-object v3, v4, Lic/buzzebeeslib/bean/CampaignExtraAction;->and_link:Ljava/lang/String;

    .line 1897
    .local v3, "url":Ljava/lang/String;
    const-string v4, "{token}"

    iget-object v5, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1$1;->this$2:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;
    invoke-static {v5}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;

    move-result-object v5

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static {v5}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v5

    invoke-virtual {v5}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1898
    const-string v4, "campaign.adbuzz"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "(url and_link)="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1899
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1$1;->this$2:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;

    move-result-object v4

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_73

    .line 1901
    .end local v3    # "url":Ljava/lang/String;
    :cond_191
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1$1;->this$2:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;

    move-result-object v4

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v4

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$1(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v4

    iget-object v4, v4, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v4, v4, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAction:Lic/buzzebeeslib/bean/CampaignExtraAction;

    iget-object v3, v4, Lic/buzzebeeslib/bean/CampaignExtraAction;->link:Ljava/lang/String;

    .line 1902
    .restart local v3    # "url":Ljava/lang/String;
    const-string v4, "{token}"

    iget-object v5, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1$1;->this$2:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;
    invoke-static {v5}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;

    move-result-object v5

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static {v5}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v5

    invoke-virtual {v5}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1903
    const-string v4, "campaign.adbuzz"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "(url open link)="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1904
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1$1;->this$2:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;

    move-result-object v4

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1e9
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_1e9} :catch_fc

    goto/16 :goto_73
.end method
