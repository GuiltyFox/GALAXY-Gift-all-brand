.class Lcom/samsung/privilege/activity/MainPagerActivity$6;
.super Ljava/lang/Object;
.source "MainPagerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainPagerActivity;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/MainPagerActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V
    .registers 2

    .prologue
    .line 569
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$6;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .prologue
    .line 571
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 574
    :try_start_3
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 575
    const-string/jumbo v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 576
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 577
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$6;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v1, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1b} :catch_23

    .line 588
    :goto_1b
    :try_start_1b
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 589
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_22} :catch_49

    .line 593
    :goto_22
    return-void

    .line 578
    :catch_23
    move-exception v0

    .line 579
    const-string/jumbo v0, "content://someURI"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 580
    new-instance v1, Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 581
    const-string/jumbo v0, "exit_app"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 582
    const/high16 v0, 0x14000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 583
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$6;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->setResult(ILandroid/content/Intent;)V

    .line 584
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$6;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->finish()V

    goto :goto_1b

    .line 590
    :catch_49
    move-exception v0

    goto :goto_22
.end method
