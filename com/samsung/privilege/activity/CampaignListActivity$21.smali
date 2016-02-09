.class Lcom/samsung/privilege/activity/CampaignListActivity$21;
.super Ljava/lang/Object;
.source "CampaignListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignListActivity;->showDialogExit(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignListActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignListActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$21;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    .line 2085
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .param p1, "p_dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 2087
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 2090
    :try_start_3
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2091
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2092
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2093
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignListActivity$21;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    invoke-virtual {v4, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_19} :catch_21

    .line 2104
    :goto_19
    :try_start_19
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 2105
    .local v2, "pid":I
    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_20} :catch_45

    .line 2109
    .end local v2    # "pid":I
    :goto_20
    return-void

    .line 2094
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_21
    move-exception v0

    .line 2095
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "content://someURI"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2096
    .local v3, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-direct {v1, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2097
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v4, "exit_app"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2098
    const/high16 v4, 0x14000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2099
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignListActivity$21;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->setResult(ILandroid/content/Intent;)V

    .line 2100
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignListActivity$21;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/CampaignListActivity;->finish()V

    goto :goto_19

    .line 2106
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "uri":Landroid/net/Uri;
    :catch_45
    move-exception v4

    goto :goto_20
.end method
