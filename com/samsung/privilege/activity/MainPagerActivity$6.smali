.class Lcom/samsung/privilege/activity/MainPagerActivity$6;
.super Ljava/lang/Object;
.source "MainPagerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainPagerActivity;->showDialogExit(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/MainPagerActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/MainPagerActivity;

    .prologue
    .line 438
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$6;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .param p1, "p_dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 440
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 443
    :try_start_3
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 444
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "android.intent.category.HOME"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 445
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 446
    iget-object v4, p0, Lcom/samsung/privilege/activity/MainPagerActivity$6;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v4, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1b} :catch_23

    .line 457
    :goto_1b
    :try_start_1b
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 458
    .local v2, "pid":I
    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_22} :catch_49

    .line 462
    .end local v2    # "pid":I
    :goto_22
    return-void

    .line 447
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_23
    move-exception v0

    .line 448
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "content://someURI"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 449
    .local v3, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-direct {v1, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 450
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "exit_app"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 451
    const/high16 v4, 0x14000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 452
    iget-object v4, p0, Lcom/samsung/privilege/activity/MainPagerActivity$6;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->setResult(ILandroid/content/Intent;)V

    .line 453
    iget-object v4, p0, Lcom/samsung/privilege/activity/MainPagerActivity$6;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MainPagerActivity;->finish()V

    goto :goto_1b

    .line 459
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "uri":Landroid/net/Uri;
    :catch_49
    move-exception v4

    goto :goto_22
.end method
